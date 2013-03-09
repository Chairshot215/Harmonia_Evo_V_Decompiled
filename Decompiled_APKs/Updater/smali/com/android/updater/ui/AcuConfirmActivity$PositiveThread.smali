.class Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;
.super Ljava/lang/Thread;
.source "AcuConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/AcuConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositiveThread"
.end annotation


# instance fields
.field mGetIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/updater/ui/AcuConfirmActivity;


# direct methods
.method public constructor <init>(Lcom/android/updater/ui/AcuConfirmActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->mGetIntent:Landroid/content/Intent;

    .line 197
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 204
    :try_start_0
    iget-object v5, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->mGetIntent:Landroid/content/Intent;

    const-string v6, "from_notify"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 205
    .local v3, isFromNotify:Z
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v5

    if-eq v5, v8, :cond_1

    if-nez v3, :cond_1

    .line 206
    iget-object v5, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    iget-object v5, v5, Lcom/android/updater/ui/AcuConfirmActivity;->mIntent:Landroid/content/Intent;

    const-string v6, "apkDetailList"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    .local v4, tempString:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/updater/util/UpdaterNetworkCheck;->isDownloadPathInsideIntranet(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    iget-object v5, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-static {v5}, Lcom/android/updater/util/UpdaterNetworkCheck;->isOutIntranetError(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    iget-object v5, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-static {v5}, Lcom/android/updater/util/UpdaterNetworkCheck;->displayOutIntranetErrorMessage(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isFromNotify:Z
    .end local v4           #tempString:Ljava/lang/String;
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "UpdaterAPK | AcuConfirmActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PositiveThread run() errir! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, alertIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->mGetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 224
    iget-object v5, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    #calls: Lcom/android/updater/ui/AcuConfirmActivity;->setDownloadRestriction(Landroid/content/Intent;Ljava/lang/Boolean;)Landroid/content/Intent;
    invoke-static {v5, v0, v6}, Lcom/android/updater/ui/AcuConfirmActivity;->access$200(Lcom/android/updater/ui/AcuConfirmActivity;Landroid/content/Intent;Ljava/lang/Boolean;)Landroid/content/Intent;

    move-result-object v0

    .line 225
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-wide/16 v5, 0x12c

    :try_start_1
    invoke-static {v5, v6}, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :goto_1
    iget-object v5, p0, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->this$0:Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-virtual {v5, v0}, Lcom/android/updater/ui/AcuConfirmActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
    :catch_1
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "UpdaterAPK | AcuConfirmActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PositiveThread sleep() error! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
