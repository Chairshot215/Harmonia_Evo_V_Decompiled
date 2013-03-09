.class public Lcom/android/smith/LoggerController;
.super Landroid/app/Activity;
.source "LoggerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/smith/LoggerControllerReceiver$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/LoggerController$Loggers;
    }
.end annotation


# static fields
.field private static final MAX_DATA_LEN:I = 0x400

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.READ_LOGS"

.field public static final SMITH_CONTROLLER_CATEGORY:Ljava/lang/String; = "com.android.category.SMITH.CONTROLLER"

.field private static final TAG:Ljava/lang/String; = "SM:LoggerController"

.field private static final VERSION:Ljava/lang/String; = "1.6"


# instance fields
.field private mButtonApply:Landroid/widget/Button;

.field private mButtonRefresh:Landroid/widget/Button;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mLayoutLoggers:Landroid/widget/LinearLayout;

.field private mLoggers:[Lcom/android/smith/LoggerController$Loggers;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRandom:I

.field private mRandomHolder:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput-object v3, p0, Lcom/android/smith/LoggerController;->mLayoutLoggers:Landroid/widget/LinearLayout;

    .line 69
    iput-object v3, p0, Lcom/android/smith/LoggerController;->mButtonRefresh:Landroid/widget/Button;

    .line 70
    iput-object v3, p0, Lcom/android/smith/LoggerController;->mButtonApply:Landroid/widget/Button;

    .line 72
    iput-object v3, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 74
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/android/smith/LoggerController;->mRandomHolder:Ljava/util/Random;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/smith/LoggerController;->mRandom:I

    .line 242
    iput-object v3, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    .line 575
    new-instance v0, Lcom/android/smith/LoggerController$1;

    invoke-direct {v0, p0}, Lcom/android/smith/LoggerController$1;-><init>(Lcom/android/smith/LoggerController;)V

    iput-object v0, p0, Lcom/android/smith/LoggerController;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/smith/LoggerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->removeRandom()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/smith/LoggerController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/smith/LoggerController;->enableButtons(Z)V

    return-void
.end method

.method private applyLoggers()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 611
    const-string v1, "Setting Loggers"

    const-string v2, "If it took a long time, please press BACK key to cancel."

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/smith/LoggerController;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 613
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->createRandom()V

    .line 615
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 617
    const-string v0, "SM:LoggerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/android/smith/LoggerController$Loggers;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/android/smith/LoggerController$Loggers;->mQuerying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 615
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v1, v1, v6

    iget-boolean v1, v1, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    if-eq v0, v1, :cond_0

    .line 624
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/android/smith/LoggerController$Loggers;->mActionControl:Ljava/lang/String;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/android/smith/LoggerController$Loggers;->mPackage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/android/smith/LoggerController$Loggers;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Receiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v0, "com.android.category.SMITH.CONTROLLER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v1, "action"

    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    if-eqz v0, :cond_2

    const-string v0, "stop"

    :goto_2
    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const-string v0, "arg1"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    const-string v0, "arg2"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    const-string v0, "from"

    const-class v1, Lcom/android/smith/LoggerController;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v0, "key"

    iget v1, p0, Lcom/android/smith/LoggerController;->mRandom:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    const-string v0, "SM:LoggerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {p0, v7, v0}, Lcom/android/smith/LoggerController;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 627
    :cond_2
    const-string v0, "start"

    goto :goto_2

    .line 638
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public static clearAllRandom()V
    .locals 9

    .prologue
    .line 554
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.android.smith/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, list:[Ljava/lang/String;
    if-nez v5, :cond_1

    .line 573
    :cond_0
    return-void

    .line 559
    :cond_1
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 561
    .local v2, f:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 559
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 566
    .local v1, c:C
    const/16 v6, 0x2d

    if-eq v1, v6, :cond_4

    const/16 v6, 0x30

    if-lt v1, v6, :cond_2

    const/16 v6, 0x39

    if-gt v1, v6, :cond_2

    .line 568
    :cond_4
    const-string v6, "SM:LoggerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.android.smith/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private createRandom()V
    .locals 4

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->removeRandom()V

    .line 547
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mRandomHolder:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/smith/LoggerController;->mRandom:I

    .line 549
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/mkdir /data/data/com.android.smith/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/LoggerController;->mRandom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " && /system/bin/chmod 770 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/data/com.android.smith/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/LoggerController;->mRandom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    .line 550
    return-void
.end method

.method private enableButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mButtonRefresh:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    return-void
.end method

.method private enableViews(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/smith/LoggerController;->enableButtons(Z)V

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    return-void
.end method

.method private handleResultIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/16 v9, 0x400

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 421
    if-nez p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v6, v6

    if-eqz v6, :cond_0

    .line 431
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 433
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mActionResult:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 437
    :cond_2
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v6, v6

    if-eq v4, v6, :cond_0

    .line 440
    const-string v6, "result"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 441
    .local v5, result:Z
    const/4 v2, 0x1

    .line 443
    .local v2, done:Z
    const-string v6, "data"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_3

    .line 447
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 450
    :cond_3
    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    if-nez v6, :cond_6

    .line 454
    :cond_4
    const-string v6, "SM:LoggerController"

    const-string v7, "null views!"

    invoke-static {v6, v7}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #done:Z
    .end local v5           #result:Z
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 458
    .restart local v1       #data:Ljava/lang/String;
    .restart local v2       #done:Z
    .restart local v5       #result:Z
    :cond_6
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 460
    const-string v6, "query"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 462
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iput-boolean v5, v6, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    .line 463
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iput-boolean v8, v6, Lcom/android/smith/LoggerController$Loggers;->mQuerying:Z

    .line 464
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 465
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    if-nez v1, :cond_7

    const-string v1, ""

    .end local v1           #data:Ljava/lang/String;
    :cond_7
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v6, v6

    if-ge v3, v6, :cond_9

    .line 469
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v3

    iget-boolean v6, v6, Lcom/android/smith/LoggerController$Loggers;->mQuerying:Z

    if-nez v6, :cond_8

    move v6, v7

    :goto_3
    and-int/2addr v2, v6

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    move v6, v8

    .line 469
    goto :goto_3

    .line 472
    :cond_9
    if-eqz v2, :cond_a

    .line 474
    invoke-direct {p0, v7}, Lcom/android/smith/LoggerController;->enableViews(Z)V

    .line 503
    .end local v3           #i:I
    :cond_a
    :goto_4
    if-eqz v2, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->removeRandom()V

    .line 507
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_0

    .line 509
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 510
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 477
    .restart local v1       #data:Ljava/lang/String;
    :cond_b
    const-string v6, "start"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "stop"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 479
    :cond_c
    if-eqz v5, :cond_e

    .line 481
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v8, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    iput-boolean v8, v6, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    .line 482
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    if-nez v1, :cond_d

    const-string v1, ""

    .end local v1           #data:Ljava/lang/String;
    :cond_d
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :goto_5
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_6
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v6, v6

    if-ge v3, v6, :cond_10

    .line 491
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v3

    iget-boolean v6, v6, Lcom/android/smith/LoggerController$Loggers;->mQuerying:Z

    if-eqz v6, :cond_f

    .line 489
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 486
    .end local v3           #i:I
    .restart local v1       #data:Ljava/lang/String;
    :cond_e
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v8, v8, v4

    iget-boolean v8, v8, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 494
    .end local v1           #data:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_f
    iget-object v6, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v6

    and-int/2addr v2, v6

    goto :goto_7

    .line 497
    :cond_10
    if-eqz v2, :cond_a

    .line 499
    invoke-direct {p0, v7}, Lcom/android/smith/LoggerController;->enableButtons(Z)V

    goto :goto_4
.end method

.method private initLoggers()V
    .locals 10

    .prologue
    .line 265
    const/4 v5, 0x0

    .line 270
    .local v5, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.android.category.SMITH.CONTROLLER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0}, Lcom/android/smith/LoggerController;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 276
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 278
    if-nez v5, :cond_1

    .line 321
    :cond_0
    return-void

    .line 284
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v3, newlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 288
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 290
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_3

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 292
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    const-string v8, "com.android.smith."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    const-class v8, Lcom/android/smith/LoggerController;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 294
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_3
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 298
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 300
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 302
    .restart local v6       #ri:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_6

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 304
    .restart local v0       #ci:Landroid/content/pm/ComponentInfo;
    :goto_3
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    const-string v8, "com.android.smith."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    const-class v8, Lcom/android/smith/LoggerController;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 306
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 302
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_6
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 310
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    move-object v5, v3

    .line 315
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/smith/LoggerController$Loggers;

    iput-object v7, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    .line 317
    const/4 v1, 0x0

    :goto_4
    iget-object v7, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 319
    iget-object v8, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    new-instance v9, Lcom/android/smith/LoggerController$Loggers;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, p0, v4, v7}, Lcom/android/smith/LoggerController$Loggers;-><init>(Lcom/android/smith/LoggerController;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    aput-object v9, v8, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private removeRandom()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 536
    iget v0, p0, Lcom/android/smith/LoggerController;->mRandom:I

    if-eq v0, v3, :cond_0

    .line 538
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.android.smith/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/LoggerController;->mRandom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 540
    :cond_0
    iput v3, p0, Lcom/android/smith/LoggerController;->mRandom:I

    .line 541
    return-void
.end method

.method private updateLoggers()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    const-string v1, "Querying Loggers"

    const-string v2, "If it took a long time, please press BACK key to cancel."

    iget-object v5, p0, Lcom/android/smith/LoggerController;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 588
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->createRandom()V

    .line 590
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iput-boolean v4, v0, Lcom/android/smith/LoggerController$Loggers;->mQuerying:Z

    .line 594
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/android/smith/LoggerController$Loggers;->mActionControl:Ljava/lang/String;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/android/smith/LoggerController$Loggers;->mPackage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/android/smith/LoggerController$Loggers;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Receiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v0, "com.android.category.SMITH.CONTROLLER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const-string v0, "action"

    const-string v1, "query"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v0, "arg1"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    const-string v0, "arg2"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const-string v0, "from"

    const-class v1, Lcom/android/smith/LoggerController;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v0, "key"

    iget v1, p0, Lcom/android/smith/LoggerController;->mRandom:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    const-string v0, "SM:LoggerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {p0, v7, v0}, Lcom/android/smith/LoggerController;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 590
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 607
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 383
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/smith/LoggerController;->enableViews(Z)V

    .line 385
    iget-object v2, p0, Lcom/android/smith/LoggerController;->mButtonRefresh:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 387
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->updateLoggers()V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/android/smith/LoggerController;->mButtonApply:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 395
    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/android/smith/LoggerController$Loggers;->mQuerying:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v2, :cond_3

    .line 393
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    :cond_3
    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    if-ne v2, v3, :cond_4

    .line 400
    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 404
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 408
    :cond_5
    if-lez v0, :cond_6

    .line 410
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->applyLoggers()V

    goto :goto_0

    .line 414
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/smith/LoggerController;->enableButtons(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 329
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/android/smith/LoggerController;->setContentView(I)V

    .line 331
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->initLoggers()V

    .line 333
    const v1, 0x7f05002b

    invoke-virtual {p0, v1}, Lcom/android/smith/LoggerController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/smith/LoggerController;->mButtonRefresh:Landroid/widget/Button;

    .line 334
    iget-object v1, p0, Lcom/android/smith/LoggerController;->mButtonRefresh:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v1, 0x7f05002c

    invoke-virtual {p0, v1}, Lcom/android/smith/LoggerController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/smith/LoggerController;->mButtonApply:Landroid/widget/Button;

    .line 337
    iget-object v1, p0, Lcom/android/smith/LoggerController;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const v1, 0x7f05002d

    invoke-virtual {p0, v1}, Lcom/android/smith/LoggerController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/smith/LoggerController;->mLayoutLoggers:Landroid/widget/LinearLayout;

    .line 341
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLayoutLoggers:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v2}, Lcom/android/smith/LoggerController$Loggers;->attachLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Z

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/smith/LoggerController;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "1.6"

    invoke-static {v1, v2}, Lcom/android/smith/Version;->composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/smith/LoggerController;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method

.method public onResult(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/android/smith/LoggerController;->handleResultIntent(Landroid/content/Intent;)V

    .line 521
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 352
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 354
    invoke-static {p0}, Lcom/android/smith/Device;->keepScreenOn(Landroid/app/Activity;)V

    .line 356
    invoke-static {}, Lcom/android/smith/Device;->isUsbDebuggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    invoke-static {p0}, Lcom/android/smith/Device;->showUsbDebuggingWarning(Landroid/content/Context;)V

    .line 379
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 363
    .local v1, mIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.category.SMITH.CONTROLLER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/smith/LoggerController;->mLoggers:[Lcom/android/smith/LoggerController$Loggers;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/smith/LoggerController$Loggers;->mActionResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_1
    invoke-static {p0}, Lcom/android/smith/LoggerControllerReceiver;->registerListener(Lcom/android/smith/LoggerControllerReceiver$OnResultListener;)V

    .line 376
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/smith/LoggerController;->enableViews(Z)V

    .line 377
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->updateLoggers()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 219
    invoke-direct {p0}, Lcom/android/smith/LoggerController;->removeRandom()V

    .line 221
    invoke-static {}, Lcom/android/smith/LoggerControllerReceiver;->unregisterListener()V

    .line 223
    invoke-static {}, Lcom/android/smith/LoggerController;->clearAllRandom()V

    .line 235
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/LoggerController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 240
    :cond_0
    return-void
.end method
