.class Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "EditExchangeNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditExchangeNameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private mMyHandler:Landroid/os/Handler;

.field public retryCount:I

.field final synthetic this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 616
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->mMyHandler:Landroid/os/Handler;

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->retryCount:I

    .line 621
    return-void
.end method

.method private relaunchIME()V
    .locals 4

    .prologue
    .line 625
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver$1;-><init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 640
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 643
    packed-switch p1, :pswitch_data_0

    .line 656
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 646
    :pswitch_1
    iget v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
