.class public Lcom/htc/android/htcime/tools/SipRecorder;
.super Landroid/app/Activity;
.source "SipRecorder.java"


# static fields
.field public static final CONTENT_TEXT_VARIATION_HTC_TOOL_SIP_RECORDER:I = 0x960


# instance fields
.field private mHomePressedFilter:Landroid/content/IntentFilter;

.field private mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSRDoneBtn:Landroid/widget/Button;

.field protected mSRText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mSRDoneBtn:Landroid/widget/Button;

    .line 30
    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mSRText:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/tools/SipRecorder;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mSRDoneBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private receiverRegister()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mHomePressedFilter:Landroid/content/IntentFilter;

    .line 91
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/htc/android/htcime/tools/SipRecorder$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/tools/SipRecorder$2;-><init>(Lcom/htc/android/htcime/tools/SipRecorder;)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mHomePressedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private receiverUnRegister()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected editTextSetup()V
    .locals 2

    .prologue
    .line 54
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/SipRecorder;->setContentView(I)V

    .line 56
    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/SipRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mSRDoneBtn:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mSRDoneBtn:Landroid/widget/Button;

    new-instance v1, Lcom/htc/android/htcime/tools/SipRecorder$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/tools/SipRecorder$1;-><init>(Lcom/htc/android/htcime/tools/SipRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/SipRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mSRText:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder;->mSRText:Landroid/widget/EditText;

    const v1, 0x30961

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/SipRecorder;->receiverRegister()V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/SipRecorder;->receiverUnRegister()V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 76
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipRecorder;->sipRecorderDone()V

    .line 78
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipRecorder;->finish()V

    .line 79
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 81
    :cond_0
    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/SipRecorder;->editTextSetup()V

    .line 45
    return-void
.end method

.method sipRecorderDone()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.htcime.SIP_RECORDER_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/SipRecorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
