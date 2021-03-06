
# contents -> genbank as a text file
# name -> key (ID)
# save_date -> current time stamp
# user -> none for now (iteration 1)

class Autosave < ActiveRecord::Base
  attr_accessible :contents, :name, :save_date, :user_id

  def self.save_file(file_contents, name, save_date, user_id)
  	Autosave.create(contents: file_contents, name: name, save_date: save_date, user_id: user_id)
  end

  def self.find_autosaved_file(name)
  	autosaved_file_contents = nil
  	autosaved_file = Autosave.find_by_name(name)
  	if ! autosaved_file.nil?
  		autosaved_file_contents = autosaved_file.contents
  	end
  	return autosaved_file_contents
  end

  def self.delete_save(name)
  	Autosave.find_by_name(name).destroy
  end

end
