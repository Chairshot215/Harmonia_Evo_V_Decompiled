.class public Lcom/htc/providers/uploads/UploadBatchItem;
.super Ljava/lang/Object;
.source "UploadBatchItem.java"

# interfaces
.implements Lcom/htc/providers/uploads/UploadItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadBatchItem"


# instance fields
.field private batchStatus:I

.field private batch_id:I

.field private cancelledNum:I

.field private idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private insertTime:J

.field private maxStatus:I

.field private minStatus:I

.field private mode:I

.field private provider:Ljava/lang/String;

.field private runningNum:I

.field private succNum:I

.field private totalCurrBytes:D

.field private totalFileNum:I

.field private totalTotalBytes:D


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 3
    .parameter "bId"
    .parameter "insertTime"
    .parameter "provider"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalFileNum:I

    .line 22
    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalCurrBytes:D

    .line 24
    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalTotalBytes:D

    .line 26
    iput v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->succNum:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->insertTime:J

    .line 42
    iput v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->cancelledNum:I

    .line 44
    iput v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->runningNum:I

    .line 47
    iput p1, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batch_id:I

    .line 48
    iput-wide p2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->insertTime:J

    .line 49
    iput-object p4, p0, Lcom/htc/providers/uploads/UploadBatchItem;->provider:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->idList:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public addFile(IIII)V
    .locals 4
    .parameter "id"
    .parameter "currBytes"
    .parameter "totalBytes"
    .parameter "status"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalCurrBytes:D

    int-to-double v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalCurrBytes:D

    .line 55
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalTotalBytes:D

    int-to-double v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalTotalBytes:D

    .line 57
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->idList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {p4}, Lcom/htc/opensense/upload/Uploads;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->succNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->succNum:I

    .line 62
    :cond_0
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->minStatus:I

    if-ge p4, v0, :cond_1

    .line 63
    iput p4, p0, Lcom/htc/providers/uploads/UploadBatchItem;->minStatus:I

    .line 65
    :cond_1
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->maxStatus:I

    if-le p4, v0, :cond_2

    .line 66
    iput p4, p0, Lcom/htc/providers/uploads/UploadBatchItem;->maxStatus:I

    .line 68
    :cond_2
    invoke-static {p4}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->runningNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->runningNum:I

    .line 70
    :cond_3
    const/16 v0, 0x1ea

    if-ne p4, v0, :cond_4

    .line 71
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->cancelledNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->cancelledNum:I

    .line 72
    :cond_4
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalFileNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalFileNum:I

    .line 73
    return-void
.end method

.method public getBatchId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batch_id:I

    return v0
.end method

.method public getCurrentByte()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalCurrBytes:D

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x1

    return v0
.end method

.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->idList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertDateTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/htc/providers/uploads/UploadBatchItem;->insertTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getInsertTime()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, ca:Ljava/util/Calendar;
    iget-wide v1, p0, Lcom/htc/providers/uploads/UploadBatchItem;->insertTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 107
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRespCode()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public getRespMesg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 138
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->runningNum:I

    if-lez v0, :cond_1

    .line 139
    const/16 v0, 0xc0

    iput v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batchStatus:I

    .line 153
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batchStatus:I

    return v0

    .line 140
    :cond_1
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->minStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->maxStatus:I

    if-ne v0, v1, :cond_2

    .line 142
    iput v1, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batchStatus:I

    goto :goto_0

    .line 143
    :cond_2
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->maxStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    const/16 v0, 0xbe

    iput v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batchStatus:I

    goto :goto_0

    .line 145
    :cond_3
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->cancelledNum:I

    if-lez v0, :cond_4

    .line 146
    const/16 v0, 0x1ea

    iput v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batchStatus:I

    goto :goto_0

    .line 147
    :cond_4
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->maxStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->minStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->minStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->minStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const/16 v0, 0x1eb

    iput v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batchStatus:I

    goto :goto_0
.end method

.method public getStatusChangeTime()J
    .locals 2

    .prologue
    .line 127
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getStatusType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalByte()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalTotalBytes:D

    return-wide v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalFileNum:I

    return v0
.end method

.method public printAll()V
    .locals 4

    .prologue
    .line 162
    const-string v0, "UploadBatchItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batch Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batch_id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "UploadBatchItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalFileNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "UploadBatchItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total curr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalCurrBytes:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v0, "UploadBatchItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->totalTotalBytes:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v0, "UploadBatchItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "succ num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->succNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "UploadBatchItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v0, "UploadBatchItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batchStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batchStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public setFileUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 183
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 157
    iput p1, p0, Lcom/htc/providers/uploads/UploadBatchItem;->batchStatus:I

    .line 158
    return-void
.end method
