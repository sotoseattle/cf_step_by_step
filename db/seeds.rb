guides = Guide.create([
  { name: 'How to jump from an airplane without a parachute',
    description: 'In hands training for jumping from a 747 over the Pacific Ocean. No requirement for knowing how to swim.' },
  { name: 'How to play the Bishop Game without blood',
    description: 'Remember how Bishop (the android) used to kill the ours aboard the Nostromo? This guide will teach you how to beat Bishop to his favorite game with little loss of blood.' },
  { name: 'Make your own real-life Donkey Kong video-game',
    description: 'Now you can revisit the games of your childhood. Play Donkey Kong trying to cross the I5. These are the 99 easy steps to reconnect with your inner child and have seconds of fun!!' }])

['Ask politely the flight attendant for multiple drinks',
 'Get drunk, but not so much as you loose consciousness',
 'Go towards the bathroom but flank towards the dooe',
 'Open door in mid air (if still in tarmak it is no fun)',
 'Turn head and say something funny to the horrified passengers',
 'Jump, hands in ',
 'Enjoy the view',
 'No money back, sorry'
].each { |str| Step.create(name: str, guide: guides[0]) }

['Go to the kitchen and ask mommy for a turkey butcher\'s knife',
 'If no knives available, use a fork',
 'If righthanded, place right hand on the dinning room table. If lefthanded, well, you know.',
 'Extend palm and separate fingers as much as humanly possible.',
 'Slowly puncture between the fingers, in order, from left to right.',
 'After a couple of rounds, start speeding up the tempo.',
 'Stop when you cannot see the table anymore because of the mess you made',
 'Gather all bits and pieces in a ziplock bag for later on (surgery if lucky)',
 'Call 911 with your good hand.'
].each { |str| Step.create(name: str, guide: guides[1]) }
