import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Timer;
import java.util.TimerTask;

public class lectureFic {
	public static void main(String[] args) throws IOException {
		Map<String, String> dico = new HashMap<String, String>();
		
		Timer minuteur = new Timer();
		// permet de répéter l'action toutes les 10 minutes
		minuteur.schedule(new monAction(), 0, 1*1000*60*10);
		
	}
	
	/*
	public static String lectureFichier(Map<String, String> dico)  throws IOException{
		
		Path path = Path.of("src/fichier.txt"); // chemin du fichier à lire
		List<String> lignes = Files.readAllLines(path); // liste qui va contenir les lignes du fichier lu
		String a[] = {""};
		
		// affichage des lignes de la liste
		for(String ligne : lignes) {
			a = ligne.split(":", 2);
			dico.put(a[0], a[1]);
		}
		
		return dico.toString();
	}
	*/
}
