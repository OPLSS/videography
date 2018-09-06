# OPLSS Audio-Visual Tools

This document describes the equipment and procedures we use to record
the Oregon Programming Languages Summer School sessions. It also
describes how we publish the recordings.

## A/V Personnel

The OPLSS coordinator should designate a lead videographer and an
assistant. The lead is responsible for all aspects of operating and
maintaining the A/V equipment, as well as editing and publishing the
recordings. The assistant should be familiar with this document in
order to record a session if the lead is unavailable.

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

The videographers should supply computing hardware for video processing.

## Video Camera Features

The video camera must support these features:

  * zoom
  * auto and manual focus
  * white balance
  * exposure compensation
  * a popular video file format: MPEG-4, MOV, etc.

If the camera records in MPEG-4 format, it _may_ stop recording after 30
minutes. In this case, each 80-minute session will consume at least two files.

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

If the speaker uses the overhead projector, offer the laser pointer.

If the camera automatically stops recording after 30 minutes, the
operator will need to restart recording after it stops. Rather than
wait for this to occur, choose a time after 28 minutes when the
speaker pauses to manually stop and restart the recording.

#### Camera framing and motion best practices

The videographer should operate the camera in a way that maximizes
both the speaker and the relevant content in the frame, while also
minimizing camera motion. This as an art, as speakers vary in how
often and how far they move laterally. Speakers who move frequently
and unpredictably present the greatest challenge, sometimes requiring
rapid panning. To the greatest extent possible, pan and zoom
strategically to anticipate the speaker's lateral moves.

When the speaker is writing on the boards, the operator should include
the speaker and the relevant board content in the frame at all
times. The zoom level depends on two primary factors:

  1. How size of the speaker's writing
  2. How much horizontal space the speaker is using for relevant content

Experienced lecturers tend to use half of a board at a time and
minimize lateral motion, which permits the videographer to establish a
static frame slightly wider than the relevant content. The speaker can
move a few steps away from the content and remain within the frame.

When the speaker is projecting, attempt to establish a frame including
the screen and at least the speaker's head. Most speakers will gesture
at the screen and capturing those gestures is valuable. The zoom level
will depend on each slide's legibility. If the speaker moves, the
operator should use pan and zoom to balance the speaker and the screen
in the frame.

#### Common problems and solutions

When the wireless microphone fails due to battery exhaustion and other
unexpected circumstances, immediately unplug it and continue recording
with the camera's built-in mic. If the batteries in the mic's receiver
exhaust themselves, replace them as quickly and quietly as possible,
then reconnect the mic. If the problem lies with the transmitter, *do
not* stop the speaker: instead, address the issue after the session.

### Maintaining session metadata

The lead should maintain a table of metadata about the sessions,
including the following information:

  * the session's absolute count
  * a session identifier in `<day>.<session number>` format
  * the speaker's name and affiliation
  * the lecture's topic
  * the session's date, start time, and end time
  * the card ID on which the session was recorded
  * notes about the recording: audio or video problems, etc.

### Securely storing A/V equipment

We store the the A/V equipment in a secure location when the lead
videographer is not present.  In 2018 at the Knight Law building, we
used the locked equipment closets connected to the lecture rooms. The
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
video files every evening. The lead videographer should give the day's
data card to the coordinator at the conclusion of each day's sessions
and retrieve the card from the coordinator before recording the next
day.

### Publishing to YouTube

Publishing the videos to YouTube is a complicated process involving
multiple software components and a considerable amount of manual effort.

#### Creating title graphics

The lead videographer should create title graphics to accompany the session
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
problems, the lead videographer created a card stating editor's notes.

In 2018, the lead used [GIMP](https://gimp.org/) to create the cards
and xcf2png from [xcftools](http://henning.makholm.net/xcftools/) to
convert GIMP's XCF files to PNG format.

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

In 2018, the lead videographer used [`FFmpeg`](https://ffmpeg.org/)
and a set of custom tools to combine the raw video files and title
graphics into files suitable for uploading to YouTube. The custom
tools reside in this repository's `bin` directory. They're written in
Ruby and require at least Ruby 2.4.

After generating the graphics, the lead used FFmpeg to convert them to
MPEG-4 videos, then concatenated each session's video files.

The video elements appear in this sequence. The parenthesized number is the
element's time length:

  * main title card (6s)
  * sponsors card (6s)
  * session title card (6s)
  * editor's notes card (6s) _(when relevant)_
  * session videos (~90m)
  * copyright card (6s)

As noted earlier, the main, sponsors, and copyright cards were the
same for all videos, whereas the session titles and recordings were
unique to each session.

The custom tools partially automated the rendering process:

  * `from_image` converted an image file into a short video with the
    same encoding as the session recordings. The lead used this tool
    to render title graphics as videos.
  * `sequence` generated an ASCII sequence file in a format suitable
    for input to FFmpeg's
    [concat](https://ffmpeg.org/ffmpeg-filters.html#concat). This file
    specified the video concatenation sequence.
  * `render` used FFmpeg's
    [concat](https://ffmpeg.org/ffmpeg-filters.html#concat) and a
    sequence file to render a YouTube-compatible file. See also
    [commentary on FFmpeg's concatenation
    options](https://trac.ffmpeg.org/wiki/Concatenate).

Due to the large file sizes and the time required to process the
videos, the lead should strive to maximally automate the video
pipeline.

#### Uploading to YouTube

We publish edited session videos to the [`OPLSS` YouTube
channel](https://www.youtube.com/channel/UCDe6N9R7U-RYWA57wzJQ2SQ). The
lead needs a Google account and "manager" permissions on the `OPLSS`
brand account. See YouTube's [brand account documentation](https://support.google.com/accounts/answer/7001996?co=GENIE.Platform%3DDesktop&hl=en).

YouTube recommends these [encoding
guidelines](https://support.google.com/youtube/answer/1722171?hl=en):

| *Parameter*  | *Value*                                                                            |
|--------------|------------------------------------------------------------------------------------|
| Container    | [MP4](https://en.wikipedia.org/wiki/MPEG-4_Part_14)                                |
| Video codec  | [H.264](https://en.wikipedia.org/wiki/H.264/MPEG-4_AVC)                            |
| Audio        | [AAC-LC](https://en.wikipedia.org/wiki/Advanced_Audio_Coding)                      |
| Frame rate   | _Any standard rate_                                                                |
| Bitrate      | _Varies by format_                                                                 |
| Resolution   | Preferably full HD, i.e., [1080p](https://en.wikipedia.org/wiki/1080p) / 1920x1080 |
| Aspect ratio | [16:9](https://en.wikipedia.org/wiki/16:9)                                         |
| Scan type    | [Progressive](https://en.wikipedia.org/wiki/Progressive_scan)                      |

See also YouTube's [resolution suggestions](https://support.google.com/youtube/answer/6375112).

A 90-minute 1920x1080 video may consume 8GB or more of storage, and
therefore requires substantial upstream bandwidth to upload. In 2018,
the lead used a wired connection in the U of O's computer science
building to upload the videos. An 8GB file required about 7 minutes on
that connection (20MB/s).
