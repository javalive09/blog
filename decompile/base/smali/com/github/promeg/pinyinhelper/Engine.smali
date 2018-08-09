.class final Lcom/github/promeg/pinyinhelper/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;
    }
.end annotation


# static fields
.field static final EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-direct {v0}, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;-><init>()V

    sput-object v0, Lcom/github/promeg/pinyinhelper/Engine;->EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static pinyinFromDict(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .param p0, "wordInDict"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    .local p1, "pinyinDictSet":Ljava/util/List;, "Ljava/util/List<Lcom/github/promeg/pinyinhelper/PinyinDict;>;"
    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/promeg/pinyinhelper/PinyinDict;

    .line 83
    .local v1, "dict":Lcom/github/promeg/pinyinhelper/PinyinDict;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v1}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v1, p0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->toPinyin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    .end local v1    # "dict":Lcom/github/promeg/pinyinhelper/PinyinDict;
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No pinyin dict contains word: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static toPinyin(Ljava/lang/String;Lorg/ahocorasick/trie/Trie;Ljava/util/List;Ljava/lang/String;Lcom/github/promeg/pinyinhelper/SegmentationSelector;)Ljava/lang/String;
    .locals 8
    .param p0, "inputStr"    # Ljava/lang/String;
    .param p1, "trie"    # Lorg/ahocorasick/trie/Trie;
    .param p3, "separator"    # Ljava/lang/String;
    .param p4, "selector"    # Lcom/github/promeg/pinyinhelper/SegmentationSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/ahocorasick/trie/Trie;",
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/github/promeg/pinyinhelper/SegmentationSelector;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 27
    .local p2, "pinyinDictList":Ljava/util/List;, "Ljava/util/List<Lcom/github/promeg/pinyinhelper/PinyinDict;>;"
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 32
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p4, :cond_1

    goto/16 :goto_3

    .line 44
    :cond_1
    invoke-virtual {p1, p0}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/github/promeg/pinyinhelper/SegmentationSelector;->select(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, "selectedEmits":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    sget-object v2, Lcom/github/promeg/pinyinhelper/Engine;->EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v2, "resultPinyinStrBuf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 52
    .local v3, "nextHitIndex":I
    move v4, v3

    const/4 v3, 0x0

    .line 52
    .local v3, "i":I
    .local v4, "nextHitIndex":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v5}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 56
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v5}, Lorg/ahocorasick/trie/Emit;->getKeyword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/github/promeg/pinyinhelper/Engine;->pinyinFromDict(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "fromDicts":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 57
    .local v6, "j":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_4

    .line 58
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_3

    .line 60
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    .end local v6    # "j":I
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v6}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    .end local v5    # "fromDicts":[Ljava/lang/String;
    goto :goto_2

    .line 68
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 72
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_2

    .line 73
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 77
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    .end local v1    # "selectedEmits":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    .end local v2    # "resultPinyinStrBuf":Ljava/lang/StringBuffer;
    .end local v4    # "nextHitIndex":I
    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .local v1, "resultPinyinStrBuf":Ljava/lang/StringBuffer;
    nop

    .line 35
    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_8

    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 41
    .end local v0    # "i":I
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    .end local v1    # "resultPinyinStrBuf":Ljava/lang/StringBuffer;
    :cond_a
    :goto_5
    return-object p0
.end method
