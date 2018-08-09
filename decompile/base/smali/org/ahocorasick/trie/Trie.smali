.class public Lorg/ahocorasick/trie/Trie;
.super Ljava/lang/Object;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ahocorasick/trie/Trie$TrieBuilder;
    }
.end annotation


# instance fields
.field private rootState:Lorg/ahocorasick/trie/State;

.field private trieConfig:Lorg/ahocorasick/trie/TrieConfig;


# direct methods
.method private constructor <init>(Lorg/ahocorasick/trie/TrieConfig;)V
    .locals 1
    .param p1, "trieConfig"    # Lorg/ahocorasick/trie/TrieConfig;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    .line 27
    new-instance v0, Lorg/ahocorasick/trie/State;

    invoke-direct {v0}, Lorg/ahocorasick/trie/State;-><init>()V

    iput-object v0, p0, Lorg/ahocorasick/trie/Trie;->rootState:Lorg/ahocorasick/trie/State;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lorg/ahocorasick/trie/TrieConfig;Lorg/ahocorasick/trie/Trie$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/ahocorasick/trie/TrieConfig;
    .param p2, "x1"    # Lorg/ahocorasick/trie/Trie$1;

    .line 19
    invoke-direct {p0, p1}, Lorg/ahocorasick/trie/Trie;-><init>(Lorg/ahocorasick/trie/TrieConfig;)V

    return-void
.end method

.method static synthetic access$200(Lorg/ahocorasick/trie/Trie;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/ahocorasick/trie/Trie;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lorg/ahocorasick/trie/Trie;->addKeyword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/ahocorasick/trie/Trie;)Lorg/ahocorasick/trie/TrieConfig;
    .locals 1
    .param p0, "x0"    # Lorg/ahocorasick/trie/Trie;

    .line 19
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    return-object v0
.end method

.method static synthetic access$400(Lorg/ahocorasick/trie/Trie;)V
    .locals 0
    .param p0, "x0"    # Lorg/ahocorasick/trie/Trie;

    .line 19
    invoke-direct {p0}, Lorg/ahocorasick/trie/Trie;->constructFailureStates()V

    return-void
.end method

.method private addKeyword(Ljava/lang/String;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;

    .line 31
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->rootState:Lorg/ahocorasick/trie/State;

    .line 35
    .local v0, "currentState":Lorg/ahocorasick/trie/State;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 36
    .local v4, "character":Ljava/lang/Character;
    iget-object v5, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v5}, Lorg/ahocorasick/trie/TrieConfig;->isCaseInsensitive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 39
    :cond_1
    invoke-virtual {v0, v4}, Lorg/ahocorasick/trie/State;->addState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    .line 35
    .end local v4    # "character":Ljava/lang/Character;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v1}, Lorg/ahocorasick/trie/TrieConfig;->isCaseInsensitive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/ahocorasick/trie/State;->addEmit(Ljava/lang/String;)V

    .line 42
    return-void

    .line 32
    .end local v0    # "currentState":Lorg/ahocorasick/trie/State;
    :cond_4
    :goto_2
    return-void
.end method

.method public static builder()Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 2

    .line 233
    new-instance v0, Lorg/ahocorasick/trie/Trie$TrieBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ahocorasick/trie/Trie$TrieBuilder;-><init>(Lorg/ahocorasick/trie/Trie$1;)V

    return-object v0
.end method

