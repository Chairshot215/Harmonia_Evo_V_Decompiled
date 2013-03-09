.class public Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;
.super Landroid/os/ResultReceiver;
.source "SipLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/SipLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LaunchImeReceiver"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mImManager:Landroid/view/inputmethod/InputMethodManager;

.field private mRetryCount:I


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 1
    .parameter "imManager"
    .parameter "editText"

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/widget/EditText;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mRetryCount:I

    .line 63
    iput-object p1, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mImManager:Landroid/view/inputmethod/InputMethodManager;

    .line 64
    iput-object p2, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mEditText:Landroid/widget/EditText;

    .line 65
    return-void
.end method

.method static synthetic access$008(Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mRetryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mImManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private relaunchIme()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver$1;-><init>(Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v4, 0x0

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget v0, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 83
    const-string v0, "SipLauncher"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch IME failed, retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->relaunchIme()V

    goto :goto_0

    .line 89
    :pswitch_1
    iput v4, p0, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->mRetryCount:I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
