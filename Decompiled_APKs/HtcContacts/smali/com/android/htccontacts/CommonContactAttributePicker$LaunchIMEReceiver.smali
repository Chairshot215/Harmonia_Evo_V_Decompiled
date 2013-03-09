.class Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "CommonContactAttributePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private mURLEdit:Landroid/widget/EditText;

.field private retryCount:I

.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/widget/EditText;)V
    .locals 1
    .parameter
    .parameter "editor"

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    .line 2521
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2522
    iput-object p2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;

    .line 2523
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->retryCount:I

    .line 2524
    return-void
.end method

.method static synthetic access$3300(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3408(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 2516
    iget v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->retryCount:I

    return v0
.end method

.method private relaunchIME()V
    .locals 4

    .prologue
    .line 2527
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver$1;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2550
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 2553
    packed-switch p1, :pswitch_data_0

    .line 2567
    :goto_0
    return-void

    .line 2556
    :pswitch_0
    iget v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2557
    const-string v0, "JuLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch IME failed, retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 2563
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;->retryCount:I

    goto :goto_0

    .line 2553
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
