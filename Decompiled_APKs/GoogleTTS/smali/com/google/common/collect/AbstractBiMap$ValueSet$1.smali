.class Lcom/google/common/collect/AbstractBiMap$ValueSet$1;
.super Ljava/lang/Object;
.source "AbstractBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractBiMap$ValueSet;->iterator()Ljava/util/Iterator;
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
.field final synthetic this$1:Lcom/google/common/collect/AbstractBiMap$ValueSet;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field valueToRemove:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap$ValueSet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$ValueSet$1;,"Lcom/google/common/collect/AbstractBiMap$ValueSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$ValueSet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 235
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$ValueSet$1;,"Lcom/google/common/collect/AbstractBiMap$ValueSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

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
    .line 239
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$ValueSet$1;,"Lcom/google/common/collect/AbstractBiMap$ValueSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->valueToRemove:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 243
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$ValueSet$1;,"Lcom/google/common/collect/AbstractBiMap$ValueSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 244
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$ValueSet;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;->valueToRemove:Ljava/lang/Object;

    #calls: Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractBiMap;->access$400(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    .line 245
    return-void
.end method
