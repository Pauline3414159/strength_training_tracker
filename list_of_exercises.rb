class GenerateList
  def initialize(list, muscle_group)
    @list = list
    @muscle_group = muscle_group
  end

  def values_for_sql
    @list.map do |exercise|
      "('#{exercise}','#{@muscle_group}')"
    end.join(", ").concat(',')
  end
end

muscle_groups = ['Chest', 'Back', 'Shoulder', 'Legs', 'Arms']
chest_list = [
  'Press',
  'Flyes',
  'Dips',
  'Push ups'
]

back_list = [
  'Pull-Ups',
  'Chin-Ups',
  'Lat Pull-Downs',
  'Bent Over  Rows',
  'Inverted Rows',
  'Shrugs'
]

shoulder_list = [
  'Upright Rows',
  'Lateral Raises',
  'Front Raises',
  'Rear Delt Rows'
]

legs_list = [
  'Deadlifts',
  'Leg Curls',
  'Glute-Ham Raises',
  'Squats',
  'Lunges',
  'Leg Extensions'
]

arms_list = [
  'Curls',
  'Hammer Curls',
  'Dips',
  'Triceps Extensions'
]

all_lists = [chest_list, back_list, shoulder_list, legs_list, arms_list]

txt = ''

muscle_groups.each_with_index do |muscle, index|
  txt.concat(GenerateList.new(all_lists[index], muscle).values_for_sql)
end

p txt