.class public Lcom/google/wireless/gdata2/data/batch/BatchInfo;
.super Ljava/lang/Object;
.source "BatchInfo.java"


# instance fields
.field id:Ljava/lang/String;

.field interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

.field operation:Ljava/lang/String;

.field status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    const-string v1, " op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->operation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    iget-object v1, p0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    if-eqz v1, :cond_0

    .line 23
    const-string v1, " sc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

    if-eqz v1, :cond_1

    .line 26
    const-string v1, " interrupted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/data/batch/BatchInfo;->interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
