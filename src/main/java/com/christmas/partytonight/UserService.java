package com.christmas.partytonight;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service("UserService")
public class UserService {
	private static final String PATH = "C:\\Users\\admin\\Documents\\SpringWorkpsace\\PartyTonight\\PartyTonight\\src\\main\\resources\\data\\database.txt";
	private String seatNumber[] = {"01A", "01B", "01C", "02A", "02B", "02C"};
	public void writeFile(String name, String seat) {
//		String path = System.getProperty("user.dir");
//		System.out.println("path : " + path);
		File file = new File(PATH);
		try {
		    BufferedWriter writer = new BufferedWriter(new FileWriter(file, true));
		    writer.write(name + " " + seat + "\n");
		    writer.close();
		} catch (IOException e) {
		    e.printStackTrace();
		}
	}
	
	public String[] enterTicket(String name) {
		Map<String, String> map = readFile();
		String str[] = new String[2];
		if (map.containsKey(name)) {
			str[0] = name;
			str[1] = map.get(name);
		} else {
			if (map.size() >= 6) {
				return null;
			}
			str[0] = name;
			str[1] = seatNumber[map.size()];
			writeFile(name, str[1]);
		}
		return str;
	}
	
	public Map<String, String> readFile() {
		Map<String, String> map = new HashMap<String, String>();
		File file = new File(PATH);
		try (BufferedReader br = new BufferedReader(new FileReader(file))) {
		    String line;
		    while ((line = br.readLine()) != null) {
		        String str[] = line.split(" ");
		        map.put(str[0], str[1]);
		    }
		} catch (IOException e) {
		    e.printStackTrace();
		}
		return map;
	}
}	
