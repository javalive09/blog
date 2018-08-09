.class final Lcom/github/promeg/pinyinhelper/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static dictsToTrie(Ljava/util/List;)Lorg/ahocorasick/trie/Trie;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)",
            "Lorg/ahocorasick/trie/Trie;"
        }
    .end annotation

    .line 20
    .local p0, "pinyinDicts":Ljava/util/List;, "Ljava/util/List<Lcom/github/promeg/pinyinhelper/PinyinDict;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 22
    .local v0, "all":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lorg/ahocorasick/trie/Trie;->builder()Lorg/ahocorasick/trie/Trie$TrieBuilder;

    move-result-object v1

    .line 24
    .local v1, "builder":Lorg/ahocorasick/trie/Trie$TrieBuilder;
    if-eqz p0, :cond_3

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/promeg/pinyinhelper/PinyinDict;

    .line 26
    .local v3, "dict":Lcom/github/promeg/pinyinhelper/PinyinDict;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 27
    invoke-interface {v3}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    .end local v3    # "dict":Lcom/github/promeg/pinyinhelper/PinyinDict;
    :cond_0
    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/ahocorasick/trie/Trie$TrieBuilder;->addKeyword(Ljava/lang/String;)Lorg/ahocorasick/trie/Trie$TrieBuilder;

    .line 33
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v1}, Lorg/ahocorasick/trie/Trie$TrieBuilder;->build()Lorg/ahocorasick/trie/Trie;

    move-result-object v2

    return-object v2

    .line 38
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method
