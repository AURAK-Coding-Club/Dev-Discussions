# Experience the sound of code!!

# Workshop Agenda 🤩🎵
# 1. Introduction to Sonic Pi
# 2. Navigating the UI
# 3. Basic Commands and Variables - Do Re Mi Example
# 4. Music Club Theory
# 5. Loops and Conditional Statements - Modified Do Re Mi Example
# 6. Functions and Function Calls - Modified Do Re Mi Example
# 7. Music Club Demo
# 8. Mentimeter Segment (Tech Titans points!)
# 9. Code Demos
# 10. Try it yourself!

#############################################################################################
# 1. Introduction to Sonic Pi
# Make sure to download Sonic Pi on your device as we speak so you can participate in the demo!

# Check out:
# https://sonic-pi.net/
# https://ctford.github.io/klangmeister/
# https://www.desmos.com/calculator/hansgqbemw
# https://www.desmos.com/calculator/y1uttjsq2r
# https://www.desmos.com/calculator/4mcnhb6yx5
# https://www.desmos.com/calculator/qpbn2mytbu
# https://sonic-pi.mehackit.org/exercises/en/10-cheatsheet/01-cheatsheet.html
# https://cheatography.com/iam444b/cheat-sheets/sonic-pi-official/

# Sonic Pi is a live coding environment designed for creating music by writing code. Developed by Sam Aaron,
# it allows users to compose and perform music interactively using a simple programming language based on Ruby.
# Sonic Pi is accessible for beginners, providing an easy way to explore coding and music, while also being
# powerful enough for more advanced compositions. It includes various synths, samples, and effects, and supports
# real-time audio manipulation, allowing users to build complex musical pieces.

# Sam Aaron originally developed the software as part of a research project at the University of Cambridge, where it
# was used to teach computing in schools. However, Aaron’s vision expanded beyond education, and Sonic Pi
# became a tool for live performance and creative expression. Sam Aaron has performed live coding music at
# various events and festivals, demonstrating how programming can be an interactive and artistic form of
# real-time musical performance. Sonic Pi is a Google Open Source Winner!

# The theory behind sound in coding revolves around the principles of sound synthesis, waveforms, and digital
# audio processing. At its core, sound is produced by vibrations that create pressure waves in a medium, which
# are perceived by our ears. In coding environments like Sonic Pi, sound is generated using various waveforms—
# such as sine, square, triangle, and sawtooth—each producing distinct tonal characteristics. These waveforms
# can be manipulated through parameters like frequency (pitch), amplitude (volume), sustain, and release to
# create different sounds.

# Sonic Pi is not the only live coding environment for music; other notable projects include SuperCollider,
# TidalCycles, and FoxDot. Each of these platforms offers unique features and capabilities for sound synthesis
# and musical composition. Sonic Pi remains the most famous live coding environment, particularly in educational
# settings, due to its user-friendly interface, immediate visual feedback, and engaging community.

#############################################################################################
# 2. Navigating the UI

# Tabs - buttons - help (try playing some samples and examples)

#############################################################################################
# 3. Basic Commands and Variables - Do Re Mi Example

# Variables in Sonic Pi do not have explicit types like in some other programming languages. Sonic Pi uses
# dynamic typing, meaning that a variable's type is determined by the value assigned to it at runtime. You can
# assign a number or a string to a variable.
my_var = 60   # my_var is a number (MIDI note)
my_var = "C4" # my_var is now a string

# Example code
# Step 1: Defining variables for each note in the C major scale (Do-Re-Mi)
# We use the MIDI note numbers for each corresponding note
do_note = 60  # 'do_note' stores the MIDI number for the note C
re_note = 62  # 're_note' stores the MIDI number for the note D
mi_note = 64  # 'mi_note' stores the MIDI number for the note E
fa_note = 65  # 'fa_note' stores the MIDI number for the note F
sol_note = 67 # 'sol_note' stores the MIDI number for the note G
la_note = 69  # 'la_note' stores the MIDI number for the note A
ti_note = 71  # 'ti_note' stores the MIDI number for the note B
high_do_note = 72  # 'high_do_note' stores the MIDI number for the high C

