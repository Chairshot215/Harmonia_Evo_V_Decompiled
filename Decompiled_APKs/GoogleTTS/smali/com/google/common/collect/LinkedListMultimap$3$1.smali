.class Lcom/google/common/collect/LinkedListMultimap$3$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$3;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$3;

.field final synthetic val$nodes:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$3;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 732
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$3$1;,"Lcom/google/common/collect/LinkedListMultimap$3.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$3;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->val$nodes:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 734
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$3$1;,"Lcom/google/common/collect/LinkedListMultimap$3.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->val$nodes:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$3$1;,"Lcom/google/common/collect/LinkedListMultimap$3.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->val$nodes:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 740
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$3$1;,"Lcom/google/common/collect/LinkedListMultimap$3.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$3$1;->val$nodes:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 741
    return-void
.end method
