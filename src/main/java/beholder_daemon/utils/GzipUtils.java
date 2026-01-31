package beholder_daemon.utils;

import java.io.*;
import java.util.zip.*;
import org.brotli.dec.BrotliInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;


public class GzipUtils {
    
    // 压缩
    public static byte[] compress(String data) throws IOException {
        if (data == null || data.isEmpty()) return null;
        
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        try (GZIPOutputStream gzip = new GZIPOutputStream(bos)) {
            gzip.write(data.getBytes("UTF-8"));
        }
        return bos.toByteArray();
    }
    
    // 解压
    public static String decompress(byte[] compressed) throws IOException {
        if (compressed == null) return null;
        
        ByteArrayInputStream bis = new ByteArrayInputStream(compressed);
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        try (GZIPInputStream gzip = new GZIPInputStream(bis)) {
            byte[] buffer = new byte[1024];
            int len;
            while ((len = gzip.read(buffer)) != -1) {
                bos.write(buffer, 0, len);
            }
        }
        return bos.toString("UTF-8");
    }

    public static byte[] decompressBrotli(byte[] compressed) throws IOException {
        try (ByteArrayInputStream bis = new ByteArrayInputStream(compressed);
            BrotliInputStream brotli = new BrotliInputStream(bis);
            ByteArrayOutputStream bos = new ByteArrayOutputStream()) {
            
            byte[] buffer = new byte[1024];
            int len;
            while ((len = brotli.read(buffer)) != -1) {
                bos.write(buffer, 0, len);
            }
            return bos.toByteArray();
        }
    }
}