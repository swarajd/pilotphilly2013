class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  def generate_id
    if @unique_id != nil
      prng = Random.new
      @unique_id = prng.rand(100000000)
    end
  end
  def load_files
    udir = 'files/'+name+'/'
    if File.directory?(udir)==false
      system('mkdir -p '+udir)
    end
    @files = Dir.entries(udir)
    @files.delete_at(0)
    @files.delete_at(1)
  end
end
