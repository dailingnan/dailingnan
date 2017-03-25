package com.dailingnan.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;




//将普通的pojo注入
@Component
public class RandomValidateCode {

    /**
     * 鐢熸垚浠ｇ爜
     * 
     * @return
     */
    public static String createValidateCode(int size) {
        String seed = "1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM";
        int len = seed.length();
        char[] p = new char[size];
        for (int i = 0; i < size; i++) {
            p[i] = seed.charAt((int) Math.floor(Math.random() * len));
        }
        return new String(p);
    }

    private final Random random = new Random();

    private final String randString = "123456789ABCDEFGHIJKLMNPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";// 闅忔満浜х敓鐨勫瓧绗︿覆
    private final int width = 135;// 鍥剧墖瀹�
    private final int height = 40;// 鍥剧墖楂�
    private final int lineSize = 50;// 骞叉壈绾挎暟閲�
    private final int stringNum = 4;// 闅忔満浜х敓瀛楃鏁伴噺

    private final int fontSize = 30;// 闅忔満浜х敓瀛楃鏁伴噺

    /**
     * 鐢熸垚闅忔満鍥剧墖
     */
    public void getRandcode(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        // BufferedImage绫绘槸鍏锋湁缂撳啿鍖虹殑Image绫�,Image绫绘槸鐢ㄤ簬鎻忚堪鍥惧儚淇℃伅鐨勭被
        BufferedImage image = new BufferedImage(this.width, this.height, BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();// 浜х敓Image瀵硅薄鐨凣raphics瀵硅薄,鏀瑰璞″彲浠ュ湪鍥惧儚涓婅繘琛屽悇绉嶇粯鍒舵搷浣�
        g.fillRect(0, 0, this.width, this.height);
        g.setFont(new Font("Times New Roman", Font.ROMAN_BASELINE, this.fontSize));
        g.setColor(this.getRandColor(110, 133));
        // 缁樺埗骞叉壈绾�
        for (int i = 0; i <= this.lineSize; i++) {
            this.drawLine(g);
        }
        // 缁樺埗闅忔満瀛楃
        String randomString = "";
        for (int i = 1; i <= this.stringNum; i++) {
            randomString = this.drawString(g, randomString, i);
        }
        session.removeAttribute("RANDOM_CODE_KEY");
        session.setAttribute("RANDOM_CODE_KEY", randomString);
        // System.out.println(randomString);
        g.dispose();
        try {
            // 绂佹鍥惧儚缂撳瓨銆�
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            // 灏嗗唴瀛樹腑鐨勫浘鐗囬�氳繃娴佸姩褰㈠紡杈撳嚭鍒板鎴风
            ImageIO.write(image, "JPEG", response.getOutputStream());
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 鑾峰彇闅忔満鐨勫瓧绗�
     */
    public String getRandomString(int num) {
        return String.valueOf(this.randString.charAt(num));
    }

    /**
     * 缁樺埗骞叉壈绾�
     */
    private void drawLine(Graphics g) {
        int x = this.random.nextInt(this.width);
        int y = this.random.nextInt(this.height);
        int xl = this.random.nextInt(13);
        int yl = this.random.nextInt(15);
        g.drawLine(x, y, x + xl, y + yl);
    }

    /**
     * 缁樺埗瀛楃涓�
     */
    private String drawString(Graphics g, String randomString, int i) {
        g.setFont(this.getFont());
        g.setColor(new Color(this.random.nextInt(155), this.random.nextInt(123), this.random.nextInt(176)));
        String rand = String.valueOf(this.getRandomString(this.random.nextInt(this.randString.length())));
        randomString += rand;
        g.translate(this.random.nextInt(3), this.random.nextInt(3));
        g.drawString(rand, (this.width / this.stringNum - 14) * i, this.height - 7);
        return randomString;
    }

    /**
     * 鑾峰緱瀛椾綋
     */
    private Font getFont() {
        return new Font("Times New Roman", Font.CENTER_BASELINE, this.fontSize);
    }

    /**
     * 鑾峰緱棰滆壊
     */
    private Color getRandColor(int fc, int bc) {
        if (fc > 255) {
            fc = 255;
        }
        if (bc > 255) {
            bc = 255;
        }
        int r = fc + this.random.nextInt(bc - fc - 16);
        int g = fc + this.random.nextInt(bc - fc - 14);
        int b = fc + this.random.nextInt(bc - fc - 18);
        return new Color(r, g, b);
    }
}