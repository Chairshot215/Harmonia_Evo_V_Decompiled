.class Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;
.super Ljava/lang/Thread;
.source "UpdaterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/UpdaterReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStatusCheckThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/updater/UpdaterReceiver;


# direct methods
.method public constructor <init>(Lcom/android/updater/UpdaterReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->this$0:Lcom/android/updater/UpdaterReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 514
    iput-object p2, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mIntent:Landroid/content/Intent;

    .line 515
    iput-object p3, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mContext:Landroid/content/Context;

    .line 516
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x4480

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, alertIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mIntent:Landroid/content/Intent;

    const-string v9, "download_sdcard"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 521
    .local v2, downloadStorage:Z
    iget-object v8, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mIntent:Landroid/content/Intent;

    const-string v9, "wifiOnly"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 522
    .local v7, wifiOnly:Z
    iget-object v8, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 525
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v2, :cond_3

    .line 526
    const/16 v8, 0xa

    invoke-static {v1, v8}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/updater/util/UpdaterUtil;->getSizeFromPrompt(Ljava/lang/String;)F

    move-result v5

    .line 527
    .local v5, sizeMB:F
    mul-float v8, v5, v13

    mul-float/2addr v8, v13

    float-to-long v3, v8

    .line 529
    .local v3, promptSize:J
    invoke-static {v3, v4, v11}, Lcom/android/updater/util/UpdaterUtil;->checkStorageStatus(JI)I

    move-result v6

    .line 531
    .local v6, storageStatus:I
    if-eqz v6, :cond_3

    .line 532
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v8, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .restart local v0       #alertIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 535
    const/4 v8, 0x3

    if-ne v6, v8, :cond_0

    .line 536
    const-string v8, "alert_type"

    const/16 v9, 0xd

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    :goto_0
    const/high16 v8, 0x1000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 550
    iget-object v8, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 567
    .end local v3           #promptSize:J
    .end local v5           #sizeMB:F
    .end local v6           #storageStatus:I
    :goto_1
    return-void

    .line 537
    .restart local v3       #promptSize:J
    .restart local v5       #sizeMB:F
    .restart local v6       #storageStatus:I
    :cond_0
    if-ne v6, v14, :cond_1

    .line 539
    const-string v8, "alert_type"

    const/16 v9, 0xa

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 542
    :cond_1
    if-ne v6, v11, :cond_2

    .line 543
    const-string v8, "alert_type"

    const/16 v9, 0x26

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 547
    :cond_2
    const-string v8, "alert_type"

    const/16 v9, 0xb

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 556
    .end local v3           #promptSize:J
    .end local v5           #sizeMB:F
    .end local v6           #storageStatus:I
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v8, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .restart local v0       #alertIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 558
    if-eqz v7, :cond_4

    .line 559
    const-string v8, "alert_type"

    invoke-virtual {v0, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    invoke-static {v1, v12, v14}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 565
    :goto_2
    const/high16 v8, 0x1000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    iget-object v8, p0, Lcom/android/updater/UpdaterReceiver$DownloadStatusCheckThread;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 562
    :cond_4
    const-string v8, "alert_type"

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    invoke-static {v1, v12, v10}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    goto :goto_2
.end method
