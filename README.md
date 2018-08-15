# OPLSS Audio-Visual Tools

This document describes the equipment and procedures we use to
video-record the Oregon Programming Languages Summer School
sessions. It also describes how we publish the recordings.

## A/V Equipment Inventory

We use the following audio-visual equipment to record each OPLSS session:

  * HD camcorder or digital SLR camera, plus its battery charger
  * tripod
  * wireless microphone _(which the speaker wears)_
  * headphones _(to monitor the camera's audio input)_
  * a set of rechargeable AA and AAA batteries, plus a charger
  * power strip
  * common HDMI video adapters
	* USB-C
    * Apple Thunderbolt
  * laser pointer

## Video Camera Properties

The camera must support these features:

  * zoom
  * auto and manual focus
  * white balance
  * exposure compensation
  * common video file format: MPEG-4, MOV, etc.

If the camera records in MPEG-4 format, it _may_ stop recording after 30
minutes. In this case, each 80-minute session will consume at least two files.

## A/V lead and Assistant

The OPLSS coordinator should designate a primary audio-visual lead and
an assistant. The lead will be responsible for all aspects of
operating and maintaining the A/V equipment. The assistant should be
familiar with this document in order to record a session if the lead
is unavailable.

## Camera Operation Best Practices

This section summarizes best practices for operating the camera.

### Pre-OPLSS rehearsal

At least one week prior to the first OPLSS session, the camera
operator should arrange a time with the coordinator to visit the rooms
where OPLSS will take place and rehearse recording a session. This is
vital to understanding each room's layout, lighting, and A/V control
systems.

In most years, we use the two large classrooms in the Knight Law
building, rooms 110 and 175. Knight Law has a dedicated A/V staff
person. Ensure that the coordinator invites this person to the
rehearsal so you can ask questions. The coordinator should bring the
A/V equipment (camera, microphone, and tripod).

The lead and assistant should do all of the following during the
rehearsal session:

  * Mount the camera on its tripod
  * Connect the wireless microphone and headphones to the camera
  * Record someone speaking with the wireless microphone
  * The wireless microphone *will* occasionally fail due to battery
    exhaustion, accidental power-off, interference, and other
    unexpected circumstances. Practice unplugging the microphone,
    recording with the camera's built-in mic, and reconnecting the 
  * Monitor the recording with headphones
  * Test cycling the room's A/V controls. Connect a laptop to the
    projector.

### Recording each session

Arrive at the lecture room at least 15 minutes prior to each session's
start time. Do all of the following during set-up:

  * Mount the camera to its tripod
  * Insert a fully-charged battery and charge the depleted battery
  * Set the zoom, focus, white balance, and exposure compensation
  * Connect the wireless microphone and headphones. Power on the
    transmitter and check its battery level. If below 50%, replace the
    batteries.

Hand the transmitter to the speaker. If this is the speaker's first
session, offer the following advice:

  * The microphone is connected to the camera only, not the room's PA
    system. Speak at a normal lecture volume.
  * Attach the lapel clip to clothing between the neck and middle of the chest
  * Place the transmitter in a pocket or suspend from the belt clip
  * Please repeat questions asked by the audience

If the camera automatically stops recording after 30 minutes, the
operator will need to restart recording after it stops. Rather than
wait for this to occur, choose a time after 28 minutes when the
speaker pauses to manually stop and restart the recording.

#### Common problems and solutions

When the wireless microphone fails due to battery exhaustion and other
unexpected circumstances, immediately unplug it and continue recording
with the camera's built-in mic. If the batteries in the mic's receiver
exhaust themselves, replace them as quickly and quietly as possible,
then reconnect the mic. If the problem lies with the transmitter, *do
not* stop the speaker: instead, address the issue after the session.

### Storing the A/V equipment

We store the the A/V equipment in a secure location when the A/V lead
is not present.  In 2018 at the Knight Law building, we stored the
equipment in locked equipment closets connected to the classrooms. The
coordinator was responsible for managing the key. If this is the case
in future years, the lead should acquire the key from the coordinator
as early as possible before a session to retrieve the equipment.

## Video Publishing Procedures

We publish the videos to two locations:

  * The [University of Oregon's OPLSS site](https://www.cs.uoregon.edu/research/summerschool/summer18/topics.php)
  * The [`OPLSS` YouTube channel](https://www.youtube.com/channel/UCDe6N9R7U-RYWA57wzJQ2SQ)

### Publishing to the OPLSS site

The OPLSS coordinator is the only person with credentials on the
university's OPLSS site. Historically, the coordinator uploads raw
video files every evening. The A/V lead should give the day's data
card to the coordinator at the conclusion of each day's sessions and
retrieve the card from the coordinator before recording the next day.

### Publishing to YouTube

Publishing the videos to YouTube is a complicated process involving
multiple software components and a considerable amount of manual effort.

#### Creating title graphics

The A/V lead should create title graphics to accompany the session
videos.  We refer to them here as "title cards" or "cards." We created
one set of cards that appear in every video, along with a set unique
to each session.

The common cards are:

  * main title
  * sponsors
  * copyright notice

The unique cards are:

  * session title
  * editor's notes

The session cards state the topic, the speaker, the speaker's
affiliation, and the date. For recordings with audio or video
problems, the A/V lead created a card stating editor's notes.

In 2018, the A/V lead used [GIMP](https://gimp.org/) to create the cards.

The OPLSS font is named [_PT Mono
Bold_](https://www.1001fonts.com/pt-mono-font.html#character-map-bold). "PT"
is a reference to [ParaType](https://www.paratype.com/), the font's
creator.

The OPLSS font and logo use these colors:

| *Color* | *RGB (hex)* |
|---------|-------------|
| green   | 248c68      |
| grey    | 828282      |
| yellow  | fee123      |

See the [2018 session schedule](configuration/schedule.csv).

#### Generating the final videos

In 2018, the A/V lead used [`FFmpeg`](https://ffmpeg.org/) to combine
the raw video files and title graphics into files suitable for
uploading to YouTube.

After generating the graphics, the lead used FFmpeg to convert them to
MPEG-4 videos with the same properties as the recorded videos. For
each session, the lead concatenated the video files using FFmpeg's
[`concat` filter](https://ffmpeg.org/ffmpeg-filters.html#concat).

The video elements appear in this sequence. The parenthesized number is the
element's length:

  * main title card (6s)
  * sponsors card (6s)
  * session title card (6s)
  * editor's notes card (6s) _(when relevant)_
  * session videos (~90m)
  * copyright card (6s)

As noted earlier, the main, sponsors, and copyright cards are the same
for all videos, and whereas session titles and recordings are unique
to each session.

#### Publishing to YouTube

We publish edited session videos to the [`OPLSS` YouTube
channel](https://www.youtube.com/channel/UCDe6N9R7U-RYWA57wzJQ2SQ). The
lead needs a Google account and "manager" permissions on the `OPLSS`
brand account.

_More pending..._
