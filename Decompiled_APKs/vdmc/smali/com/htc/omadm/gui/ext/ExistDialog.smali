.class public Lcom/htc/omadm/gui/ext/ExistDialog;
.super Landroid/app/Activity;
.source "ExistDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;
    }
.end annotation


# instance fields
.field protected DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field protected mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mButton1_Text:Ljava/lang/String;

.field private mButton2_Text:Ljava/lang/String;

.field private mButton3_Text:Ljava/lang/String;

.field private mButtonStyle:I

.field private mDialogStyle:I

.field private mEnableMenu:Z

.field private mMessage:Ljava/lang/String;

.field private mOption:I

.field protected mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field protected mQueueEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeHandler:Landroid/os/Handler;

.field private mResumeTimer:Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;

.field private mSendIntent:Z

.field private mStatus:I

.field private mTag:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "libgo"

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    .line 33
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    .line 35
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mTitle:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mMessage:Ljava/lang/String;

    .line 38
    iput v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mButtonStyle:I

    .line 39
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mButton1_Text:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mButton2_Text:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mButton3_Text:Ljava/lang/String;

    .line 43
    iput v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    .line 44
    iput v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    .line 45
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mEnableMenu:Z

    .line 46
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mTag:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mUri:Landroid/net/Uri;

    .line 49
    iput v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mDialogStyle:I

    .line 51
    iput-boolean v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mQueueEnable:Z

    .line 53
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 54
    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 55
    iput-boolean v3, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mSendIntent:Z

    .line 57
    new-instance v0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;

    const-wide/16 v2, 0x3a98

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;-><init>(Lcom/htc/omadm/gui/ext/ExistDialog;JJ)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mResumeTimer:Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;

    .line 59
    new-instance v0, Lcom/htc/omadm/gui/ext/ExistDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/ExistDialog$1;-><init>(Lcom/htc/omadm/gui/ext/ExistDialog;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lcom/htc/omadm/gui/ext/ExistDialog$2;

    invoke-direct {v0, p0}, Lcom/htc/omadm/gui/ext/ExistDialog$2;-><init>(Lcom/htc/omadm/gui/ext/ExistDialog;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mResumeHandler:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/gui/ext/ExistDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/omadm/gui/ext/ExistDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/omadm/gui/ext/ExistDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/omadm/gui/ext/ExistDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->callDismissFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/omadm/gui/ext/ExistDialog;)Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mResumeTimer:Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/omadm/gui/ext/ExistDialog;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/omadm/gui/ext/ExistDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mSendIntent:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/omadm/gui/ext/ExistDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mResumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private appendButton(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appendButton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050056

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/omadm/gui/ext/ExistDialog$4;

    invoke-direct {v2, p0}, Lcom/htc/omadm/gui/ext/ExistDialog$4;-><init>(Lcom/htc/omadm/gui/ext/ExistDialog;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 217
    return-void
.end method

.method private callDismissFinish()V
    .locals 3

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callDismissFinish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 252
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mSendIntent:Z

    .line 253
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->finish()V

    .line 254
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/ext/ExistDialog;->setRequestedOrientation(I)V

    .line 90
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mTitle:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mMessage:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "buttonstyle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mButtonStyle:I

    .line 98
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "button1_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mButton1_Text:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "button2_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mButton2_Text:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "button3_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mButton3_Text:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    .line 103
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "option"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    .line 104
    iget-boolean v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enablemenu"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mEnableMenu:Z

    .line 108
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mTag:Ljava/lang/String;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mUri:Landroid/net/Uri;

    .line 111
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialogstyle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mDialogStyle:I

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.andorid.omadm.dmexist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/ext/ExistDialog;->showDialog(I)V

    .line 119
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_0

    .line 175
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 172
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->setAlertDialog()V

    .line 173
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->finish()V

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 143
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 126
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mSendIntent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/htc/omadm/prop/PropertyState;->UI_SHOWING:I

    if-lez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mResumeTimer:Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;

    invoke-virtual {v0}, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->start()Landroid/os/CountDownTimer;

    .line 137
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 138
    return-void
.end method

.method public setAlertDialog()V
    .locals 3

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setAlertDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    new-instance v0, Lcom/htc/omadm/gui/ext/ExistDialog$3;

    invoke-direct {v0, p0, p0}, Lcom/htc/omadm/gui/ext/ExistDialog$3;-><init>(Lcom/htc/omadm/gui/ext/ExistDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 195
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p0}, Lcom/htc/omadm/gui/ext/ExistDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0, v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->appendButton(Lcom/htc/widget/HtcAlertDialog;)V

    .line 198
    return-void
.end method
