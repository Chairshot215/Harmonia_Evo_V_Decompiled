.class public Lcom/android/mms/MmsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "MmsBackupAgent.java"


# instance fields
.field mMmsShareprefFileList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.mms_preferences"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_has_set_default_values"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/MmsBackupAgent;->mMmsShareprefFileList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 14
    const-string v0, "mms_shared_prefs"

    new-instance v1, Landroid/app/backup/SharedPreferencesBackupHelper;

    iget-object v2, p0, Lcom/android/mms/MmsBackupAgent;->mMmsShareprefFileList:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/MmsBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 15
    return-void
.end method
