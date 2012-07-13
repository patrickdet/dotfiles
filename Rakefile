task :default => [:link_dotfiles,:copy_colors]

desc "link dotfiles to home_dir"
task :link_dotfiles do
  %w[ gitconfig vimrc.after gvimrc.after gitignore
      bashrc bash_profile zshrc tmux.conf gemrc ].each do |file|
    dest = File.expand_path("~/.#{file}")
    unless File.exist?(dest)
      ln_s(File.expand_path("../#{file}", __FILE__), dest)
    end
  end
end

desc "copy colors to vim colors folder"
task :copy_colors do
  FileUtils.cp_r "#{File.expand_path("../#{file}", __FILE__)}/vimcolors/.",
                 File.expand_path("~/.vim/colors")

  # ZSH themes
  %w[ tilltheis.zsh-theme ].each do |file|
    dest = File.expand_path("~/.oh-my-zsh/custom/#{file}")
    unless File.exist?(dest)
      ln_s(File.expand_path("../#{file}", __FILE__), dest)
    end
  end
end