# Step 2: Playing the notes one by one with a short pause (sleep) between them
# The 'play' function plays the note corresponding to the MIDI number
# 'sleep' specifies how long to wait before playing the next note (in seconds)
play do_note  # Play the note for Do (C)
sleep 0.5     # Pause for half a second before playing the next note
play re_note  # Play the note for Re (D)
sleep 0.5     # Pause for half a second
play mi_note  # Play the note for Mi (E)
sleep 0.5     # Pause for half a second
play fa_note  # Play the note for Fa (F)
sleep 0.5     # Pause for half a second
play sol_note # Play the note for Sol (G)
sleep 0.5     # Pause for half a second
play la_note  # Play the note for La (A)
sleep 0.5     # Pause for half a second
play ti_note  # Play the note for Ti (B)
sleep 0.5     # Pause for half a second
play high_do_note  # Play the note for High Do (C)
sleep 0.5     # Pause for half a second after the final note


# If you don't specify a synth in Sonic Pi, the default synth used is :beep. This synth produces a basic sine
# wave sound, which is simple and pure in tone. You can always override this default by explicitly using the
# use_synth command to choose another synth sound.

# Example: Choosing the instrument
# Choose the 'piano' synth and play a note
use_synth :piano  # Set the synth to piano
play :C4  # Play Middle C
sleep 1  # Wait for 1 second

# Change to the 'saw' synth and play a note
use_synth :saw  # Set the synth to saw wave
play :C4  # Play E
sleep 1  # Wait for 1 second

# Change to the 'prophet' synth and play a note
use_synth :prophet  # Set the synth to a prophet synthesizer sound
play :C4  # Play G
sleep 1  # Wait for 1 second


#############################################################################################
# 4. Music Club Theory

# A synth, short for synthesizer, is an electronic instrument that generates audio signals to create sound.
# Synthesizers can produce a wide range of sounds by manipulating various parameters, such as waveforms,
# filters, modulation, and effects. They can emulate traditional instruments or create entirely unique sounds.
# Synths can be hardware devices or software applications and are commonly used in various music genres,
# including electronic, pop, and experimental music. The sound produced by a synth is often controlled by
# keyboard input, MIDI data, or other controllers, allowing musicians to perform and compose music dynamically.

#############################################################################################
# 5. Loops and Conditional Statements - Modified Do Re Mi Example

# Loop that runs forever
live_loop :do_re_mi_forever do
  # Playing the Do-Re-Mi scale
  play :C4  # Do
  sleep 0.5
  play :D4  # Re
  sleep 0.5
  play :E4  # Mi
  sleep 0.5
  play :F4  # Fa
  sleep 0.5
  play :G4  # Sol
  sleep 0.5
  play :A4  # La
  sleep 0.5
  play :B4  # Ti
  sleep 0.5
  play :C5  # High Do
  sleep 1
end

# This loop will run exactly 3 times
3.times do
  play :C4  # Do
  sleep 0.5
  play :D4  # Re
  sleep 0.5
  play :E4  # Mi
  sleep 0.5
  play :F4  # Fa
  sleep 0.5
  play :G4  # Sol
  sleep 0.5
  play :A4  # La
  sleep 0.5
  play :B4  # Ti
  sleep 0.5
  play :C5  # High Do
  sleep 1
end

# Conditional statement
current_note = :C4  # Start with Do (C) - try changing to D4 later

# Conditional statement to check the note and play a different sound
if current_note == :C4  # If the note is Do
  use_synth :piano      # Use piano synth for Do
  play current_note     # Play Do
  puts "Playing Do (C)" # Print to the console - Great for debugging!
else  # If the note is not Do
  use_synth :blade      # Use a different synth for other notes
  play current_note     # Play the note
  puts "Playing another note" # Print to the console
end

#############################################################################################
# 6. Functions and Function Calls - Modified Do Re Mi Example

# Define a function to play the Do-Re-Mi scale
define :do_re_mi do
  play :C4  # Play Do (C)
  sleep 0.5 # Wait for 0.5 seconds
  play :D4  # Play Re (D)
  sleep 0.5 # Wait for 0.5 seconds
  play :E4  # Play Mi (E)
  sleep 0.5 # Wait for 0.5 seconds
  play :F4  # Play Fa (F)
  sleep 0.5 # Wait for 0.5 seconds
  play :G4  # Play Sol (G)
  sleep 0.5 # Wait for 0.5 seconds
  play :A4  # Play La (A)
  sleep 0.5 # Wait for 0.5 seconds
  play :B4  # Play Ti (B)
  sleep 0.5 # Wait for 0.5 seconds
  play :C5  # Play High Do (C)
  sleep 0.5 # Wait for 0.5 seconds
