.class Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;
.super Lcom/google/common/collect/ForwardingSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

.field final synthetic val$delegate:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1290
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->this$0:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    iput-object p2, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->val$delegate:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1290
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1290
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->val$delegate:Ljava/util/Set;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1296
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->this$0:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method
