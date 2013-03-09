.class public Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;
.super Landroid/app/Activity;
.source "CollectDiagnosticsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BROADCAST_INTENT_ACTION_CURRENT_STATUS:Ljava/lang/String; = "com.carrieriq.tmobile.ENABLECURRENTSTATUS"

.field private static final BROADCAST_INTENT_CIQ_ENABLE_TOGGLE:Ljava/lang/String; = "com.carrieriq.tmobile.ENABLETOGGLE"

.field private static final INTENT_EXTRA_ENABLE:Ljava/lang/String; = "Enable"

.field private static final MSG_DELAY_TIME_DISMISS_DIALOG:I = 0x4e20

.field private static final MSG_ID_DISMISS_DIALOG:I = 0x65

.field private static final NO:Ljava/lang/String; = "No"

.field private static final TAG:Ljava/lang/String; = "OOBE_CollectDiagnosticsActivity"

.field private static final YES:Ljava/lang/String; = "Yes"


# instance fields
.field private mAllowCheckBox:Landroid/widget/CheckBox;

.field private mCIQStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

.field private mbAllowCollectDiagnostics:Z

.field private mbBackFinish:Z

.field private mbFinalPage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbBackFinish:Z

    .line 54
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbFinalPage:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbAllowCollectDiagnostics:Z

    .line 244
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$3;-><init>(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->toggleCIQ(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbAllowCollectDiagnostics:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbAllowCollectDiagnostics:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->updateCheckBox()V

    return-void
.end method

.method private dismissLoadingDialog()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 279
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 281
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->setContentView(I)V

    .line 96
    const v3, 0x7f0d003f

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 98
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 99
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 100
    const/16 v3, 0x31

    invoke-static {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 102
    const v3, 0x7f0d0003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 103
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 105
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbBackFinish:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    :cond_0
    :goto_0
    const v3, 0x7f0d0004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 110
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbFinalPage:Z

    if-eqz v3, :cond_4

    .line 113
    const v3, 0x7f0a0013

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 114
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->setupTitle()V

    .line 120
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->setupWelcomeMessage()V

    .line 123
    const v3, 0x7f0d0011

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mAllowCheckBox:Landroid/widget/CheckBox;

    .line 124
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mAllowCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mAllowCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$1;

    invoke-direct {v4, p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->updateCheckBox()V

    .line 135
    return-void

    .line 106
    .end local v1           #btnNext:Landroid/widget/Button;
    :cond_3
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 116
    .restart local v1       #btnNext:Landroid/widget/Button;
    :cond_4
    const v3, 0x7f0a000e

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method public static queryCIQEnabled(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 233
    const-string v1, "OOBE_CollectDiagnosticsActivity"

    const-string v2, "queryCIQEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.carrieriq.tmobile.ENABLETOGGLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mCIQStatusReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mCIQStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.carrieriq.tmobile.ENABLECURRENTSTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mCIQStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    const-string v1, "OOBE_CollectDiagnosticsActivity"

    const-string v2, "mCIQStatusReceiver registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setupTitle()V
    .locals 2

    .prologue
    .line 138
    const/high16 v1, 0x7f0d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f0a00a5

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method private setupWelcomeMessage()V
    .locals 2

    .prologue
    .line 143
    const v1, 0x7f0d0010

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, welcomeMessage:Landroid/widget/TextView;
    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    return-void
.end method

.method private showLoadingDialog()V
    .locals 4

    .prologue
    .line 260
    const-string v0, "OOBE_CollectDiagnosticsActivity"

    const-string v1, "showLoadingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 263
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 264
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 268
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    return-void
.end method

.method private toggleCIQ(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 226
    const-string v1, "OOBE_CollectDiagnosticsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleCIQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.carrieriq.tmobile.ENABLETOGGLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "Enable"

    if-eqz p1, :cond_0

    const-string v1, "Yes"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    return-void

    .line 228
    :cond_0
    const-string v1, "No"

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "OOBE_CollectDiagnosticsActivity"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mCIQStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mCIQStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mCIQStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    :cond_0
    return-void
.end method

.method private updateCheckBox()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mAllowCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mAllowCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbAllowCollectDiagnostics:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "OOBE_CollectDiagnosticsActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->unregisterReceiver()V

    .line 192
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->dismissLoadingDialog()V

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 194
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 150
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->finish()V

    goto :goto_0

    .line 155
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->finish()V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->initialize()V

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 72
    const-string v1, "OOBE_CollectDiagnosticsActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbBackFinish:Z

    .line 77
    const-string v1, "FinalPage"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbFinalPage:Z

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->initialize()V

    .line 81
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->registerReceiver()V

    .line 82
    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->queryCIQEnabled(Landroid/content/Context;)V

    .line 83
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->showLoadingDialog()V

    .line 84
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 286
    const-string v1, "OOBE_CollectDiagnosticsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sparse-switch p1, :sswitch_data_0

    .line 301
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 290
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 291
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->setResult(I)V

    .line 292
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 185
    const-string v0, "OOBE_CollectDiagnosticsActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 169
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 174
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 179
    const-string v0, "OOBE_CollectDiagnosticsActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method