end

# Call the function to play the scale
do_re_mi

# Calling the function again for fun
do_re_mi

#############################################################################################
# 7. Music Club Demo


#############################################################################################
# 8. Mentimeter Segment (Tech Titans points!)


#############################################################################################
# 9. Code Demos

# Example 1
# Loop forward then loop in reverse
# Define a list of notes using an array. The array holds the musical notes of the C major scale.
# Each note is represented by a symbol, such as :C4 (Middle C), :D4 (D), and so on.
scale = [:C4, :D4, :E4, :F4, :G4, :A4, :B4, :C5]  # Do-Re-Mi scale notes

# We are using a loop to repeat the entire scale twice: once forward and once backward.
# '2.times' means the loop will run exactly 2 times.
# The 'do |i|' part sets up the block of code that will execute for each loop iteration,
# where 'i' is the loop index (0 for the first iteration, 1 for the second iteration).
2.times do |i|
  
  # 'if i.even?' checks if the loop iteration number 'i' is even.
  # Since the first iteration (i = 0) is even, the code inside this 'if' block will run.
  if i.even?
    # '.each' is a method that goes through each item in the array (the scale in this case)
    # and plays each note. We are going through the array in the normal order (from start to end).
    scale.each do |note|
      # 'play' is a Sonic Pi function that plays the specified note.
      play note
      # 'sleep' is used to pause for a specified amount of time between notes (0.5 seconds here).
      sleep 0.5
    end
  else  # This part runs when the loop index 'i' is odd (in this case, when i = 1).
    # '.reverse' is a method that reverses the order of the array, so the notes are played backward.
    scale.reverse.each do |note|
      play note
      sleep 0.5
    end
  end
  # The loop will now repeat and check the condition again, running the appropriate block of code.
end


#############################################################################################
# 10. Try it yourself!

#Example 1 - He's a Pirate
#Coded by Davids Fiddle
use_bpm 100

amp_piano = 0.7
amp_bass = 0.5
amp_melody = 0.9

cutoff_bass = 80

e = 0.25
q = 0.5
dq = 0.75
h = 1
dh = 1.5

#Melody
in_thread do
  use_synth :saw
  3.times do
    play_pattern_timed [:d3,:d3,:d3,:d3,:d3,:d3,:d3,:d3,:d3],
      [q,e,q,e,q,e,e,e,e], amp: amp_melody, sustain: 0
  end
  play_pattern_timed [:d3,:d3,:d3,:d3,:d3,:d3,:d3],
    [q,e,q,e,q,e,e], amp: amp_melody, sustain: 0
end
in_thread do
  use_synth :saw
  sleep 6
  play_pattern_timed [:a3,:a3,:a3,:a3,:a3,:a3,:a3,:a3,:a3],
    [q,e,q,e,q,e,e,e,e], amp: amp_melody, sustain: 0
  play_pattern_timed [:a3,:a3,:a3,:a3,:a3,:a3,:a3],
    [q,e,q,e,q,e,e], amp: amp_melody, sustain: 0
  2.times do
    2.times do
      play_pattern_timed [:a3,:c4,:d4,:d4,:d4,:e4,:f4,:f4,:f4,:g4,:e4,:e4,:d4,:c4,:d4],
        [e,e,q,q,e,e,q,q,e,e,q,q,e,e,h], amp: amp_melody, sustain: 0
    end
    play_pattern_timed [:a3,:c4,:d4,:d4,:d4,:f4,:g4,:g4,:g4,:a4,:bb4,:bb4,:a4,:g4,:a4,:d4,:d4,:e4,:f4,:f4,:f4,:g4,:a4,:d4,:d4,:f4,:e4,:d4,:c4,:d4],
      [e,e,q,q,e,e,q,q,e,e,q,q,e,e,e,dq,e,e,q,e,e,q,q,q,e,e,q,q,q,h], amp: amp_melody, sustain: 0
  end
  sleep q
  play_pattern_timed [:a4,:bb4,:a4,:a4,:a4,:a4,:g4,:g4,:f4,:e4,:f4,:e4,:d4,:a4,:bb4,:a4,:a4,:c5,:a4,:g4,:g4,:f4,:e4,:f4,:e4,:d4],
    [dh,dh,q,q,q,e,h+e,dh,dh,q,q,q,dh,dh,dh,q,q,q,e,h+e,dh,dh,q,q,q,dh], amp: amp_melody, sustain: 0
