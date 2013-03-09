.class public Lcom/android/htccontacts/VoiceMailActivity;
.super Landroid/app/Activity;
.source "VoiceMailActivity.java"


# static fields
.field private static final ADD_VOICEMAIL_NUMBER:I = 0x1

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VoiceMailActivity"


# instance fields
.field private DEBUG:Z

.field private mHandler:Landroid/os/Handler;

.field private mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/VoiceMailActivity;->DEBUG:Z

    .line 56
    new-instance v0, Lcom/android/htccontacts/VoiceMailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/VoiceMailActivity$1;-><init>(Lcom/android/htccontacts/VoiceMailActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/VoiceMailActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/VoiceMailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/htccontacts/VoiceMailActivity;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/VoiceMailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/htccontacts/VoiceMailActivity;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/VoiceMailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/htccontacts/VoiceMailActivity;->DEBUG:Z

    return v0
.end method

.method private addVoiceMailNumberPanel()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 151
    :cond_0
    iget-boolean v1, p0, Lcom/android/htccontacts/VoiceMailActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "VoiceMailActivity"

    const-string v2, "show vm setting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/VoiceMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/htccontacts/VoiceMailActivity;->finish()V

    .line 159
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/VoiceMailActivity;->finish()V

    .line 167
    return-void
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 99
    iget-object v3, p0, Lcom/android/htccontacts/VoiceMailActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, msg:Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 102
    iget-object v3, p0, Lcom/android/htccontacts/VoiceMailActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 103
    .local v1, msg2:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 105
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00e8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00e9

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00eb

    new-instance v5, Lcom/android/htccontacts/VoiceMailActivity$4;

    invoke-direct {v5, p0, v0}, Lcom/android/htccontacts/VoiceMailActivity$4;-><init>(Lcom/android/htccontacts/VoiceMailActivity;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00ea

    new-instance v5, Lcom/android/htccontacts/VoiceMailActivity$3;

    invoke-direct {v5, p0, v1}, Lcom/android/htccontacts/VoiceMailActivity$3;-><init>(Lcom/android/htccontacts/VoiceMailActivity;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/htccontacts/VoiceMailActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/android/htccontacts/VoiceMailActivity$2;-><init>(Lcom/android/htccontacts/VoiceMailActivity;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 131
    iget-object v3, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 134
    iget-object v3, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 136
    iget-object v3, p0, Lcom/android/htccontacts/VoiceMailActivity;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const v4, 0x102023a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 138
    .local v2, title:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 139
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method callVoicemail()V
    .locals 6

    .prologue
    .line 79
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/VoiceMailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, mVoiceMailNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "voicemail"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/VoiceMailActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/htccontacts/VoiceMailActivity;->finish()V

    .line 94
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v2, "VoiceMailActivity"

    const-string v3, "No voice mail number"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/android/htccontacts/VoiceMailActivity;->handleMissingVoiceMailNumber()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/htccontacts/VoiceMailActivity;->callVoicemail()V

    .line 54
    return-void
.end method
