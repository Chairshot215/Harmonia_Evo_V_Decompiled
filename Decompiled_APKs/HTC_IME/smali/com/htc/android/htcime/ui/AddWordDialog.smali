.class public Lcom/htc/android/htcime/ui/AddWordDialog;
.super Landroid/app/Activity;
.source "AddWordDialog.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected mAWText:Landroid/widget/EditText;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEditWordPos:I

.field private mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

.field private mHomePressedFilter:Landroid/content/IntentFilter;

.field private mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEditMode:Z

.field private mMyEditTicket:I

.field private mOrgWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const-string v0, "AddWordDialog"

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->TAG:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->DEBUG:Z

    .line 62
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 63
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    .line 64
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mIsEditMode:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mMyEditTicket:I

    .line 66
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mEditWordPos:I

    .line 67
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mOrgWord:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/AddWordDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->updateButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ui/AddWordDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/AddWordDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ui/AddWordDialog;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private getExtraValue()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 303
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 304
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "editTicket"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mMyEditTicket:I

    .line 305
    const-string v1, "wordPos"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mEditWordPos:I

    .line 306
    const-string v1, "orgWord"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mOrgWord:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mOrgWord:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 309
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mOrgWord:Ljava/lang/String;

    .line 311
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mMyEditTicket:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mEditWordPos:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mOrgWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mIsEditMode:Z

    .line 318
    :goto_0
    return-void

    .line 314
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mIsEditMode:Z

    goto :goto_0
.end method

.method private receiverRegister()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHomePressedFilter:Landroid/content/IntentFilter;

    .line 328
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/htc/android/htcime/ui/AddWordDialog$7;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/AddWordDialog$7;-><init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHomePressedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private receiverUnRegister()V
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 296
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    return-void
.end method

.method private updateButtonState()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 365
    .local v0, positiveBtn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected keyboardTypeLayoutCheck()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/4 v14, -0x1

    const/4 v13, -0x2

    .line 107
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 108
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/htcime/util/SIPUtils;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 113
    .local v1, context:Landroid/content/Context;
    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 114
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x109006e

    invoke-virtual {v3, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 115
    .local v5, layout:Landroid/view/ViewGroup;
    if-nez v5, :cond_0

    .line 116
    const-string v8, "AddWordDialog"

    const-string v9, "[keyboardTypeLayoutCheck] Error occur while inflate com.android.internal.R.layout.preference_dialog_edittext"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->finish()V

    .line 120
    :cond_0
    const/high16 v8, 0x7f03

    invoke-virtual {v3, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    .line 121
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    const/16 v9, 0x901

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 122
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/16 v12, 0x40

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/htc/android/htcime/XT9IME/util/XT9AddWordFilter;

    invoke-direct {v11}, Lcom/htc/android/htcime/XT9IME/util/XT9AddWordFilter;-><init>()V

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 124
    const v8, 0x10202d0

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 125
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 127
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v0, v8, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 133
    :goto_0
    iget-boolean v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mIsEditMode:Z

    if-eqz v8, :cond_2

    .line 135
    const v8, 0x7f090075

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ui/AddWordDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, titleStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mOrgWord:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_1
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    new-instance v9, Lcom/htc/android/htcime/ui/AddWordDialog$1;

    invoke-direct {v9, p0}, Lcom/htc/android/htcime/ui/AddWordDialog$1;-><init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x20c013c

    new-instance v10, Lcom/htc/android/htcime/ui/AddWordDialog$4;

    invoke-direct {v10, p0}, Lcom/htc/android/htcime/ui/AddWordDialog$4;-><init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x20c013d

    new-instance v10, Lcom/htc/android/htcime/ui/AddWordDialog$3;

    invoke-direct {v10, p0}, Lcom/htc/android/htcime/ui/AddWordDialog$3;-><init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/android/htcime/ui/AddWordDialog$2;

    invoke-direct {v9, p0}, Lcom/htc/android/htcime/ui/AddWordDialog$2;-><init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 193
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v9, Lcom/htc/android/htcime/ui/AddWordDialog$5;

    invoke-direct {v9, p0}, Lcom/htc/android/htcime/ui/AddWordDialog$5;-><init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 200
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v9, Lcom/htc/android/htcime/ui/AddWordDialog$6;

    invoke-direct {v9, p0}, Lcom/htc/android/htcime/ui/AddWordDialog$6;-><init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 207
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 210
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 211
    .local v2, dialogWindow:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 212
    .local v6, lp:Landroid/view/WindowManager$LayoutParams;
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v8, v8, 0x4

    or-int/lit16 v8, v8, 0x100

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 213
    invoke-virtual {v2, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 220
    .end local v0           #container:Landroid/view/ViewGroup;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #dialogWindow:Landroid/view/Window;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #layout:Landroid/view/ViewGroup;
    .end local v6           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v7           #titleStr:Ljava/lang/String;
    :goto_2
    return-void

    .line 129
    .restart local v0       #container:Landroid/view/ViewGroup;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #layout:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    iget-object v8, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v5, v8, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 140
    :cond_2
    const v8, 0x7f09000b

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ui/AddWordDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #titleStr:Ljava/lang/String;
    goto :goto_1

    .line 217
    .end local v0           #container:Landroid/view/ViewGroup;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #layout:Landroid/view/ViewGroup;
    .end local v7           #titleStr:Ljava/lang/String;
    :cond_3
    const-string v8, "AddWordDialog"

    const-string v9, "[keyboardTypeLayoutCheck] Can\'t get intent"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->finish()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 351
    iget-object v2, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 352
    .local v0, dialogWindow:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 353
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v2, v2, 0x4

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 356
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 357
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    .line 82
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->receiverRegister()V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->receiverUnRegister()V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 251
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 226
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->submitWord()V

    .line 228
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->finish()V

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 233
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mIsEditMode:Z

    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/AddWordDialog;->showToast(Ljava/lang/String;)V

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->finish()V

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/AddWordDialog;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_4
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 246
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getExtraValue()V

    .line 89
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->keyboardTypeLayoutCheck()V

    .line 90
    return-void
.end method

.method protected submitWord()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 264
    iget v2, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mMyEditTicket:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mEditWordPos:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 266
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v1, newWord:Landroid/os/Bundle;
    const-string v2, "WORD"

    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    const-string v3, "addwordforxt9"

    invoke-virtual {v2, v3, v1}, Lcom/htc/android/htcime/HTCIMEService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ui/AddWordDialog;->showToast(Ljava/lang/String;)V

    .line 291
    .end local v1           #newWord:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v1       #newWord:Landroid/os/Bundle;
    :cond_1
    const-string v2, "AddWordDialog"

    const-string v3, " mHTCIME is null. Ignore new word insert."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v1           #newWord:Landroid/os/Bundle;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "editWord"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 281
    .local v0, msg:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 283
    const-string v2, "editTicket"

    iget v3, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mMyEditTicket:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v2, "wordPos"

    iget v3, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mEditWordPos:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v2, "orgWord"

    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mOrgWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v2, "newWord"

    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddWordDialog;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v4, v0}, Lcom/htc/android/htcime/ui/AddWordDialog;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