.method private constructFailureStates()V
    .locals 8

    .line 193
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 196
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/ahocorasick/trie/State;>;"
    iget-object v1, p0, Lorg/ahocorasick/trie/Trie;->rootState:Lorg/ahocorasick/trie/State;

    invoke-virtual {v1}, Lorg/ahocorasick/trie/State;->getStates()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/trie/State;

    .line 197
    .local v2, "depthOneState":Lorg/ahocorasick/trie/State;
    iget-object v3, p0, Lorg/ahocorasick/trie/Trie;->rootState:Lorg/ahocorasick/trie/State;

    invoke-virtual {v2, v3}, Lorg/ahocorasick/trie/State;->setFailure(Lorg/ahocorasick/trie/State;)V

    .line 198
    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v2    # "depthOneState":Lorg/ahocorasick/trie/State;
    goto :goto_0

    .line 202
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 203
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ahocorasick/trie/State;

    .line 205
    .local v1, "currentState":Lorg/ahocorasick/trie/State;
    invoke-virtual {v1}, Lorg/ahocorasick/trie/State;->getTransitions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 206
    .local v3, "transition":Ljava/lang/Character;
    invoke-virtual {v1, v3}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v4

    .line 207
    .local v4, "targetState":Lorg/ahocorasick/trie/State;
    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v1}, Lorg/ahocorasick/trie/State;->failure()Lorg/ahocorasick/trie/State;

    move-result-object v5

    .line 210
    .local v5, "traceFailureState":Lorg/ahocorasick/trie/State;
    :goto_3
    invoke-virtual {v5, v3}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v6

    if-nez v6, :cond_1

    .line 211
    invoke-virtual {v5}, Lorg/ahocorasick/trie/State;->failure()Lorg/ahocorasick/trie/State;

    move-result-object v5

    goto :goto_3

    .line 213
    :cond_1
    invoke-virtual {v5, v3}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v6

    .line 214
    .local v6, "newFailureState":Lorg/ahocorasick/trie/State;
    invoke-virtual {v4, v6}, Lorg/ahocorasick/trie/State;->setFailure(Lorg/ahocorasick/trie/State;)V

    .line 215
    invoke-virtual {v6}, Lorg/ahocorasick/trie/State;->emit()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/ahocorasick/trie/State;->addEmit(Ljava/util/Collection;)V

    .line 216
    .end local v3    # "transition":Ljava/lang/Character;
    .end local v4    # "targetState":Lorg/ahocorasick/trie/State;
    .end local v5    # "traceFailureState":Lorg/ahocorasick/trie/State;
    .end local v6    # "newFailureState":Lorg/ahocorasick/trie/State;
    goto :goto_2

    .line 217
    .end local v1    # "currentState":Lorg/ahocorasick/trie/State;
    :cond_2
    goto :goto_1

    .line 218
    :cond_3
    return-void
.end method

.method private createFragment(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;I)Lorg/ahocorasick/trie/Token;
    .locals 3
    .param p1, "emit"    # Lorg/ahocorasick/trie/Emit;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "lastCollectedPosition"    # I

    .line 65
    new-instance v0, Lorg/ahocorasick/trie/FragmentToken;

    add-int/lit8 v1, p3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v2

    :goto_0
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ahocorasick/trie/FragmentToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createMatch(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;)Lorg/ahocorasick/trie/Token;
    .locals 3
    .param p1, "emit"    # Lorg/ahocorasick/trie/Emit;
    .param p2, "text"    # Ljava/lang/String;

    .line 69
    new-instance v0, Lorg/ahocorasick/trie/MatchToken;

    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v1

    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/ahocorasick/trie/MatchToken;-><init>(Ljava/lang/String;Lorg/ahocorasick/trie/Emit;)V

    return-object v0
.end method

.method private getState(Lorg/ahocorasick/trie/State;Ljava/lang/Character;)Lorg/ahocorasick/trie/State;
    .locals 1
    .param p1, "currentState"    # Lorg/ahocorasick/trie/State;
    .param p2, "character"    # Ljava/lang/Character;

    .line 184
    invoke-virtual {p1, p2}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    .line 185
    .local v0, "newCurrentState":Lorg/ahocorasick/trie/State;
    :goto_0
    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p1}, Lorg/ahocorasick/trie/State;->failure()Lorg/ahocorasick/trie/State;

    move-result-object p1

    .line 187
    invoke-virtual {p1, p2}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_0
    return-object v0
.end method

