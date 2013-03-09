.class Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final elements:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;)V
    .locals 1
    .parameter

    .prologue
    .line 293
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;,"Lcom/google/common/collect/Multisets$SetMultiset$EntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;->this$0:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->elements:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 297
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;,"Lcom/google/common/collect/Multisets$SetMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->elements:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;,"Lcom/google/common/collect/Multisets$SetMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->elements:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;,"Lcom/google/common/collect/Multisets$SetMultiset$EntrySet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 303
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;,"Lcom/google/common/collect/Multisets$SetMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->elements:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 304
    return-void
.end method
