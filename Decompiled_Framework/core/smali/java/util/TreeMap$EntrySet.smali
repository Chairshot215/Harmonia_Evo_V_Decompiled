.class Ljava/util/TreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeMap$EntrySet$1;

    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p0, v0}, Ljava/util/TreeMap$EntrySet$1;-><init>(Ljava/util/TreeMap$EntrySet;Ljava/util/TreeMap$Node;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->size:I

    return v0
.end method
