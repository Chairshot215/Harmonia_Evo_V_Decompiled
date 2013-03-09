.class public Lcom/htc/android/htcime/ui/AddWord;
.super Landroid/app/Activity;
.source "AddWord.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field protected mAWText:Landroid/widget/EditText;

.field private mEditWordPos:I

.field private mFromMenu:Z

.field private mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

.field private mHomePressedFilter:Landroid/content/IntentFilter;

.field private mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEditMode:Z

.field private mMyEditTicket:I

.field private mOrgWord:Ljava/lang/String;

.field private mOrientation:I

.field private mTheWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "AddWord"

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/AddWord;->DEBUG:Z

    .line 59
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 60
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 61
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    .line 62
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mTheWindow:Landroid/view/Window;

    .line 63
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mIsEditMode:Z

    .line 64
    iput v3, p0, Lcom/htc/android/htcime/ui/AddWord;->mMyEditTicket:I

    .line 65
    iput v3, p0, Lcom/htc/android/htcime/ui/AddWord;->mEditWordPos:I

    .line 66
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrgWord:Ljava/lang/String;

    .line 67
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mFromMenu:Z

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrientation:I

    .line 69
    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/AddWord;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWord;->updateButtonState()V

    return-void
.end method

.method private getExtraValue()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 270
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 271
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "editTicket"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mMyEditTicket:I

    .line 272
    const-string v2, "wordPos"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mEditWordPos:I

    .line 273
    const-string v2, "orgWord"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrgWord:Ljava/lang/String;

    .line 274
    const-string v2, "fromMenu"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mFromMenu:Z

    .line 278
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrientation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrgWord:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 284
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrgWord:Ljava/lang/String;

    .line 286
    :cond_0
    iget v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mMyEditTicket:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mEditWordPos:I

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrgWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 287
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/AddWord;->mIsEditMode:Z

    .line 293
    :goto_1
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    iput v5, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrientation:I

    goto :goto_0

    .line 289
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iput-boolean v4, p0, Lcom/htc/android/htcime/ui/AddWord;->mIsEditMode:Z

    goto :goto_1
.end method

.method private receiverRegister()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mHomePressedFilter:Landroid/content/IntentFilter;

    .line 304
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    new-instance v0, Lcom/htc/android/htcime/ui/AddWord$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/AddWord$2;-><init>(Lcom/htc/android/htcime/ui/AddWord;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/AddWord;->mHomePressedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private receiverUnRegister()V
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    return-void
.end method

.method private setWindowPosition(III)V
    .locals 0
    .parameter "screenwidth"
    .parameter "screenheight"
    .parameter "sipheight"

    .prologue
    .line 180
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 263
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 264
    return-void
.end method

.method private updateButtonState()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected keyboardTypeLayoutCheck()V
    .locals 7

    .prologue
    const v6, 0x7f020030

    const v5, 0x7f02002a

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 112
    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddWord;->setContentView(I)V

    .line 118
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mTheWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 120
    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 121
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 126
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPadding(IIII)V

    .line 128
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 129
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 134
    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    .line 135
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    const/16 v1, 0x901

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 137
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Lcom/htc/android/htcime/XT9IME/util/XT9AddWordFilter;

    invoke-direct {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9AddWordFilter;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 149
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mIsEditMode:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrgWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    new-instance v1, Lcom/htc/android/htcime/ui/AddWord$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/AddWord$1;-><init>(Lcom/htc/android/htcime/ui/AddWord;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWord;->updateButtonState()V

    .line 170
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x2

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mTheWindow:Landroid/view/Window;

    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mTheWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mTheWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mTheWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 86
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    .line 88
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWord;->receiverRegister()V

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWord;->receiverUnRegister()V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method public onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 363
    return-void
.end method

.method public onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 370
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 210
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyPress(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    if-ne p1, v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->submitWord()V

    .line 347
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->finish()V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    if-ne p1, v0, :cond_0

    .line 350
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/AddWord;->mIsEditMode:Z

    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ui/AddWord;->showToast(Ljava/lang/String;)V

    .line 354
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->finish()V

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ui/AddWord;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 186
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->submitWord()V

    .line 188
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->finish()V

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x52

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 193
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mIsEditMode:Z

    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/AddWord;->showToast(Ljava/lang/String;)V

    .line 197
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->finish()V

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/AddWord;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_4
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    .line 205
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWord;->getExtraValue()V

    .line 95
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->keyboardTypeLayoutCheck()V

    .line 96
    return-void
.end method

.method protected submitWord()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mIsEditMode:Z

    if-nez v1, :cond_2

    .line 225
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v12, newWord:Landroid/os/Bundle;
    const-string v1, "WORD"

    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddWord;->mHTCIME:Lcom/htc/android/htcime/HTCIMEService;

    const-string v3, "addwordforxt9"

    invoke-virtual {v1, v3, v12}, Lcom/htc/android/htcime/HTCIMEService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/AddWord;->showToast(Ljava/lang/String;)V

    .line 258
    .end local v12           #newWord:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local v12       #newWord:Landroid/os/Bundle;
    :cond_1
    const-string v1, "AddWord"

    const-string v3, " mHTCIME is null. Ignore new word insert."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    .end local v12           #newWord:Landroid/os/Bundle;
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 239
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 241
    new-instance v2, Landroid/content/Intent;

    const-string v1, "editWord"

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    .local v2, msg:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 245
    const-string v1, "editTicket"

    iget v3, p0, Lcom/htc/android/htcime/ui/AddWord;->mMyEditTicket:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v1, "wordPos"

    iget v3, p0, Lcom/htc/android/htcime/ui/AddWord;->mEditWordPos:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string v1, "orgWord"

    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddWord;->mOrgWord:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "newWord"

    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddWord;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v11

    .line 253
    .local v11, e:Landroid/os/RemoteException;
    const-string v1, "AddWord"

    const-string v3, "[submitWord] "

    invoke-static {v1, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
