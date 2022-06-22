use std::fs;
use std::path::Path;

fn get_lyrics() -> Vec<String> {
    let lyrics_path = Path::new("./lyrics.json");
    let lyrics_data = fs::read_to_string(lyrics_path).expect("Unable to read file");
    let lyrics: Vec<String> =
        serde_json::from_str(&lyrics_data).expect("JSON does not have correct format.");
    lyrics
}

fn main() {
    let lyrics = get_lyrics();

    for line in lyrics {
        println!("{}", line)
    }
}
