.class public Lcom/htc/omadm/gui/ext/BaseProgressBar;
.super Landroid/app/Activity;
.source "BaseProgressBar.java"


# instance fields
.field protected DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mButton1_Text:Ljava/lang/String;

.field private mButton2_Text:Ljava/lang/String;

.field private mButton3_Text:Ljava/lang/String;

.field private mButtonStyle:I

.field private mCurrentSize:I

.field private mDisableTouchEvent:Z

.field private mMaxSize:I

.field private mMessage:Ljava/lang/String;

.field private mOption:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSendIntent:Z

.field private mStatus:I

.field private mTag:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "libgo"

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;

    .line 33
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    .line 36
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mTitle:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mMessage:Ljava/lang/String;

    .line 39
    iput v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButtonStyle:I

    .line 40
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton1_Text:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton2_Text:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton3_Text:Ljava/lang/String;

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mMaxSize:I

    .line 45
    iput v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mCurrentSize:I

    .line 47
    iput v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I

    .line 48
    iput v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I

    .line 49
    iput-boolean v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mDisableTouchEvent:Z

    .line 50
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mTag:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mUri:Landroid/net/Uri;

    .line 53
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mSendIntent:Z

    .line 55
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 57
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar$2;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/gui/ext/BaseProgressBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/omadm/gui/ext/BaseProgressBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/omadm/gui/ext/BaseProgressBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/omadm/gui/ext/BaseProgressBar;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->callCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->callDismissFinish()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/omadm/gui/ext/BaseProgressBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mDisableTouchEvent:Z

    return v0
.end method

.method private appendButton(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x1

    .line 195
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButtonStyle:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton1_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseProgressBar$4;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar$4;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton1_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseProgressBar$5;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar$5;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton2_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseProgressBar$6;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar$6;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    invoke-virtual {p1, v3, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton1_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseProgressBar$7;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar$7;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton2_Text:Ljava/lang/String;

    new-instance v1, Lcom/htc/omadm/gui/ext/BaseProgressBar$8;

    invoke-direct {v1, p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar$8;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    invoke-virtual {p1, v3, v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 242
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton3_Text:Ljava/lang/String;

    new-instance v2, Lcom/htc/omadm/gui/ext/BaseProgressBar$9;

    invoke-direct {v2, p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar$9;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private callCallback(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 303
    iget-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callCallback -> mSendIntent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mSendIntent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mSendIntent:Z

    if-eqz v1, :cond_1

    .line 307
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mSendIntent:Z

    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mUri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    .local v0, callbackIntent:Landroid/content/Intent;
    const-string v1, "status"

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v1, "option"

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
    iget-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callCallback -> sendBroadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v0           #callbackIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private callDismissFinish()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->finish()V

    .line 300
    return-void
.end method

.method private callDownloadCallback(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 318
    iget-boolean v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callDownloadCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mUri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 321
    .local v0, callbackIntent:Landroid/content/Intent;
    const-string v1, "status"

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v1, "option"

    iget v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->setRequestedOrientation(I)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 120
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mTitle:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mMessage:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ButtonStyle"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButtonStyle:I

    .line 124
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Button1_Text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton1_Text:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Button2_Text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton2_Text:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Button3_Text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mButton3_Text:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ProgressBarMaxSize"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mMaxSize:I

    .line 130
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "currentsize"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mCurrentSize:I

    .line 132
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Status"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I

    .line 133
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Option"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I

    .line 134
    iget-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mCurrentSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DisableTouchEvent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mDisableTouchEvent:Z

    .line 138
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Tag"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mTag:Ljava/lang/String;

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mUri:Landroid/net/Uri;

    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v1, intentfilter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.andorid.omadm.progressbar.callexit"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 147
    .local v2, teleManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2           #teleManager:Landroid/telephony/TelephonyManager;
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->showDialog(I)V

    .line 153
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->setProgressBarDialog()V

    .line 159
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 258
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "BaseProgressBar: onNewInent"

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "currentsize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mCurrentSize:I

    .line 261
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mCurrentSize:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 262
    const-string v0, "com.htc.andorid.omadm.progressbar.exit"

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->callDownloadCallback(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mCurrentSize:I

    iget v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mMaxSize:I

    if-lt v0, v1, :cond_1

    .line 267
    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 293
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 294
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 272
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mCurrentSize:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 274
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-ne v0, v1, :cond_2

    .line 276
    :cond_1
    sget-boolean v0, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    if-nez v0, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->callDismissFinish()V

    .line 280
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 286
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 287
    return-void
.end method

.method public setProgressBarDialog()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lcom/htc/omadm/gui/ext/BaseProgressBar$3;

    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/omadm/gui/ext/BaseProgressBar$3;-><init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 182
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 184
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 188
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget v1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mMaxSize:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 190
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->appendButton(Lcom/htc/widget/HtcAlertDialog;)V

    .line 191
    return-void
.end method
