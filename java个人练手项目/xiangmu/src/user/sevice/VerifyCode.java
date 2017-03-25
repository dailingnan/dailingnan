package user.sevice;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;

public class VerifyCode {
	private int w = 70;
	private int h = 35;
 	private Random r = new Random();
 	// {"鐎瑰缍�", "閸楀孩鏋冨Δ铚傜秼", "姒涙垳缍�", "閸楀孩鏋冮弬浼寸摌", "閸楀孩鏋冮梾鏈靛姛", "瀵邦喛钂嬮梿鍛寸拨", "濡よ渹缍媉GB2312"}
	private String[] fontNames  = {"鐎瑰缍�", "閸楀孩鏋冨Δ铚傜秼", "姒涙垳缍�", "瀵邦喛钂嬮梿鍛寸拨", "濡よ渹缍媉GB2312"};
	// 閸欘垶锟藉鐡х粭锟�
	private String codes  = "23456789abcdefghjkmnopqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ";
	// 閼冲本娅欓懝锟�
	private Color bgColor  = new Color(255, 255, 255);
	// 妤犲矁鐦夐惍浣风瑐閻ㄥ嫭鏋冮張锟�
	private String text ;
	
	// 閻㈢喐鍨氶梾蹇旀簚閻ㄥ嫰顤侀懝锟�
	private Color randomColor () {
		int red = r.nextInt(255);
		int green = r.nextInt(255);
		int blue = r.nextInt(255);
		return new Color(red, green, blue);
	}
	
	// 閻㈢喐鍨氶梾蹇旀簚閻ㄥ嫬鐡ф担锟�
	private Font randomFont () {
		int index = r.nextInt(fontNames.length);
		String fontName = fontNames[index];//閻㈢喐鍨氶梾蹇旀簚閻ㄥ嫬鐡ф担鎾虫倳缁夛拷
		int style = r.nextInt(4);//閻㈢喐鍨氶梾蹇旀簚閻ㄥ嫭鐗卞锟�, 0(閺冪姵鐗卞锟�), 1(缁ぞ缍�), 2(閺傛粈缍�), 3(缁ぞ缍�+閺傛粈缍�)
		int size = r.nextInt(5) + 24; //閻㈢喐鍨氶梾蹇旀簚鐎涙褰�, 24 ~ 28
		return new Font(fontName, style, size);
	}
	
	// 閻㈣鍏遍幍鎵殠
	private void drawLine (BufferedImage image) {
		int num  = 3;//娑擄拷閸忚京鏁�3閺夛拷
		Graphics2D g2 = (Graphics2D)image.getGraphics();
		for(int i = 0; i < num; i++) {//閻㈢喐鍨氭稉銈勯嚋閻愬湱娈戦崸鎰垼閿涘苯宓�4娑擃亜锟斤拷
			int x1 = r.nextInt(w);
			int y1 = r.nextInt(h);
			int x2 = r.nextInt(w);
			int y2 = r.nextInt(h); 
			g2.setStroke(new BasicStroke(1.5F)); 
			g2.setColor(Color.BLUE); //楠炲弶澹堢痪鎸庢Ц閽冩繆澹�
			g2.drawLine(x1, y1, x2, y2);//閻㈣崵鍤�
		}
	}
	
	// 闂呭繑婧�閻㈢喐鍨氭稉锟芥稉顏勭摟缁楋拷
	private char randomChar () {
		int index = r.nextInt(codes.length());
		return codes.charAt(index);
	}
	
	// 閸掓稑缂揃ufferedImage
	private BufferedImage createImage () {
		BufferedImage image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB); 
		Graphics2D g2 = (Graphics2D)image.getGraphics(); 
		g2.setColor(this.bgColor);
		g2.fillRect(0, 0, w, h);
 		return image;
	}
	
	// 鐠嬪啰鏁ゆ潻娆庨嚋閺傝纭跺妤�鍩屾宀冪槈閻拷
	public BufferedImage getImage () {
		BufferedImage image = createImage();//閸掓稑缂撻崶鍓у缂傛挸鍟块崠锟� 
		Graphics2D g2 = (Graphics2D)image.getGraphics();//瀵版鍩岀紒妯哄煑閻滎垰顣�
		StringBuilder sb = new StringBuilder();//閻€劍娼电憗鍛版祰閻㈢喐鍨氶惃鍕崣鐠囦胶鐖滈弬鍥ㄦ拱
		// 閸氭垵娴橀悧鍥﹁厬閻拷4娑擃亜鐡х粭锟�
		for(int i = 0; i < 4; i++)  {//瀵邦亞骞嗛崶娑欘偧閿涘本鐦″▎锛勬晸閹存劒绔存稉顏勭摟缁楋拷
			String s = randomChar() + "";//闂呭繑婧�閻㈢喐鍨氭稉锟芥稉顏勭摟濮ｏ拷 
			sb.append(s); //閹跺﹤鐡уВ宥嗗潑閸旂姴鍩宻b娑擄拷
			float x = i * 1.0F * w / 4; //鐠佸墽鐤嗚ぐ鎾冲鐎涙顑侀惃鍓庢潪鏉戞綏閺嶏拷
			g2.setFont(randomFont()); //鐠佸墽鐤嗛梾蹇旀簚鐎涙ぞ缍�
			g2.setColor(randomColor()); //鐠佸墽鐤嗛梾蹇旀簚妫版粏澹�
			g2.drawString(s, x, h-5); //閻㈣娴�
		}
		this.text = sb.toString(); //閹跺﹦鏁撻幋鎰畱鐎涙顑佹稉鑼剁ゴ缂佹瑤绨his.text
		drawLine(image); //濞ｈ濮為獮鍙夊缁撅拷
		return image;		
	}
	
	// 鏉╂柨娲栨宀冪槈閻礁娴橀悧鍥︾瑐閻ㄥ嫭鏋冮張锟�
	public String getText () {
		return text;
	}
	
	// 娣囨繂鐡ㄩ崶鍓у閸掔増瀵氱�规氨娈戞潏鎾冲毉濞达拷
	public static void output (BufferedImage image, OutputStream out) 
				throws IOException {
		ImageIO.write(image, "JPEG", out);
	}
}


