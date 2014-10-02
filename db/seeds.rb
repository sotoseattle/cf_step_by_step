guides = Guide.create([
  { name: 'How to jump from an airplane without a parachute',
    description: 'In hands training for jumping from a 747 over the Pacific Ocean. No requirement for knowing how to swim.' },
  { name: 'How to play the Bishop Game without blood',
    description: 'Remember how Bishop (the android) used to kill the hours aboard the Nostromo? This guide will teach you how to beat Bishop to his favorite game with as little loss of blood as possible.' },
  { name: 'Make your own real-life Donkey Kong video-game',
    description: 'Now you can revisit the games of your childhood by playing Donkey Kong as you try to cross the I5. 99 easy steps to reconnect with your inner child and have seconds of fun!!' }])

['Buy a ticket to Hawaii',
 'Ask politely the flight attendant for multiple drinks',
 'Get drunk, but not so much as to loose consciousness',
 'Go towards the bathroom but in the last moment dribble towards the door',
 'Open the cabin door, 9make sure you are off the ground, if still in tarmak it wont be fun)',
 'Turn head and say something funny to the horrified passengers',
 'Jump!',
 'Enjoy the view',
 'No money back'
].each { |str| Step.create(name: str, guide: guides[0]) }

['Go to the kitchen and ask mommy for a turkey butcher\'s knife',
 'If no knives available, use the bigger fork you can find',
 'If righthanded, place right hand on the dinning room table. If lefthanded, well, you know.',
 'Extend palm and separate fingers as much as humanly possible.',
 'Slowly puncture in the spaces between the fingers, in order, from left to right, and back.',
 'After a couple of rounds, start speeding up the tempo.',
 'Stop when you cannot see the table anymore because of the mess you made',
 'Gather all bits and pieces in a ziplock bag for later on (emergency room will ask for it)',
 'Call 911 with your good hand.'
].each { |str| Step.create(name: str, guide: guides[1]) }
