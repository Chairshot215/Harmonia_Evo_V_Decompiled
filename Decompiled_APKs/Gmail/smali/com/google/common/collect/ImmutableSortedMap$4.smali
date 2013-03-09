.class Lcom/google/common/collect/ImmutableSortedMap$4;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap;->keyList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 716
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$4;,"Lcom/google/common/collect/ImmutableSortedMap.4;"
    .local p2, x0:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$4;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 716
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$4;,"Lcom/google/common/collect/ImmutableSortedMap.4;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$4;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$4;,"Lcom/google/common/collect/ImmutableSortedMap.4;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
