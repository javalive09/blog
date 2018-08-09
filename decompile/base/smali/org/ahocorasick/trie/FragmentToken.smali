.class public Lorg/ahocorasick/trie/FragmentToken;
.super Lorg/ahocorasick/trie/Token;
.source "FragmentToken.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lorg/ahocorasick/trie/Token;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method


# virtual methods
.method public getEmit()Lorg/ahocorasick/trie/Emit;
    .locals 1

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMatch()Z
    .locals 1

    .line 11
    const/4 v0, 0x0

    return v0
.end method
