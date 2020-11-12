
class MP3Importer

  attr_reader :path
  def initialize(file_path)
    @path = file_path
    @files = []
  end

  def files
    dirs = Dir[@path + '/*']
    dirs.map{|dir| dir.match(/[\w '.-]+$/)[0]}
  end

  def import
    files = self.files
    files.each{|file| Song.new_by_filename(file)}
  end


end