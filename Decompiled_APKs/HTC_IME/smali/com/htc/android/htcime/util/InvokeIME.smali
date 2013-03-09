.class public Lcom/htc/android/htcime/util/InvokeIME;
.super Ljava/lang/Object;
.source "InvokeIME.java"


# instance fields
.field private final MSG_RELAUNCH_IME:I

.field private TAG:Ljava/lang/String;

.field private inputView:Landroid/view/View;

.field private launchIMEContext:Landroid/content/Context;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInvokeInterval:I

.field private mInvokeTimes:I

.field private mLaunchHandler:Landroid/os/Handler;

.field private mTryLaunch:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "InvokeIME"

    iput-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mTryLaunch:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->MSG_RELAUNCH_IME:I

    .line 35
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeInterval:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeTimes:I

    .line 98
    new-instance v0, Lcom/htc/android/htcime/util/InvokeIME$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/InvokeIME$1;-><init>(Lcom/htc/android/htcime/util/InvokeIME;)V

    iput-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mLaunchHandler:Landroid/os/Handler;

    .line 39
    iput-object v1, p0, Lcom/htc/android/htcime/util/InvokeIME;->launchIMEContext:Landroid/content/Context;

    .line 40
    iput-object v1, p0, Lcom/htc/android/htcime/util/InvokeIME;->inputView:Landroid/view/View;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "InvokeIME"

    iput-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mTryLaunch:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->MSG_RELAUNCH_IME:I

    .line 35
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeInterval:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeTimes:I

    .line 98
    new-instance v0, Lcom/htc/android/htcime/util/InvokeIME$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/InvokeIME$1;-><init>(Lcom/htc/android/htcime/util/InvokeIME;)V

    iput-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mLaunchHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/htc/android/htcime/util/InvokeIME;->launchIMEContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/htc/android/htcime/util/InvokeIME;->inputView:Landroid/view/View;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/util/InvokeIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/android/htcime/util/InvokeIME;->relaunchIME()V

    return-void
.end method

.method private relaunchIME()V
    .locals 4

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mTryLaunch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mTryLaunch:I

    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->launchIMEContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/android/htcime/util/InvokeIME;->inputView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mTryLaunch:I

    iget v1, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeTimes:I

    if-gt v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mLaunchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/util/InvokeIME;->mLaunchHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method public launchIME()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->TAG:Ljava/lang/String;

    const-string v1, "launchIME!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->launchIMEContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->TAG:Ljava/lang/String;

    const-string v1, "null Context!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iput v2, p0, Lcom/htc/android/htcime/util/InvokeIME;->mTryLaunch:I

    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->launchIMEContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/android/htcime/util/InvokeIME;->inputView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mLaunchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/util/InvokeIME;->mLaunchHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public launchIME(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/android/htcime/util/InvokeIME;->launchIMEContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/htc/android/htcime/util/InvokeIME;->inputView:Landroid/view/View;

    .line 51
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeInterval:I

    .line 52
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeTimes:I

    .line 54
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/InvokeIME;->launchIME()V

    .line 55
    return-void
.end method

.method public launchIME(Landroid/content/Context;Landroid/view/View;II)V
    .locals 0
    .parameter "context"
    .parameter "view"
    .parameter "interval"
    .parameter "times"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/android/htcime/util/InvokeIME;->launchIMEContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/htc/android/htcime/util/InvokeIME;->inputView:Landroid/view/View;

    .line 59
    iput p3, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeInterval:I

    .line 60
    iput p4, p0, Lcom/htc/android/htcime/util/InvokeIME;->mInvokeTimes:I

    .line 61
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/InvokeIME;->launchIME()V

    .line 62
    return-void
.end method

.method public stopLaunchIME()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME;->mLaunchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    return-void
.end method
