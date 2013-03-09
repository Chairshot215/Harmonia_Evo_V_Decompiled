.class Lcom/android/updater/ui/ConfirmActivity$PositiveThread;
.super Ljava/lang/Thread;
.source "ConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/ConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositiveThread"
.end annotation


# instance fields
.field mGetIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/updater/ui/ConfirmActivity;


# direct methods
.method public constructor <init>(Lcom/android/updater/ui/ConfirmActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->mGetIntent:Landroid/content/Intent;

    .line 251
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 256
    :try_start_0
    iget-object v6, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->mGetIntent:Landroid/content/Intent;

    const-string v7, "from_notify"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 257
    .local v2, isFromNotify:Z
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v6

    if-eq v6, v4, :cond_0

    if-nez v2, :cond_0

    .line 258
    iget-object v6, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    #getter for: Lcom/android/updater/ui/ConfirmActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/updater/ui/ConfirmActivity;->access$200(Lcom/android/updater/ui/ConfirmActivity;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "backup_uri_string"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, strUri:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->isDownloadPathInsideIntranet(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    invoke-static {v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->isOutIntranetError(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    iget-object v6, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    invoke-static {v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->displayOutIntranetErrorMessage(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v2           #isFromNotify:Z
    .end local v3           #strUri:Ljava/lang/String;
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "UpdaterAPK | ConfirmActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PositiveThread run() error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, alertIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v6, "com.android.updater.DOWNLOAD_CHECK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v0       #alertIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->mGetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 273
    const-string v6, "wifiOnly"

    iget-object v7, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    #getter for: Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I
    invoke-static {v7}, Lcom/android/updater/ui/ConfirmActivity;->access$000(Lcom/android/updater/ui/ConfirmActivity;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    :goto_1
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Lcom/android/updater/ui/ConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 275
    iget-object v4, p0, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/ConfirmActivity;

    invoke-virtual {v4, v0}, Lcom/android/updater/ui/ConfirmActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 273
    goto :goto_1
.end method
