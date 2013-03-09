.class public Lcom/htc/android/worldclock/WorldClockBREventReceiver;
.super Lcom/htc/util/backup/BackupRestoreReceiver;
.source "WorldClockBREventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/util/backup/BackupRestoreReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 12
    const-string v0, "com.htc.android.worldclock.WorldClockBRAgentService"

    return-object v0
.end method
