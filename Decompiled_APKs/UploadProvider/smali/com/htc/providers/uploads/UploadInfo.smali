.class public Lcom/htc/providers/uploads/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UploadInfo"


# instance fields
.field public batch_id:I

.field public volatile canCancel:Z

.field public control:I

.field public currentBytes:I

.field public id:I

.field public lastMod:J

.field public numFailed:I

.field public respStatus:Ljava/lang/String;

.field public status:I

.field public statusChangeTime:J

.field public totalBytes:I


# direct methods
.method public constructor <init>(IIIIJJIILjava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "batch_id"
    .parameter "status"
    .parameter "numFailed"
    .parameter "statusChangeTime"
    .parameter "lastMod"
    .parameter "totalBytes"
    .parameter "currentBytes"
    .parameter "respStatus"
    .parameter "control"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadInfo;->control:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/providers/uploads/UploadInfo;->canCancel:Z

    .line 42
    iput p1, p0, Lcom/htc/providers/uploads/UploadInfo;->id:I

    .line 43
    iput p2, p0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    .line 44
    iput p3, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 45
    iput p4, p0, Lcom/htc/providers/uploads/UploadInfo;->numFailed:I

    .line 46
    iput-wide p5, p0, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    .line 47
    iput-wide p7, p0, Lcom/htc/providers/uploads/UploadInfo;->lastMod:J

    .line 48
    iput p9, p0, Lcom/htc/providers/uploads/UploadInfo;->totalBytes:I

    .line 49
    iput p10, p0, Lcom/htc/providers/uploads/UploadInfo;->currentBytes:I

    .line 50
    iput-object p11, p0, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    .line 51
    iput p12, p0, Lcom/htc/providers/uploads/UploadInfo;->control:I

    .line 53
    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusCompleted(I)Z

    move-result v0

    return v0
.end method

.method public isReadyToRestart(J)Z
    .locals 3
    .parameter "now"

    .prologue
    const/4 v0, 0x1

    .line 104
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v2, 0xbe

    if-eq v1, v2, :cond_0

    .line 112
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v2, 0xc1

    if-ne v1, v2, :cond_2

    .line 113
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->numFailed:I

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadInfo;->restartTime()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyToStart(J)Z
    .locals 3
    .parameter "now"

    .prologue
    const/4 v0, 0x1

    .line 70
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v2, 0xbe

    if-eq v1, v2, :cond_0

    .line 78
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_0

    .line 84
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v2, 0xc1

    if-ne v1, v2, :cond_2

    .line 85
    iget v1, p0, Lcom/htc/providers/uploads/UploadInfo;->numFailed:I

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadInfo;->restartTime()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restartTime()J
    .locals 4

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadInfo;->lastMod:J

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/providers/uploads/UploadInfo;->numFailed:I

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x7530

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