end

#Acc
define :dmin do
  use_synth :piano
  play :d3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :f3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :a3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :bbmaj do
  use_synth :piano
  play :d3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :f3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :bb3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :amin do
  use_synth :piano
  play :c3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :e3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :a3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :fmaj do
  use_synth :piano
  play :c3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :f3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :a3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :cmaj do
  use_synth :piano
  play :c3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :e3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :g3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :gmin do
  use_synth :piano
  play :d3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :g3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :bb3, sustain: q, release: e, sustain: q, amp: amp_piano
end

in_thread do
  use_synth :fm
  sleep 2*dh
  play :d3, sustain: 2*h
  sleep 2*dh
  play :d3, sustain: 2*h
  sleep 2*dh
  play :d3, sustain: 2*h
  play :d2, sustain: 2*h
  sleep 2*dh
  with_fx :reverb do
    2.times do
      dmin
      sleep dq
      dmin
      sleep dq
      bbmaj
      sleep dq
      bbmaj
      sleep dq
      amin
      sleep dq
      amin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      bbmaj
      sleep dq
      bbmaj
      sleep dq
      fmaj
      sleep dq
      fmaj
      sleep dq
      cmaj
      sleep dq
      cmaj
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      cmaj
      sleep dq
      cmaj
      sleep dq
      gmin
      sleep dq
      gmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      cmaj
      sleep dq
      cmaj
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
    end
    2.times do
      use_synth :piano
      play :d3, amp: amp_piano, sustain: h
      play :a3, amp: amp_piano, sustain: h
      sleep dh
      play :d3, amp: amp_piano, sustain: h
      play :f3, amp: amp_piano, sustain: h
      sleep dh
      play :c3, amp: amp_piano, sustain: q
      play :f3, amp: amp_piano, sustain: q
      sleep h
      play :c3, amp: amp_piano, sustain: e
      play :f3, amp: amp_piano, sustain: e
      sleep q
      play :c3, amp: amp_piano, sustain: e
      play :f3, amp: amp_piano, sustain: e
      sleep e
      play :c3, amp: amp_piano, sustain: h
      play :g3, amp: amp_piano, sustain: h
      sleep h+e
      play :c3, amp: amp_piano, sustain: h
      play :g3, amp: amp_piano, sustain: h
      sleep dh
      play :d3, amp: amp_piano, sustain: h
      play :f3, amp: amp_piano, sustain: h
      sleep dh
      play :c3, amp: amp_piano, sustain: h
      sleep dh
      play :d3, amp: amp_piano, sustain: h
      sleep dh
    end
  end
end

#Bass
in_thread do
  use_synth :chiplead
  with_fx :octaver do
    sleep dh*4
    play :d2, sustain: h, amp: amp_bass, cutoff: cutoff_bass
    sleep dh*2
    play :d2, sustain: h, amp: amp_bass, cutoff: cutoff_bass
    sleep dh*2
    2.times do
      play_pattern_timed [:d3,:d3,:bb2,:bb2,:a2,:a2,:d3,:d3,:bb2,:bb2,:f2,:f2,:a2,:a2,:d3,:d3,:d3,:d3,:c3,:c3,:bb2,:bb2,:bb2,:c3,:d3,:d3,:d3,:d3,:d3,:C3,:c3,:d3,:d3],
        [q,h,q,h,q,h,q,h,q,h,q,h,q,h,q,h,q,h,q,h,q,q,e,e,dh,q,h,q,h,q,h,q,h],
        sustain: q, amp: amp_bass, cutoff: cutoff_bass
    end
    play_pattern_timed [:d3,:d3,:d3,:d3,:d3,:bb2,:bb2,:bb2,:bb2,:bb2,:f2,:f2,:f2,:f2,:f2,:c3,:c3,:c3,:c3,:c3,:c3,:c3,:c3,:d3,:d3,:d3,:d3,:d3,:c3,:c3,:c3,:c3,:c3,:d3,:d3,:d3,:d3,:d3],
      [q,e,e,e,e,q,e,e,e,e,q,e,e,e,e,q,q,q,q,e,e,e,e,q,e,e,e,e,q,e,e,e,e,q,e,e,e,e],
      sustain: e, amp: amp_bass, cutoff: cutoff_bass
    play_pattern_timed [:d3,:d3,:d3,:d3,:d3,:bb2,:bb2,:bb2,:bb2,:bb2,:f2,:f2,:f2,:f2,:f2,:c3,:c3,:c3,:c3,:c3,:c3,:c3,:c3,:d3,:d3,:d3,:d3,:d3,:c3,:c3,:c3,:c3,:c3,:d3],
      [q,e,e,e,e,q,e,e,e,e,q,e,e,e,e,q,q,q,q,e,e,e,e,q,e,e,e,e,q,e,e,e,e,dh],
      sustain: e, amp: amp_bass, cutoff: cutoff_bass
  end
