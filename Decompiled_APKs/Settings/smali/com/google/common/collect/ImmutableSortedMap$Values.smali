.class Lcom/google/common/collect/ImmutableSortedMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final map:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$Values;,"Lcom/google/common/collect/ImmutableSortedMap$Values<TV;>;"
    .local p1, map:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<*TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 540
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    .line 541
    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/ImmutableSortedMap$Values;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 559
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$Values;,"Lcom/google/common/collect/ImmutableSortedMap$Values<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$Values;,"Lcom/google/common/collect/ImmutableSortedMap$Values<TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Values$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Values$1;-><init>(Lcom/google/common/collect/ImmutableSortedMap$Values;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 535
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$Values;,"Lcom/google/common/collect/ImmutableSortedMap$Values<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Values;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 544
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$Values;,"Lcom/google/common/collect/ImmutableSortedMap$Values<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 563
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$Values;,"Lcom/google/common/collect/ImmutableSortedMap$Values<TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
