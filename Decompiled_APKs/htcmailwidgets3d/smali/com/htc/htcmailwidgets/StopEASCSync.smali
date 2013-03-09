.class public Lcom/htc/htcmailwidgets/StopEASCSync;
.super Ljava/lang/Object;
.source "StopEASCSync.java"


# static fields
.field private static DELAY_ON_RESUME_EASC_SYNC:I

.field private static final localLOGV:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEASExist:Z

.field private mGSvcNeedsResume:Z

.field private mPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0xbb8

    sput v0, Lcom/htc/htcmailwidgets/StopEASCSync;->DELAY_ON_RESUME_EASC_SYNC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "StopEASCSync"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->LOG_TAG:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mPause:Z

    .line 14
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mEASExist:Z

    .line 15
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mGSvcNeedsResume:Z

    .line 20
    iput-object p1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public forceResume()V
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mPause:Z

    if-nez v1, :cond_0

    .line 47
    monitor-exit p0

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mPause:Z

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.resumeSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.htc.htcmailwidgets"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "com.htc.eas.extra.delayTime"

    sget v2, Lcom/htc/htcmailwidgets/StopEASCSync;->DELAY_ON_RESUME_EASC_SYNC:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    monitor-exit p0

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceStop()V
    .locals 3

    .prologue
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mPause:Z

    if-eqz v1, :cond_0

    .line 28
    monitor-exit p0

    .line 41
    :goto_0
    return-void

    .line 30
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mPause:Z

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.pauseSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.htc.htcmailwidgets"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/htc/htcmailwidgets/StopEASCSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    monitor-exit p0

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
