.class public Lcom/htc/android/mail/eassvc/core/EASRequest;
.super Ljava/lang/Object;
.source "EASRequest.java"


# instance fields
.field public accountId:J

.field public blockCondition:Landroid/os/ConditionVariable;

.field public command:I

.field public exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

.field public parameter:Landroid/os/Bundle;

.field public priority:I

.field public reqTime:J

.field public requestController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

.field public returnObject:Ljava/lang/Object;

.field public syncSourceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 22
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->reqTime:J

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 25
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 26
    iget v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 27
    iget v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 28
    iget-wide v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 29
    iget v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 30
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 31
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 32
    iget-wide v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->reqTime:J

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->reqTime:J

    .line 33
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    .line 34
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->requestController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->requestController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", parameter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