.method private isPartialMatch(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/Emit;)Z
    .locals 3
    .param p1, "searchText"    # Ljava/lang/CharSequence;
    .param p2, "emit"    # Lorg/ahocorasick/trie/Emit;

    .line 150
    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 153
    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private removePartialMatches(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 4
    .param p1, "searchText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p2, "collectedEmits":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "removeEmits":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/trie/Emit;

    .line 159
    .local v2, "emit":Lorg/ahocorasick/trie/Emit;
    invoke-direct {p0, p1, v2}, Lorg/ahocorasick/trie/Trie;->isPartialMatch(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/Emit;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v2    # "emit":Lorg/ahocorasick/trie/Emit;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/trie/Emit;

    .line 164
    .local v2, "removeEmit":Lorg/ahocorasick/trie/Emit;
    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "removeEmit":Lorg/ahocorasick/trie/Emit;
    goto :goto_1

    .line 166
    :cond_2
    return-void
.end method

.method private removePartialMatchesWhiteSpaceSeparated(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 7
    .param p1, "searchText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p2, "collectedEmits":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    .line 170
    .local v0, "size":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v2, "removeEmits":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ahocorasick/trie/Emit;

    .line 172
    .local v4, "emit":Lorg/ahocorasick/trie/Emit;
    invoke-virtual {v4}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    :cond_1
    invoke-virtual {v4}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v4    # "emit":Lorg/ahocorasick/trie/Emit;
    goto :goto_0

    .line 178
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ahocorasick/trie/Emit;

    .line 179
    .local v4, "removeEmit":Lorg/ahocorasick/trie/Emit;
    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 180
    .end local v4    # "removeEmit":Lorg/ahocorasick/trie/Emit;
    goto :goto_1

    .line 181
    :cond_4
    return-void
.end method

.method private storeEmits(ILorg/ahocorasick/trie/State;Lorg/ahocorasick/trie/handler/EmitHandler;)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "currentState"    # Lorg/ahocorasick/trie/State;
    .param p3, "emitHandler"    # Lorg/ahocorasick/trie/handler/EmitHandler;

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "emitted":Z
    invoke-virtual {p2}, Lorg/ahocorasick/trie/State;->emit()Ljava/util/Collection;

    move-result-object v1

    .line 223
    .local v1, "emits":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    .local v3, "emit":Ljava/lang/String;
    new-instance v4, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5, p1, v3}, Lorg/ahocorasick/trie/Emit;-><init>(IILjava/lang/String;)V

    invoke-interface {p3, v4}, Lorg/ahocorasick/trie/handler/EmitHandler;->emit(Lorg/ahocorasick/trie/Emit;)V

    .line 226
    const/4 v0, 0x1

    .line 227
    .end local v3    # "emit":Ljava/lang/String;
    goto :goto_0

    .line 229
    :cond_0
    return v0
.end method


# virtual methods
.method public containsMatch(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p0, p1}, Lorg/ahocorasick/trie/Trie;->firstMatch(Ljava/lang/CharSequence;)Lorg/ahocorasick/trie/Emit;

    move-result-object v0

    .line 97
    .local v0, "firstMatch":Lorg/ahocorasick/trie/Emit;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public firstMatch(Ljava/lang/CharSequence;)Lorg/ahocorasick/trie/Emit;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v0}, Lorg/ahocorasick/trie/TrieConfig;->isAllowOverlaps()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v0

    .line 119
    .local v0, "parseText":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ahocorasick/trie/Emit;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ahocorasick/trie/Emit;

    return-object v1

    .line 122
    .end local v0    # "parseText":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ahocorasick/trie/Emit;>;"
    :cond_0
    goto :goto_2

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->rootState:Lorg/ahocorasick/trie/State;

    .line 125
    .local v0, "currentState":Lorg/ahocorasick/trie/State;
    const/4 v1, 0x0

    .line 125
    .local v1, "position":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 126
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 127
    .local v2, "character":Ljava/lang/Character;
    iget-object v3, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v3}, Lorg/ahocorasick/trie/TrieConfig;->isCaseInsensitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 130
    :cond_2
    invoke-direct {p0, v0, v2}, Lorg/ahocorasick/trie/Trie;->getState(Lorg/ahocorasick/trie/State;Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lorg/ahocorasick/trie/State;->emit()Ljava/util/Collection;

    move-result-object v3

    .line 132
    .local v3, "emitStrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 133
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    .local v5, "emitStr":Ljava/lang/String;
    new-instance v6, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v1, v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7, v1, v5}, Lorg/ahocorasick/trie/Emit;-><init>(IILjava/lang/String;)V

    .line 135
    .local v6, "emit":Lorg/ahocorasick/trie/Emit;
    iget-object v7, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v7}, Lorg/ahocorasick/trie/TrieConfig;->isOnlyWholeWords()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 136
    invoke-direct {p0, p1, v6}, Lorg/ahocorasick/trie/Trie;->isPartialMatch(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/Emit;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 137
    return-object v6

    .line 142
    .end local v5    # "emitStr":Ljava/lang/String;
    .end local v6    # "emit":Lorg/ahocorasick/trie/Emit;
    :cond_3
    goto :goto_1

    .line 140
    .restart local v5    # "emitStr":Ljava/lang/String;
    .restart local v6    # "emit":Lorg/ahocorasick/trie/Emit;
    :cond_4
    return-object v6

    .line 125
    .end local v2    # "character":Ljava/lang/Character;
    .end local v3    # "emitStrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5    # "emitStr":Ljava/lang/String;
    .end local v6    # "emit":Lorg/ahocorasick/trie/Emit;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "currentState":Lorg/ahocorasick/trie/State;
    .end local v1    # "position":I
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;

    invoke-direct {v0}, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;-><init>()V

    .line 75
    .local v0, "emitHandler":Lorg/ahocorasick/trie/handler/DefaultEmitHandler;
    invoke-virtual {p0, p1, v0}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/handler/EmitHandler;)V

    .line 77
    invoke-virtual {v0}, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;->getEmits()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "collectedEmits":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/trie/Emit;>;"
    iget-object v2, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v2}, Lorg/ahocorasick/trie/TrieConfig;->isOnlyWholeWords()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-direct {p0, p1, v1}, Lorg/ahocorasick/trie/Trie;->removePartialMatches(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 83
    :cond_0
    iget-object v2, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v2}, Lorg/ahocorasick/trie/TrieConfig;->isOnlyWholeWordsWhiteSpaceSeparated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-direct {p0, p1, v1}, Lorg/ahocorasick/trie/Trie;->removePartialMatchesWhiteSpaceSeparated(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 87
    :cond_1
    iget-object v2, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v2}, Lorg/ahocorasick/trie/TrieConfig;->isAllowOverlaps()Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    new-instance v2, Lorg/ahocorasick/interval/IntervalTree;

    invoke-direct {v2, v1}, Lorg/ahocorasick/interval/IntervalTree;-><init>(Ljava/util/List;)V

    .line 89
    .local v2, "intervalTree":Lorg/ahocorasick/interval/IntervalTree;
    invoke-virtual {v2, v1}, Lorg/ahocorasick/interval/IntervalTree;->removeOverlaps(Ljava/util/List;)Ljava/util/List;

    .line 92
    .end local v2    # "intervalTree":Lorg/ahocorasick/interval/IntervalTree;
    :cond_2
    return-object v1
