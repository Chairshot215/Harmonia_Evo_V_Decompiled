.class public Lcom/android/settings/ChooseLockPassword;
.super Landroid/app/Activity;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field public static final PASSWORD_MAX_KEY:Ljava/lang/String; = "lockscreen.password_max"

.field public static final PASSWORD_MIN_KEY:Ljava/lang/String; = "lockscreen.password_min"

.field private static final PREFIX_TAG:Ljava/lang/String; = "ChooseLockPassword"

.field static final RESULT_FINISHED:I = 0x1

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 61
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 63
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 65
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 85
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 351
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, pin:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const/4 v0, 0x0

    .line 356
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_3

    .line 357
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    if-nez v0, :cond_2

    .line 359
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 360
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 361
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 384
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/ChooseLockPassword;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_2

    .line 364
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 368
    .local v1, isFallback:Z
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->shiftPasswordHistory()V

    .line 370
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 371
    const v4, 0x7f0c08b0

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 372
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v4, v2, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 373
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_1

    .line 376
    .end local v1           #isFallback:Z
    :cond_4
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 377
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 378
    .local v3, tmp:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 379
    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 476
    const v0, 0x7f0c08ad

    const v1, 0x7f0c08a2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ChooseLockPassword;->initButton(II)V

    .line 478
    return-void
.end method

