/**
 * Simple caching file reader for the London weather proxy
 *
 * The Camel route writes the weather summary to ./data/out.html
 * This class reads it if it has not been read in the last ten seconds;
 * otherwise it returns the cached version.
 *
 * There does not seem to be a simple way to implement this kind of file
 * caching using built-in Camel features.
 *
 * Copyright (c)2014 Kevin Boone
 */

package net.kevinboone.apacheintegration.londonweather;
import java.nio.*;
import java.nio.file.*;

public class FileReader
{
static long lastReadMillis = 0;
static String html = "";

public String readFile ()
  {
  try
    {
    long now = System.currentTimeMillis();
    if (now - lastReadMillis > 3600*10) // 10 seconds
      {
      byte[] encoded = Files.readAllBytes(Paths.get("./data/out.html"));
      html = new String (encoded);
      }
    lastReadMillis = now;
    return html;
    }
  catch (Exception e)
    {
    return e.toString(); 
    }
  }

}


