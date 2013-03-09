.class Lcom/google/android/gsf/login/SyncIntroActivity$2;
.super Ljava/lang/Object;
.source "SyncIntroActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/SyncIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/SyncIntroActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/SyncIntroActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/gsf/login/SyncIntroActivity$2;->this$0:Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 243
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "GLSActivity"

    const-string v1, "Waiting for restore to finish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 249
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "GLSActivity"

    const-string v1, "Restore Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity$2;->this$0:Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity$2;->this$0:Lcom/google/android/gsf/login/SyncIntroActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method
