.class Lcom/google/common/collect/ImmutableMultiset$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultiset;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field remaining:I

.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultiset;

.field final synthetic val$mapIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$1;,"Lcom/google/common/collect/ImmutableMultiset.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->this$0:Lcom/google/common/collect/ImmutableMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 181
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$1;,"Lcom/google/common/collect/ImmutableMultiset.1;"
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$1;,"Lcom/google/common/collect/ImmutableMultiset.1;"
    iget v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    .line 190
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;"
    :cond_0
    iget v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->remaining:I

    .line 191
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    return-object v1
.end method
