import 'dart:convert';
import 'package:crypto/crypto.dart'; 
class Block {
  int index;
  String timestamp;
  String data;
  String previousHash;
  String hash;

  Block(this.index, this.timestamp, this.data, this.previousHash) 
    : hash = "" {
      hash = calculateHash();
    }

  String calculateHash() {
    var bytes = utf8.encode("$index$timestamp$data$previousHash");
    return sha256.convert(bytes).toString();
  }
}

void main() {
  List<Block> blockchain = [
    Block(0, DateTime.now().toString(), "Genesis Block", "0")
  ];

  print("---  Mini Blockchain Console ---");
  

  void addBlock(String data) {
    var prevBlock = blockchain.last;
    var newBlock = Block(prevBlock.index + 1, DateTime.now().toString(), data, prevBlock.hash);
    blockchain.add(newBlock);
  }

  addBlock("Sent 50 BTC to Ali");
  addBlock("Sent 10 BTC to Sara");

  for (var block in blockchain) {
    print("\nIndex: ${block.index}");
    print("Data: ${block.data}");
    print("Hash: ${block.hash}");
    print("Prev Hash: ${block.previousHash}");
  }
}