---
title: Magical Interface
description: Week 01 · A pen + sand interface, from partner interview to high-fidelity prototype
---

[← All weeks](../)

## 📝Brief

_Take the interface concept developed for a partner in the first class and,
using their feedback, produce a considerably higher-fidelity prototype._

## 🗣️Interview & Context

My partner for this assignment was **Annaleise**. During her day, the biggest challenge to her was with her mammology class. She said that:

- She felt she could've learned more, but the class structure impeded that
- The lab for that day was overly difficult
- The lecture content was dry and "sleepy"

She conveyed that she had a deep desire to learn and be constantly challenged in her education, but alas, the format and structure of mammology made that difficult. Annaleise also told me she's a hands-on learner, which lectures don't exactly support as a learning style.

So let's fix that!

## 💡Ideation and Initial Prototype

I wanted this device to focus on giving education a personal "touch" (hands-on learner pun intended). So, this device is the **Personal Education Nexus**, or **PEN** for short.

The PEN has two main features:

1. Allows the user to adjust the course content for _themselves_, changing their perception of words on a slide deck, words from a professor's mouth, etc. This would have two axes of control for course delivery and content, giving users a single screen for controlling multiple aspects of a lecture.
2. A magic 3D sandbox, which will use magic sand to generate a 3D model of a specific topic in a lecture, allowing students to feel any item typed into it. Said model would take on the properties of the object within safe boundaries. For example, I could generate a shark and its teeth would feel like real shark teeth, but I couldn't accidentally cut myself on said teeth. The content is controlled by a prompt box.

![Initial sketches](img/initial-sketch.jpg)
_The initial sketch with notes._

## 🔁Feedback and Second Prototype

Annaleise's feedback for this device was:

- Initially, my labels for the 2D grid were _"fun ↔ factual"_ and _"easy ↔ hard"_; the former was fine, but using "easy" specifically felt patronizing or mean. We should update the word to imply something similar, but have a less-harsh feeling.
- The prompt box was vague. Initially, I assumed it would just be something to type out the item, but she suggested that it a) include pre-made prompts, based on the instructor's current content, and b) it have voice-activated custom prompts; since we're working with magic, we can assume it wouldn't bother the class, and it'd be quicker and easier than having to type a prompt.

Thus, I present - the updated PEN!

![PEN](img/PEN-render.png)
_A static render of the PEN._

<div class="model-embed">
<script type="module" src="https://ajax.googleapis.com/ajax/libs/model-viewer/3.5.0/model-viewer.min.js"></script>
<model-viewer
  src="model/PEN.glb"
  poster="img/PEN-render.png"
  alt="3D model of the PEN device"
  auto-rotate
  camera-controls
  shadow-intensity="1"
  loading="lazy"
  style="width:100%;height:480px;background:var(--sunken);border:1px solid var(--rule);">
</model-viewer>
</div>

_3D model made in Blender - drag to orbit, scroll to zoom. [Download the .glb](model/PEN.glb)._

### 🤔Feedback Considerations

#### 🎛️Content Picker

The first feedback item, the content picker, was updated to use _"slower ↔ faster"_ instead of _"easy ↔ hard"_. While still not super kind on the wording (maybe even more so), it should hopefully have more semantic information about adjusting the course speed.

Also, I made the background a gradient, so the color present in the picker should be a vague indication of what setting a user is on. While vague (green = slower and factual?), it should at least look pretty for a background of this UI.

![Content Picker](img/screen-content-chooser.png)
_The updated content picker._

#### 🎙️Sand Pit Picker

The sand pit picker also incorporates the feedback. Buttons for relevant prompts, as well as a button for custom audio-driven prompts, are also included.

![Sand Pit Picker](img/screen-sand-chooser.png)
_The updated sand pit picker._

## 💭Reflection

Looking back after several weeks, I'm happy with how the PEN turned out. However, everything here comes from one interview and one round of feedback, which with the emphasis and discussion on prototypes, shows that I'd probably need to iterate on this several more times to get a truly useful device. For example, making an individual prototype for the content picket to make sure it's a) actually useful and b) not patronizing, and then making a separate prototype for the sand pit to ensure it actually meets the needs of a hands-on learner.

Something that's interesting to me is the "magic" aspect of this device. I know that's the point of the exercise, but there is a lot that can be sort of "hand-waved" away due to, "oh, it's magic". As we've worked more into real-world design and prototyping, I think it's an interesting thought experiment to consider what the PEN would look like and do if it were a real device. Pretty much everything about it would have to be rethought, since (unfortunately) magic sand and personalized hearing don't exist. My initial idea would be something in VR or AR, using a pre-recorded lecture and a 3D model of the topic being discussed, but that kills the usefulness in a classroom setting. Stuff to ponder...

Also, tying this back to the emphasis on learning we did in [Week #3](week-3-teach-me-teach-you/) and [Week #4](week-4-trust-the-process/), this is very much a reflection of Annaleise's mental model of how she learns. Such a device _may_ be useful to others, but everyone learns differently, so no guarantees there. I also do wonder how accurately I captured her mental model, since I only had one interview to work with. For example, in Week #4, Silas' model of my music learning was pretty different than my own (and vice versa, I assume), so I wonder if Annaleise's model of her learning is different than what I captured.

All that yapping aside, I think the PEN is a good start to a device that could help hands-on learners in a classroom setting.
