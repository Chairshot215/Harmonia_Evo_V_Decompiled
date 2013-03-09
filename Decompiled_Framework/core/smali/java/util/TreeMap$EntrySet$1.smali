.class Ljava/util/TreeMap$EntrySet$1;
.super Ljava/util/TreeMap$MapIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/TreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<TK;TV;>.MapIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$EntrySet;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$EntrySet;Ljava/util/TreeMap$Node;)V
    .locals 1

    iput-object p1, p0, Ljava/util/TreeMap$EntrySet$1;->this$1:Ljava/util/TreeMap$EntrySet;

    iget-object v0, p1, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0, v0, p2}, Ljava/util/TreeMap$MapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySet$1;->stepForward()Ljava/util/TreeMap$Node;

    move-result-object v0

    return-object v0
.end method
