.class public Lorg/ahocorasick/interval/IntervalTree;
.super Ljava/lang/Object;
.source "IntervalTree.java"


# instance fields
.field private rootNode:Lorg/ahocorasick/interval/IntervalNode;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)V"
        }
    .end annotation

    .line 12
    .local p1, "intervals":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/interval/Intervalable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    .line 13
    new-instance v0, Lorg/ahocorasick/interval/IntervalNode;

    invoke-direct {v0, p1}, Lorg/ahocorasick/interval/IntervalNode;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    .line 14
    return-void
.end method


# virtual methods
.method public findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .locals 1
    .param p1, "interval"    # Lorg/ahocorasick/interval/Intervalable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {v0, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOverlaps(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    .line 19
    .local p1, "intervals":Ljava/util/List;, "Ljava/util/List<Lorg/ahocorasick/interval/Intervalable;>;"
    new-instance v0, Lorg/ahocorasick/interval/IntervalableComparatorBySize;

    invoke-direct {v0}, Lorg/ahocorasick/interval/IntervalableComparatorBySize;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 23
    .local v0, "removeIntervals":Ljava/util/Set;, "Ljava/util/Set<Lorg/ahocorasick/interval/Intervalable;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/interval/Intervalable;

    .line 25
    .local v2, "interval":Lorg/ahocorasick/interval/Intervalable;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, v2}, Lorg/ahocorasick/interval/IntervalTree;->findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    .end local v2    # "interval":Lorg/ahocorasick/interval/Intervalable;
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/interval/Intervalable;

    .line 35
    .local v2, "removeInterval":Lorg/ahocorasick/interval/Intervalable;
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    .end local v2    # "removeInterval":Lorg/ahocorasick/interval/Intervalable;
    goto :goto_1

    .line 39
    :cond_2
    new-instance v1, Lorg/ahocorasick/interval/IntervalableComparatorByPosition;

    invoke-direct {v1}, Lorg/ahocorasick/interval/IntervalableComparatorByPosition;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    return-object p1
.end method
