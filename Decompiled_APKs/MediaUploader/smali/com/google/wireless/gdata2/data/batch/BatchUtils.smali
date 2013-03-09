.class public Lcom/google/wireless/gdata2/data/batch/BatchUtils;
.super Ljava/lang/Object;
.source "BatchUtils.java"


# static fields
.field public static final OPERATION_DELETE:Ljava/lang/String; = "delete"

.field public static final OPERATION_INSERT:Ljava/lang/String; = "insert"

.field public static final OPERATION_QUERY:Ljava/lang/String; = "query"

.field public static final OPERATION_UPDATE:Ljava/lang/String; = "update"


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
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBatchInterrupted(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

    goto :goto_0
.end method

.method public static getBatchOperation(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->operation:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBatchStatus(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchStatus;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    goto :goto_0
.end method

.method private static getOrCreateBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchInfo;
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getBatchInfo()Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/batch/BatchInfo;-><init>()V

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/data/Entry;->setBatchInfo(Lcom/google/wireless/gdata2/data/batch/BatchInfo;)V

    .line 90
    :cond_0
    return-object v0
.end method

.method public static setBatchId(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

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
    .parameter
    .parameter

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
    .parameter
    .parameter

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
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getOrCreateBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/batch/BatchInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    .line 66
    return-void
.end method