.method private initButton(II)V
    .locals 1
    .parameter "leftStrId"
    .parameter "rightStrId"

    .prologue
    .line 484
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    .line 486
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 490
    :cond_0
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    .line 494
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 500
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 10

    .prologue
    const/high16 v9, 0x2

    const/16 v8, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 142
    const/high16 v4, 0x4

    iget v7, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-eq v4, v7, :cond_0

    const/high16 v4, 0x5

    iget v7, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v4, v7, :cond_2

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 145
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 146
    .local v1, creationHardKeyboardHidden:I
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-nez v4, :cond_1

    if-ne v1, v6, :cond_3

    .line 147
    :cond_1
    const v4, 0x7f040016

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->setContentView(I)V

    .line 157
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->initButton()V

    .line 159
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v4, 0x7f080028

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 166
    const v4, 0x7f080029

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    .line 167
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 168
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v7, 0x81

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 171
    const v4, 0x7f08002a

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    .line 172
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setTargetView(Landroid/view/View;)V

    .line 174
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibrate()V

    .line 176
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v4, :cond_4

    .line 189
    :goto_2
    if-ne v1, v6, :cond_5

    .line 191
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v4, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    .line 219
    :goto_3
    return-void

    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #creationHardKeyboardHidden:I
    :cond_2
    move v4, v5

    .line 142
    goto :goto_0

    .line 150
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #creationHardKeyboardHidden:I
    :cond_3
    const v4, 0x7f04001a

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->setContentView(I)V

    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 182
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_2

    .line 195
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v4, :cond_6

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 198
    .local v3, theWindow:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 199
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x14

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 201
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 202
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v4, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    goto :goto_3

    .line 206
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #theWindow:Landroid/view/Window;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v4, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    goto :goto_3
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ChooseLockPassword$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/ChooseLockPassword$1;-><init>(Lcom/android/settings/ChooseLockPassword;Lcom/android/settings/ChooseLockPassword$Stage;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 434
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 436
    .local v1, length:I
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v7, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v7, :cond_3

    if-lez v1, :cond_3

    .line 437
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v1, v4, :cond_1

    .line 438
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0c089f

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 456
    .end local v2           #msg:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockPassword$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 457
    return-void

    .line 438
    :cond_0
    const v4, 0x7f0c08a0

    goto :goto_0

    .line 443
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 445
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 448
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0c08a1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 449
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 453
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v4, v4, Lcom/android/settings/ChooseLockPassword$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 454
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 453
    :cond_4
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v4, v4, Lcom/android/settings/ChooseLockPassword$Stage;->numericHint:I

    goto :goto_2

    :cond_5
    move v4, v6

    .line 454
    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "password"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    iget v13, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v12, v13, :cond_2

    .line 272
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v9, :cond_1

    const v9, 0x7f0c089f

    :goto_0
    new-array v10, v10, [Ljava/lang/Object;

    iget v12, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 347
    :cond_0
    :goto_1
    return-object v9

    .line 272
    :cond_1
    const v9, 0x7f0c08a0

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    iget v13, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    if-le v12, v13, :cond_4

    .line 277
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v9, :cond_3

    const v9, 0x7f0c08a3

    :goto_2
    new-array v10, v10, [Ljava/lang/Object;

    iget v12, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    const v9, 0x7f0c08a4

    goto :goto_2

    .line 281
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordAllowSimple(Landroid/content/ComponentName;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSimpleDevicePassword(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 282
    const v9, 0x7f0c00d4

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 285
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordComplexity(Landroid/content/ComponentName;)I

    move-result v12

    iget-object v13, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePasswordComplexCharacterGroup(Ljava/lang/String;)I

    move-result v13

    if-le v12, v13, :cond_6

    iget-boolean v12, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v12, :cond_6

    .line 287
    const v12, 0x7f0c00d5

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordComplexity(Landroid/content/ComponentName;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v11

    invoke-virtual {p0, v12, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 289
    :cond_6
    const/4 v4, 0x0

    .line 290
    .local v4, hasAlpha:Z
    const/4 v5, 0x0

    .line 291
    .local v5, hasDigit:Z
    const/4 v6, 0x0

    .line 293
    .local v6, hasSymbol:Z
    const/4 v3, 0x0

    .line 295
    .local v3, complex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_d

    .line 296
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 298
    .local v2, c:C
    const/16 v12, 0x20

    if-le v2, v12, :cond_7

    const/16 v12, 0x7f

    if-le v2, v12, :cond_8

    .line 299
    :cond_7
    const v9, 0x7f0c08a7

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 301
    :cond_8
    const/16 v12, 0x30

    if-lt v2, v12, :cond_9

    const/16 v12, 0x39

    if-gt v2, v12, :cond_9

    .line 302
    const/4 v5, 0x1

    .line 304
    add-int/lit8 v3, v3, 0x1

    .line 295
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 306
    :cond_9
    const/16 v12, 0x41

    if-lt v2, v12, :cond_a

    const/16 v12, 0x5a

    if-le v2, v12, :cond_b

    :cond_a
    const/16 v12, 0x61

    if-lt v2, v12, :cond_c

    const/16 v12, 0x7a

    if-gt v2, v12, :cond_c

    .line 307
    :cond_b
    const/4 v4, 0x1

    goto :goto_4

    .line 309
    :cond_c
    const/4 v6, 0x1

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 315
    .end local v2           #c:C
    :cond_d
    const/high16 v12, 0x2

    iget v13, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v12, v13, :cond_e

    or-int v12, v4, v6

    if-eqz v12, :cond_e

    .line 318
    const v9, 0x7f0c08a5

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 320
    :cond_e
    const/high16 v12, 0x4

    iget v13, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v12, v13, :cond_10

    move v0, v10

    .line 322
    .local v0, alphabetic:Z
    :goto_5
    const/high16 v12, 0x5

    iget v13, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v12, v13, :cond_11

    move v1, v10

    .line 324
    .local v1, alphanumeric:Z
    :goto_6
    const/4 v8, 0x0

    .line 325
    .local v8, symbolic:Z
    if-nez v0, :cond_f

    if-eqz v1, :cond_12

    :cond_f
    if-nez v4, :cond_12

    .line 326
    const v9, 0x7f0c08a8

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    .end local v8           #symbolic:Z
    :cond_10
    move v0, v11

    .line 320
    goto :goto_5

    .restart local v0       #alphabetic:Z
    :cond_11
    move v1, v11

    .line 322
    goto :goto_6

    .line 328
    .restart local v1       #alphanumeric:Z
    .restart local v8       #symbolic:Z
    :cond_12
    if-eqz v1, :cond_13

    if-nez v5, :cond_13

    .line 329
    const v9, 0x7f0c08a9

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 335
    :cond_13
    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordComplexity()I

    move-result v12

    if-ge v3, v12, :cond_14

    .line 336
    const v9, 0x7f0c03b9

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordComplexity()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 343
    :cond_14
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 344
    const v9, 0x7f0c03b3

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v0, v1, :cond_0

    .line 462
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 465
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 469
    return-void
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 503
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 505
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 506
    const-string v0, "ChooseLockPassword"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.password_type"

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.password_min"

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.password_max"

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "confirm_credentials"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 122
    .local v0, confirmCredentials:Z
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    .line 123
    .local v2, minMode:I
    iget v3, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ge v3, v2, :cond_0

    .line 124
    iput v2, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v1

    .line 127
    .local v1, minLength:I
    iget v3, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v3, v1, :cond_1

    .line 128
    iput v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->initViews()V

    .line 131
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 132
    if-nez p1, :cond_2

    .line 133
    sget-object v3, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 134
    if-eqz v0, :cond_2

    .line 135
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 139
    :cond_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 419
    if-nez p2, :cond_1

    .line 421
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    .line 427
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v1, "ui_stage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, state:Ljava/lang/String;
    const-string v1, "first_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 242
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 244
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 226
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 231
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 473
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 262
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 263
    return-void
.end method
