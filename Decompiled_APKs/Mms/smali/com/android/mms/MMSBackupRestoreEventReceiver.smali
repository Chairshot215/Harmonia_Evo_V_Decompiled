.class public Lcom/android/mms/MMSBackupRestoreEventReceiver;
.super Lcom/htc/util/backup/BackupRestoreReceiver;
.source "MMSBackupRestoreEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/util/backup/BackupRestoreReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, "com.android.mms.MMSBackupRestoreService"

    return-object v0
.end method
