.class Lcom/google/common/collect/AbstractMultiset$ElementSet$1;
.super Ljava/lang/Object;
.source "AbstractMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMultiset$ElementSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMultiset$ElementSet;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultiset$ElementSet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    .local p0, this:Lcom/google/common/collect/AbstractMultiset$ElementSet$1;,"Lcom/google/common/collect/AbstractMultiset$ElementSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->this$1:Lcom/google/common/collect/AbstractMultiset$ElementSet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 229
    .local p0, this:Lcom/google/common/collect/AbstractMultiset$ElementSet$1;,"Lcom/google/common/collect/AbstractMultiset$ElementSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/google/common/collect/AbstractMultiset$ElementSet$1;,"Lcom/google/common/collect/AbstractMultiset$ElementSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 235
    .local p0, this:Lcom/google/common/collect/AbstractMultiset$ElementSet$1;,"Lcom/google/common/collect/AbstractMultiset$ElementSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$ElementSet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 236
    return-void
.end method
