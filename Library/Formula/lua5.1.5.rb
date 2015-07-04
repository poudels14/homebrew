class Lua515 < Formula
  desc "Powerful, lightweight programming language"
  homepage "http://www.lua.org/"
  url "http://www.lua.org/ftp/lua-5.1.5.tar.gz"
	sha256 "2640fc56a795f29d28ef15e13c34a47e223960b0240e8cb0a82d9b0738695333"


  def install
			system "make", "macosx", "INSTALL_TOP=#{prefix}", "INSTALL_MAN=#{prefix}/lua/5.1.5/share/man/man1", "INSTALL_INC=#{prefix}/lua/5.1.5/include/lua"
			system "make", "install", "INSTALL_TOP=#{prefix}", "INSTALL_MAN=/usr/local/man/man1", "INSTALL_INC=#{include}"
  end

  test do
    system "#{bin}/lua", "-e", "print ('You did it; You have lua 5.1.5')"
  end
end

__END__
