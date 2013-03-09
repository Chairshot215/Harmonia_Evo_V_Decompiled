.class Lcom/google/common/collect/AbstractMultiset$ElementSet;
.super Ljava/util/AbstractSet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    .local p0, this:Lcom/google/common/collect/AbstractMultiset$ElementSet;,"Lcom/google/common/collect/AbstractMultiset<TE;>.ElementSet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultiset;Lcom/google/common/collect/AbstractMultiset$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    .local p0, this:Lcom/google/common/collect/AbstractMultiset$ElementSet;,"Lcom/google/common/collect/AbstractMultiset<TE;>.ElementSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultiset$ElementSet;-><init>(Lcom/google/common/collect/AbstractMultiset;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, this:Lcom/google/common/collect/AbstractMultiset$ElementSet;,"Lcom/google/common/collect/AbstractMultiset<TE;>.ElementSet;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    .local v0, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;-><init>(Lcom/google/common/collect/AbstractMultiset$ElementSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 240
    .local p0, this:Lcom/google/common/collect/AbstractMultiset$ElementSet;,"Lcom/google/common/collect/AbstractMultiset<TE;>.ElementSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