end

# Example 2 - Basic
# Twinkle Twinkle
play :c4 #60
sleep 0.5
play :c4
sleep 0.5
play :g4 #67
sleep 0.5
play :g4
sleep 0.5
play :a4 #69
sleep 0.5
play :a4
sleep 0.5
play :g4
sleep 0.75
play :f4
sleep 0.5
play :f4
sleep 0.5
play :e4
sleep 0.5
play :e4
sleep 0.5
play :d4
sleep 0.5
play :d4
sleep 0.5
play :c4
sleep 0.75
play :g4
sleep 0.5
play :g4
sleep 0.5
play :f4
sleep 0.5
play :f4
sleep 0.5
play :e4
sleep 0.5
play :e4
sleep 0.5
play :d4
sleep 0.75
play :g4
sleep 0.5
play :g4
sleep 0.5
play :f4
sleep 0.5
play :f4
sleep 0.5
play :e4
sleep 0.5
play :e4
sleep 0.5
play :d4
sleep 0.75
play :c4
sleep 0.5
play :c4
sleep 0.5
play :g4
sleep 0.5
play :g4
sleep 0.5
play :a4
sleep 0.5
play :a4
sleep 0.5
play :g4
sleep 0.75
play :f4
sleep 0.5
play :f4
sleep 0.5
play :e4
sleep 0.5
play :e4
sleep 0.5
play :d4
sleep 0.5
play :d4
sleep 0.5
play :c4

# Example 2 - Efficient
use_bpm 120  # Set the tempo

# Define the notes for "Twinkle Twinkle Little Star"
notes = [:c4, :c4, :g4, :g4, :a4, :a4, :g4,  # Twinkle, twinkle, little star,
         :f4, :f4, :e4, :e4, :d4, :d4, :c4]  # How I wonder what you are!

# Define the durations for each note
durations = [1, 1, 1, 1, 1, 1, 1,  # Twinkle, twinkle, little star,
             1, 1, 1, 1, 1, 1, 1]  # How I wonder what you are!

# Play the melody with a pause between phrases
define :play_twinkle_twinkle do
  play_pattern_timed notes.take(7), durations.take(7), release: 0.5  # First phrase
  sleep 1  # Pause between phrases
  play_pattern_timed notes.drop(7), durations.drop(7), release: 0.5  # Second phrase
end

play_twinkle_twinkle

# test create a beat ourselves 
use_synth :piano

live_loop :UwU do
  play "A4"
  sleep 0.2
  play "B4"
  sleep 0.2
  play "C4"
  sleep 0.2
  play "D4"
  sleep 0.2
  play "E4"
  sleep 0.2
end


# last example 
# Define a frequency based on the sine function
live_loop :sine_wave do
  # Define 'x' as the time variable to create a continuous wave
  x = tick  # Increment 'x' each time the loop runs
  
  # Calculate the value of the sine function
  y = Math.sin(3 * x * 0.1)  # Scale down 'x' to control the frequency range
  
  # Map the sine value to a MIDI note (adjusting the range)
  note = (y * 12 + 60).round  # Scale to a MIDI note range
  
  # Play the calculated note
  play note, release: 0.1
  
  # Sleep for a short duration to control the frequency of note play
  sleep 0.1
end


# I'm a programmer but not a musician :(
# Choose a song you want to cover, find it's music notes online, implement the notes on Sonic Pi!
# After that, the easiest next thing to do is a beat! Notes in a pattern can easily become catchy.
# Guide: https://www.instructables.com/How-to-Code-a-Song-Using-Sheet-Music-in-Sonic-Pi/

#############################################################################################