.class public Lcom/android/phone/HtcCdmaOTAScreen;
.super Landroid/app/Activity;
.source "HtcCdmaOTAScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_EXIT:I = 0x2

.field private static final EVENT_INIT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaOTAScreen"

.field private static final REBOOT_COMMAND:Ljava/lang/String; = " reboot"

.field public static final SU:Ljava/lang/String; = "/system/xbin/su"

.field public static final SUDO:Ljava/lang/String; = "/system/xbin/su 0 "


# instance fields
.field private mHandler:Landroid/os/Handler;

.field otaDialog:Landroid/content/DialogInterface;

.field private otaId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Lcom/android/phone/HtcCdmaOTAScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaOTAScreen$1;-><init>(Lcom/android/phone/HtcCdmaOTAScreen;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaOTAScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaOTAScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaOTAScreen;->initOTADialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCdmaOTAScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/phone/HtcCdmaOTAScreen;->otaId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcCdmaOTAScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaOTAScreen;->shutdownDevice()V

    return-void
.end method

.method private initOTADialog()V
    .locals 11

    .prologue
    const v10, 0x7f0e004a

    const/4 v9, 0x1

    const v8, 0x7f0e012b

    const/4 v7, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaOTAScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "otaId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 108
    .local v2, otaIDArray:[I
    array-length v3, v2

    if-lez v3, :cond_0

    .line 109
    aget v3, v2, v7

    iput v3, p0, Lcom/android/phone/HtcCdmaOTAScreen;->otaId:I

    .line 112
    const-string v1, ""

    .line 113
    .local v1, message:Ljava/lang/String;
    iget v3, p0, Lcom/android/phone/HtcCdmaOTAScreen;->otaId:I

    sparse-switch v3, :sswitch_data_0

    .line 128
    :goto_0
    iget v3, p0, Lcom/android/phone/HtcCdmaOTAScreen;->otaId:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 129
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/HtcCdmaOTAScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/HtcCdmaOTAScreen;->otaDialog:Landroid/content/DialogInterface;

    .line 195
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 115
    .restart local v1       #message:Ljava/lang/String;
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e0124

    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaOTAScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0e0129

    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaOTAScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    goto :goto_0

    .line 118
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e0123

    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaOTAScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0e012c

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/HtcCdmaOTAScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    goto :goto_0

    .line 121
    :sswitch_2
    const v3, 0x7f0e012d

    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaOTAScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 136
    :cond_1
    iget v3, p0, Lcom/android/phone/HtcCdmaOTAScreen;->otaId:I

    if-ne v3, v9, :cond_2

    .line 138
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/HtcCdmaOTAScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/HtcCdmaOTAScreen$3;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaOTAScreen$3;-><init>(Lcom/android/phone/HtcCdmaOTAScreen;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/HtcCdmaOTAScreen$2;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaOTAScreen$2;-><init>(Lcom/android/phone/HtcCdmaOTAScreen;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/HtcCdmaOTAScreen;->otaDialog:Landroid/content/DialogInterface;

    goto/16 :goto_1

    .line 166
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/HtcCdmaOTAScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/HtcCdmaOTAScreen$5;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaOTAScreen$5;-><init>(Lcom/android/phone/HtcCdmaOTAScreen;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/HtcCdmaOTAScreen$4;

    invoke-direct {v4, p0}, Lcom/android/phone/HtcCdmaOTAScreen$4;-><init>(Lcom/android/phone/HtcCdmaOTAScreen;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/HtcCdmaOTAScreen;->otaDialog:Landroid/content/DialogInterface;

    .line 191
    iget-object v3, p0, Lcom/android/phone/HtcCdmaOTAScreen;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private shutdownDevice()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v1, value:Landroid/os/Bundle;
    const-string v2, "com.android.service.Watchdog.REBOOT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v2, "nowait"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v2, "window"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v2, "interval"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 80
    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaOTAScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 200
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOTAScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    return-void
.end method
