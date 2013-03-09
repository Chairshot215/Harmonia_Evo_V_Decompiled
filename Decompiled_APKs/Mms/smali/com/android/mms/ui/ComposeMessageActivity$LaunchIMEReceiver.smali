.class Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private mImeHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mURLEdit:Landroid/widget/EditText;

.field private retryCount:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 15926
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 15927
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 15923
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mImeHandler:Landroid/os/Handler;

    .line 15928
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->retryCount:I

    .line 15929
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mRunnable:Ljava/lang/Runnable;

    .line 15945
    return-void
.end method

.method static synthetic access$15602(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15920
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->retryCount:I

    return p1
.end method

.method static synthetic access$15608(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 15920
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->retryCount:I

    return v0
.end method

.method static synthetic access$15700(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15920
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15702(Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15920
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method private relaunchIME()V
    .locals 4

    .prologue
    .line 15954
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mImeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15955
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 15958
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15975
    :goto_0
    return-void

    .line 15960
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 15971
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->retryCount:I

    goto :goto_0

    .line 15963
    :pswitch_1
    const-string v0, "Gola"

    const-string v1, "hide IME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15964
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 15967
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 15960
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCallbacks()V
    .locals 2

    .prologue
    .line 15949
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mImeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$LaunchIMEReceiver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15950
    return-void
.end method
