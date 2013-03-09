.class public Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
.super Landroid/os/AsyncTask;
.source "SystemUpdateVerifierTask.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/os/RecoverySystem$ProgressListener;"
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mShowProgress:Z

.field private final mStartedRealtime:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/content/SharedPreferences;Z)V
    .locals 4
    .parameter "context"
    .parameter "file"
    .parameter "sharedPrefs"
    .parameter "showProgress"

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mFile:Ljava/io/File;

    .line 58
    iput-object p3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mStartedRealtime:J

    .line 60
    iput-boolean p4, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mShowProgress:Z

    .line 61
    iput-boolean v3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mCancelled:Z

    .line 63
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "SystemUpdateVerifierTask"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 66
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 67
    return-void
.end method

.method private getNotification(I)Landroid/app/Notification;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080081

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const v5, 0x7f08002d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v5, 0x64

    if-gez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, p1, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 93
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 95
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 96
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "UpdateVerifier"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 98
    .local v2, wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 111
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SystemUpdateVerifierTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 105
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 108
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mCancelled:Z

    .line 159
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 162
    :cond_0
    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 154
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->publishProgress([Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    .local v0, percent:I
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mShowProgress:Z

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->getNotification(I)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "verify_progress"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
