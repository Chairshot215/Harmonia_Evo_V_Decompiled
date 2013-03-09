.class Lcom/google/common/collect/ConcurrentHashMultiset$1;
.super Lcom/google/common/collect/ForwardingSet;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->createElementSet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

.field final synthetic val$delegate:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 348
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$1;,"Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->val$delegate:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$1;,"Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 348
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$1;,"Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->delegate()Ljava/util/Set;

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
    .line 350
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$1;,"Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->val$delegate:Ljava/util/Set;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$1;,"Lcom/google/common/collect/ConcurrentHashMultiset.1;"
    const/4 v1, 0x0

    .line 354
    :try_start_0
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->val$delegate:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 358
    :goto_0
    return v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 357
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method
