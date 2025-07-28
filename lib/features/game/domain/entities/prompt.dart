class Prompt {
  final String text;
  final List<String>? assets;

  Prompt({
    required this.text,
    this.assets,
  });

  @override
  String toString() {
    return 'Prompt{text: $text, assets: $assets}';
  }
}
