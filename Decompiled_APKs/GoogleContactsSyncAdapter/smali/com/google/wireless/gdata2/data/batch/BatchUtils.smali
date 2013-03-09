.class public Lcom/google/wireless/gdata2/data/batch/BatchUtils;
.super Ljava/lang/Object;
.source "BatchUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getBatchId(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;
    .locals 2
    .parameter "entry"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    .line 28
    .local v0, info:Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBatchOperation(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;
    .locals 2
    .parameter "entry"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    .line 43
    .local v0, info:Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->operation:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getOrCreateBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    .locals 1
    .parameter "entry"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    .line 86
    .local v0, info:Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    .end local v0           #info:Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/batch/BatchInfo;-><init>()V

    .line 88
    .restart local v0       #info:Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/data/Entry;->setBatchInfo(Lcom/google/wireless/gdata2/data/batch/BatchInfo;)V

    .line 90
    :cond_0
    return-object v0
.end method

.method public static setBatchId(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V
    .locals 1
    .parameter "entry"
    .parameter "id"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getOrCreateBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static setBatchInterrupted(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;)V
    .locals 1
    .parameter "entry"
    .parameter "interrupted"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getOrCreateBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

    .line 82
    return-void
.end method

.method public static setBatchOperation(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V
    .locals 1
    .parameter "entry"
    .parameter "operation"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getOrCreateBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->operation:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static setBatchStatus(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchStatus;)V
    .locals 1
    .parameter "entry"
    .parameter "status"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getOrCreateBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    .line 66
    return-void
.end method
