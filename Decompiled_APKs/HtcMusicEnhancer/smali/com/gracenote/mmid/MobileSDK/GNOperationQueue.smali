.class Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
.super Ljava/lang/Object;
.source "GNOperationQueue.java"


# static fields
.field static final MAX_OPERATIONS:I = 0x3


# instance fields
.field config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field executing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gracenote/mmid/MobileSDK/GNOperation;",
            ">;"
        }
    .end annotation
.end field

.field waiting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gracenote/mmid/MobileSDK/GNOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 1
    .parameter "inConfig"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->waiting:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->executing:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->executing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isRegisterResultPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->waiting:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->executing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperation;->executeOperation()V

    goto :goto_0
.end method

.method removeFromQueue(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 36
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->executing:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 38
    .local v1, wasRemoved:Z
    if-eqz v1, :cond_1

    .line 40
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->waiting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->waiting:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gracenote/mmid/MobileSDK/GNOperation;

    .line 42
    .local v0, nextOp:Lcom/gracenote/mmid/MobileSDK/GNOperation;
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->executing:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v0}, Lcom/gracenote/mmid/MobileSDK/GNOperation;->executeOperation()V

    .line 49
    .end local v0           #nextOp:Lcom/gracenote/mmid/MobileSDK/GNOperation;
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->waiting:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 47
    const-string v2, "failed to remove operation from waiting queue"

    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method webservicesLoginFailed(Lcom/gracenote/mmid/MobileSDK/GNResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->webservicesLoginWorked()V

    .line 58
    return-void
.end method

.method webservicesLoginWorked()V
    .locals 3

    .prologue
    .line 63
    :goto_0
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->executing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 72
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->waiting:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->waiting:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gracenote/mmid/MobileSDK/GNOperation;

    .line 68
    .local v0, nextOp:Lcom/gracenote/mmid/MobileSDK/GNOperation;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->executing:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Lcom/gracenote/mmid/MobileSDK/GNOperation;->executeOperation()V

    goto :goto_0
.end method
