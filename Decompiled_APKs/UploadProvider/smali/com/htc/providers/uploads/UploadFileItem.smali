.class public Lcom/htc/providers/uploads/UploadFileItem;
.super Ljava/lang/Object;
.source "UploadFileItem.java"

# interfaces
.implements Lcom/htc/providers/uploads/UploadItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadFileItem"


# instance fields
.field private fileUri:Landroid/net/Uri;

.field private id:I

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

.field private mimeType:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private respMesg:Ljava/lang/String;

.field private status:I

.field private statusChangeTime:J

.field private succNum:I

.field private title:Ljava/lang/String;

.field private totalCurrBytes:D

.field private totalFileNum:I

.field private totalTotalBytes:D


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 3
    .parameter "bId"
    .parameter "title"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "insertTime"
    .parameter "respMesg"
    .parameter "statusChangeTime"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalFileNum:I

    .line 24
    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalCurrBytes:D

    .line 26
    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalTotalBytes:D

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->insertTime:J

    .line 32
    iput v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->succNum:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->respMesg:Ljava/lang/String;

    .line 47
    iput p1, p0, Lcom/htc/providers/uploads/UploadFileItem;->id:I

    .line 48
    iput-object p2, p0, Lcom/htc/providers/uploads/UploadFileItem;->title:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/htc/providers/uploads/UploadFileItem;->fileUri:Landroid/net/Uri;

    .line 50
    iput-wide p5, p0, Lcom/htc/providers/uploads/UploadFileItem;->insertTime:J

    .line 51
    iput-object p7, p0, Lcom/htc/providers/uploads/UploadFileItem;->respMesg:Ljava/lang/String;

    .line 52
    iput-wide p8, p0, Lcom/htc/providers/uploads/UploadFileItem;->statusChangeTime:J

    .line 53
    iput-object p4, p0, Lcom/htc/providers/uploads/UploadFileItem;->mimeType:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->idList:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;JIJ)V
    .locals 3
    .parameter "title"
    .parameter "uri"
    .parameter "total_byte"
    .parameter "status"
    .parameter "statusChangeTime"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalFileNum:I

    .line 24
    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalCurrBytes:D

    .line 26
    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalTotalBytes:D

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->insertTime:J

    .line 32
    iput v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->succNum:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->respMesg:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadFileItem;->title:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/htc/providers/uploads/UploadFileItem;->fileUri:Landroid/net/Uri;

    .line 61
    iput p5, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    .line 62
    long-to-double v0, p3

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalTotalBytes:D

    .line 63
    iput-wide p6, p0, Lcom/htc/providers/uploads/UploadFileItem;->statusChangeTime:J

    .line 64
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
    .line 67
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalCurrBytes:D

    int-to-double v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalCurrBytes:D

    .line 68
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalTotalBytes:D

    int-to-double v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalTotalBytes:D

    .line 70
    iput p4, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    .line 72
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->idList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {p4}, Lcom/htc/opensense/upload/Uploads;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->succNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->succNum:I

    .line 77
    :cond_0
    iget v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalFileNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalFileNum:I

    .line 78
    return-void
.end method

.method public getBatchId()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentByte()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalCurrBytes:D

    return-wide v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->id:I

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
    .line 132
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->idList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertDateTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/htc/providers/uploads/UploadFileItem;->insertTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getInsertTime()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    .local v0, ca:Ljava/util/Calendar;
    iget-wide v1, p0, Lcom/htc/providers/uploads/UploadFileItem;->insertTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRespCode()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public getRespMesg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->respMesg:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    const/16 v0, 0xc8

    .line 136
    iget v1, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const/16 v0, 0xc0

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    iget v1, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    :cond_2
    const/16 v0, 0xbe

    goto :goto_0

    .line 141
    :cond_3
    iget v1, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    const/16 v0, 0x1eb

    goto :goto_0

    .line 143
    :cond_4
    iget v1, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    if-eq v1, v0, :cond_0

    .line 146
    iget v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    goto :goto_0
.end method

.method public getStatusChangeTime()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->statusChangeTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalByte()D
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalTotalBytes:D

    return-wide v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalFileNum:I

    return v0
.end method

.method public printAll()V
    .locals 4

    .prologue
    .line 155
    const-string v0, "UploadFileItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "UploadFileItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalFileNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "UploadFileItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total curr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalCurrBytes:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "UploadFileItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->totalTotalBytes:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v0, "UploadFileItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "succ num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadFileItem;->succNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "UploadFileItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadFileItem;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/providers/uploads/UploadFileItem;->status:I

    .line 151
    return-void
.end method
