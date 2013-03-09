.class Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets$SetMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multisets$SetMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->this$0:Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>.ElementSet;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;->this$0:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    return-object v0
.end method
