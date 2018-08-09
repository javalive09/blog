.class public Lorg/ahocorasick/trie/Trie$TrieBuilder;
.super Ljava/lang/Object;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ahocorasick/trie/Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrieBuilder"
.end annotation


# instance fields
.field private trie:Lorg/ahocorasick/trie/Trie;

.field private trieConfig:Lorg/ahocorasick/trie/TrieConfig;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Lorg/ahocorasick/trie/TrieConfig;

    invoke-direct {v0}, Lorg/ahocorasick/trie/TrieConfig;-><init>()V

    iput-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    .line 240
    new-instance v0, Lorg/ahocorasick/trie/Trie;

    iget-object v1, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ahocorasick/trie/Trie;-><init>(Lorg/ahocorasick/trie/TrieConfig;Lorg/ahocorasick/trie/Trie$1;)V

    iput-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lorg/ahocorasick/trie/Trie$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/ahocorasick/trie/Trie$1;

    .line 236
    invoke-direct {p0}, Lorg/ahocorasick/trie/Trie$TrieBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    invoke-static {v0, p1}, Lorg/ahocorasick/trie/Trie;->access$200(Lorg/ahocorasick/trie/Trie;Ljava/lang/String;)V

    .line 266
    return-object p0
.end method

.method public build()Lorg/ahocorasick/trie/Trie;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    invoke-static {v0}, Lorg/ahocorasick/trie/Trie;->access$400(Lorg/ahocorasick/trie/Trie;)V

    .line 276
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    return-object v0
.end method

.method public caseInsensitive()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    .line 245
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setCaseInsensitive(Z)V

    .line 246
    return-object p0
.end method

.method public onlyWholeWords()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    .line 255
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setOnlyWholeWords(Z)V

    .line 256
    return-object p0
.end method

.method public onlyWholeWordsWhiteSpaceSeparated()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setOnlyWholeWordsWhiteSpaceSeparated(Z)V

    .line 261
    return-object p0
.end method

.method public removeOverlaps()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setAllowOverlaps(Z)V

    .line 251
    return-object p0
.end method

.method public stopOnHit()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    .line 270
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    invoke-static {v0}, Lorg/ahocorasick/trie/Trie;->access$300(Lorg/ahocorasick/trie/Trie;)Lorg/ahocorasick/trie/TrieConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/TrieConfig;->setStopOnHit(Z)V

    .line 271
    return-object p0
.end method
