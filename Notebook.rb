class Notebook
  def initialize(text_note_class = TextNote)
    @text_note_class = text_note_class
    @folder = []
  end

  def store(text_note)
    @folder << text_note
  end

  def read
    @folder.each { |note| puts note.text }
  end

  def read_by_tag(topic)
    notes_with_tag = @folder.select { |note| note.tag == topic }
    notes_with_tag.each { |note| puts note.text }
  end
  
end

class TextNote
  attr_reader :text, :tag

  def initialize(text = "")
    @tag = nil
    @text = text
  end

  def write
    puts text
    puts "Please rewrite the note"
    @text = gets.chomp
  end

  def set_tag(topic)
    raise "Tag must be a symbol" if topic.class != Symbol

    @tag = topic
  end
end
