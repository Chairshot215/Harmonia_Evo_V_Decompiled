.class public Lcom/htc/android/htcsetupwizard/PostSetup;
.super Landroid/app/Activity;
.source "PostSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/PostSetup$1;,
        Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_HOME_ACTIVITY_NAME:Ljava/lang/String; = "com.htc.launcher.Launcher"

.field private static final MSG_DELAY_FINISH:I = 0x5dc

.field private static final MSG_ID_FINISH:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "OOBE_PostSetup"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/PostSetup;Lcom/htc/android/htcsetupwizard/PostSetup$1;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/PostSetup;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method


# virtual methods
.method public LogForUserProfile()V
    .locals 7

    .prologue
    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 72
    .local v0, now:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, time:Ljava/lang/String;
    const-string v4, "OOBE_PostSetup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    .line 80
    .local v3, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v4, "system_server"

    invoke-virtual {v3, v4}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "first_boot"

    invoke-interface {v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "first_boot"

    invoke-interface {v4, v5, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 85
    invoke-static {v3}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 88
    invoke-virtual {v3}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 89
    return-void
.end method

.method public finish()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 102
    const-string v4, "OOBE_PostSetup"

    const-string v5, "finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/htc/android/htcsetupwizard/PostSetup;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v3, mainComponent:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/PostSetup;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 107
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/PostSetup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setup_wizard_has_run"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/PostSetup;->LogForUserProfile()V

    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, bSetDefaultHome:Z
    new-instance v1, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, customize:Lcom/htc/android/htcsetupwizard/CustomizationReader;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isSetHTCDefaullt()Z

    move-result v0

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    .line 117
    const-string v4, "com.htc.launcher.Launcher"

    invoke-static {p0, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->setDefaultHome(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v2, home:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    or-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/PostSetup;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 93
    const-string v0, "OOBE_PostSetup"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/PostSetup;->setContentView(I)V

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/PostSetup;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 131
    const-string v0, "OOBE_PostSetup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 140
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
