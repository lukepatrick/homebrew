require 'formula'

class Libdiscid < Formula
  homepage 'http://musicbrainz.org/doc/libdiscid'
  url 'http://ftp.musicbrainz.org/pub/musicbrainz/libdiscid/libdiscid-0.6.1.tar.gz'
  sha1 '4e682d24bceeb35c19800f9141348d77eae133f2'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

end
