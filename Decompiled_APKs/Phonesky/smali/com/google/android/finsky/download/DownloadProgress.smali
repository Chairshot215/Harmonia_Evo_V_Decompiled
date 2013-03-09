.class public Lcom/google/android/finsky/download/DownloadProgress;
.super Ljava/lang/Object;
.source "DownloadProgress.java"


# instance fields
.field public final bytesCompleted:J

.field public final bytesTotal:J

.field public final statusCode:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 0
    .parameter "bytesCompleted"
    .parameter "bytesTotal"
    .parameter "statusId"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    .line 26
    iput-wide p3, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    .line 27
    iput p5, p0, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 37
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/google/android/finsky/download/DownloadProgress;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 38
    check-cast v0, Lcom/google/android/finsky/download/DownloadProgress;

    .line 39
    .local v0, other:Lcom/google/android/finsky/download/DownloadProgress;
    iget-wide v2, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iget-wide v4, v0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    iget-wide v4, v0, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    iget v3, v0, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 42
    .end local v0           #other:Lcom/google/android/finsky/download/DownloadProgress;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x2a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