.end method

.method public parseText(Ljava/lang/CharSequence;Lorg/ahocorasick/trie/handler/EmitHandler;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "emitHandler"    # Lorg/ahocorasick/trie/handler/EmitHandler;

    .line 101
    iget-object v0, p0, Lorg/ahocorasick/trie/Trie;->rootState:Lorg/ahocorasick/trie/State;

    .line 102
    .local v0, "currentState":Lorg/ahocorasick/trie/State;
    const/4 v1, 0x0

    .line 102
    .local v1, "position":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 103
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 104
    .local v2, "character":Ljava/lang/Character;
    iget-object v3, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v3}, Lorg/ahocorasick/trie/TrieConfig;->isCaseInsensitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 107
    :cond_0
    invoke-direct {p0, v0, v2}, Lorg/ahocorasick/trie/Trie;->getState(Lorg/ahocorasick/trie/State;Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    .line 108
    invoke-direct {p0, v1, v0, p2}, Lorg/ahocorasick/trie/Trie;->storeEmits(ILorg/ahocorasick/trie/State;Lorg/ahocorasick/trie/handler/EmitHandler;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ahocorasick/trie/Trie;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    invoke-virtual {v3}, Lorg/ahocorasick/trie/TrieConfig;->isStopOnHit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    return-void

    .line 102
    .end local v2    # "character":Ljava/lang/Character;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "position":I
    :cond_2
    return-void
.end method

.method public tokenize(Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/ahocorasick/trie/Token;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "tokens":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ahocorasick/trie/Token;>;"
    invoke-virtual {p0, p1}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v1

    .line 49
    .local v1, "collectedEmits":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ahocorasick/trie/Emit;>;"
    const/4 v2, -0x1

    .line 50
    .local v2, "lastCollectedPosition":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ahocorasick/trie/Emit;

    .line 51
    .local v4, "emit":Lorg/ahocorasick/trie/Emit;
    invoke-virtual {v4}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v6

    sub-int/2addr v6, v2

    if-le v6, v5, :cond_0

    .line 52
    invoke-direct {p0, v4, p1, v2}, Lorg/ahocorasick/trie/Trie;->createFragment(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;I)Lorg/ahocorasick/trie/Token;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-direct {p0, v4, p1}, Lorg/ahocorasick/trie/Trie;->createMatch(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;)Lorg/ahocorasick/trie/Token;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v4}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v2

    .line 56
    .end local v4    # "emit":Lorg/ahocorasick/trie/Emit;
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v3, v5, :cond_2

    .line 58
    const/4 v3, 0x0

    invoke-direct {p0, v3, p1, v2}, Lorg/ahocorasick/trie/Trie;->createFragment(Lorg/ahocorasick/trie/Emit;Ljava/lang/String;I)Lorg/ahocorasick/trie/Token;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_2
    return-object v0
.end method
