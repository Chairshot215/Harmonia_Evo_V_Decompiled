.class Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;
.super Landroid/os/Handler;
.source "CotaProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/CotaProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshDownloadProgressHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/CotaProgressActivity;


# direct methods
.method private constructor <init>(Lcom/android/updater/ui/CotaProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/ui/CotaProgressActivity;Lcom/android/updater/ui/CotaProgressActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;-><init>(Lcom/android/updater/ui/CotaProgressActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const v11, 0x7f060008

    const v10, 0x7f060006

    const/4 v5, -0x1

    const v9, 0x7f060056

    .line 253
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mObject:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$300(Lcom/android/updater/ui/CotaProgressActivity;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 254
    :try_start_0
    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/android/updater/ui/CotaProgressActivity;->access$400(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    .line 255
    const-string v5, "UpdaterAPK | CotaProgressActivity"

    const-string v7, "In Hander: No download record!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_0
    return-void

    .line 260
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/android/updater/ui/CotaProgressActivity;->access$400(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 261
    .local v2, nCurStatus:I
    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #setter for: Lcom/android/updater/ui/CotaProgressActivity;->mLastStatus:I
    invoke-static {v7, v2}, Lcom/android/updater/ui/CotaProgressActivity;->access$602(Lcom/android/updater/ui/CotaProgressActivity;I)I

    .line 262
    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/android/updater/ui/CotaProgressActivity;->access$400(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 263
    .local v3, nTotal:I
    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/android/updater/ui/CotaProgressActivity;->access$400(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 268
    .local v1, nCur:I
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mLastStatus:I
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$600(Lcom/android/updater/ui/CotaProgressActivity;)I

    move-result v6

    invoke-static {v6}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-virtual {v6}, Lcom/android/updater/ui/CotaProgressActivity;->finish()V

    .line 275
    :cond_1
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$700(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcProgressBar;->setMax(I)V

    .line 276
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$700(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 277
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$700(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/widget/HtcProgressBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    .line 286
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mWifiDownload:Z
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$800(Lcom/android/updater/ui/CotaProgressActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-static {v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->isWifiOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-static {v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 288
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$900(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-virtual {v7, v9}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 291
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1000(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f060085

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 324
    :goto_1
    const-string v4, ""

    .line 326
    .local v4, strMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mPromptSize:I
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1500(Lcom/android/updater/ui/CotaProgressActivity;)I

    move-result v6

    if-lez v6, :cond_2

    .line 327
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mPromptSize:I
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1500(Lcom/android/updater/ui/CotaProgressActivity;)I

    move-result v3

    .line 328
    if-le v1, v3, :cond_2

    .line 329
    move v1, v3

    .line 333
    :cond_2
    if-lez v3, :cond_3

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v7, v3

    int-to-long v9, v1

    invoke-static {v7, v8, v9, v10}, Lcom/android/updater/util/UpdaterUtil;->getPercentageText(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    :cond_3
    const/high16 v6, 0x10

    if-lt v3, v6, :cond_c

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #calls: Lcom/android/updater/ui/CotaProgressActivity;->getMBsize(I)Ljava/lang/String;
    invoke-static {v7, v1}, Lcom/android/updater/ui/CotaProgressActivity;->access$1600(Lcom/android/updater/ui/CotaProgressActivity;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    if-gtz v3, :cond_4

    move v3, v5

    .end local v3           #nTotal:I
    :cond_4
    #calls: Lcom/android/updater/ui/CotaProgressActivity;->getMBsize(I)Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/android/updater/ui/CotaProgressActivity;->access$1600(Lcom/android/updater/ui/CotaProgressActivity;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    :goto_2
    iget-object v5, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mProgressMessage:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/updater/ui/CotaProgressActivity;->access$1800(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 264
    .end local v1           #nCur:I
    .end local v2           #nCurStatus:I
    .end local v4           #strMsg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "UpdaterAPK | CotaProgressActivity"

    const-string v7, "RefreshDownloadProgressHandler failed!"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    monitor-exit v6

    goto/16 :goto_0

    .line 268
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 293
    .restart local v1       #nCur:I
    .restart local v2       #nCurStatus:I
    .restart local v3       #nTotal:I
    :cond_5
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1000(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f06004a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 296
    :cond_6
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mWifiDownload:Z
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$800(Lcom/android/updater/ui/CotaProgressActivity;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-static {v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->isRoaming(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 298
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-static {v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->isWifiOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-static {v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 299
    :cond_7
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1100(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-virtual {v7, v10}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1000(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 303
    :cond_8
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1200(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-virtual {v7, v9}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 306
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1000(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f060086

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 308
    :cond_9
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1000(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f060079

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 313
    :cond_a
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mWifiDownload:Z
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$800(Lcom/android/updater/ui/CotaProgressActivity;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-static {v6}, Lcom/android/updater/util/UpdaterNetworkCheck;->isAnyNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 314
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1300(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-virtual {v7, v9}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1000(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f060078

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 318
    :cond_b
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1400(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    invoke-virtual {v7, v10}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v6, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #getter for: Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/updater/ui/CotaProgressActivity;->access$1000(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 341
    .restart local v4       #strMsg:Ljava/lang/String;
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    #calls: Lcom/android/updater/ui/CotaProgressActivity;->getKBsize(I)Ljava/lang/String;
    invoke-static {v7, v1}, Lcom/android/updater/ui/CotaProgressActivity;->access$1700(Lcom/android/updater/ui/CotaProgressActivity;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;->this$0:Lcom/android/updater/ui/CotaProgressActivity;

    if-gtz v3, :cond_d

    :goto_3
    #calls: Lcom/android/updater/ui/CotaProgressActivity;->getKBsize(I)Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/android/updater/ui/CotaProgressActivity;->access$1700(Lcom/android/updater/ui/CotaProgressActivity;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_d
    move v5, v3

    goto :goto_3
.end method
