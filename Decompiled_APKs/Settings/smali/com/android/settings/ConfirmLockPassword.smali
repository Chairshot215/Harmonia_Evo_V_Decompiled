.class public Lcom/android/settings/ConfirmLockPassword;
.super Landroid/app/Activity;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mHideKeyguard:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHideKeyguard:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPassword;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 4

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, pin:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    .line 206
    const-string v2, "Neil"

    const-string v3, "password is correct"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    .line 211
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 209
    :cond_0
    const v2, 0x7f0c0ab6

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPassword;->showError(I)V

    goto :goto_0
.end method

.method private hideKeyguard(Z)V
    .locals 5
    .parameter "hide"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 99
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 100
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, 0x48

    .line 102
    .local v0, flags:I
    if-eqz p1, :cond_0

    .line 103
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x48

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    return-void

    .line 105
    :cond_0
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x480001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 255
    const v0, 0x7f0c08ad

    const v1, 0x7f0c08a2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPassword;->initButton(II)V

    .line 257
    return-void
.end method

.method private initButton(II)V
    .locals 1
    .parameter "leftStrId"
    .parameter "rightStrId"

    .prologue
    .line 264
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    .line 266
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 270
    :cond_0
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mNextButton:Landroid/widget/Button;

    .line 272
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 278
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 12

    .prologue
    const/high16 v11, 0x2

    const/16 v10, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 113
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    .line 114
    .local v4, storedQuality:I
    const/high16 v6, 0x4

    if-eq v6, v4, :cond_0

    const/high16 v6, 0x5

    if-ne v6, v4, :cond_2

    :cond_0
    move v2, v8

    .line 116
    .local v2, isAlpha:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 117
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 118
    .local v1, creationHardKeyboardHidden:I
    if-nez v2, :cond_1

    if-ne v1, v8, :cond_3

    .line 119
    :cond_1
    const v6, 0x7f040016

    invoke-virtual {p0, v6}, Lcom/android/settings/ConfirmLockPassword;->setContentView(I)V

    .line 131
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->initButton()V

    .line 132
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v6, 0x7f080029

    invoke-virtual {p0, v6}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 136
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 138
    const v6, 0x7f08002a

    invoke-virtual {p0, v6}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    iput-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    .line 139
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setTargetView(Landroid/view/View;)V

    .line 141
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibrate()V

    .line 143
    const v6, 0x7f080028

    invoke-virtual {p0, v6}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 145
    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const v6, 0x7f0c0aa8

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(I)V

    .line 149
    if-eqz v2, :cond_5

    .line 158
    :goto_3
    if-ne v1, v8, :cond_6

    .line 160
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v6, v10}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    .line 184
    :goto_4
    return-void

    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #creationHardKeyboardHidden:I
    .end local v2           #isAlpha:Z
    :cond_2
    move v2, v7

    .line 114
    goto :goto_0

    .line 122
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #creationHardKeyboardHidden:I
    .restart local v2       #isAlpha:Z
    :cond_3
    const v6, 0x7f04001a

    invoke-virtual {p0, v6}, Lcom/android/settings/ConfirmLockPassword;->setContentView(I)V

    goto :goto_1

    .line 145
    :cond_4
    const v6, 0x7f0c0aaa

    goto :goto_2

    .line 152
    :cond_5
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v11, v11}, Landroid/view/Window;->setFlags(II)V

    goto :goto_3

    .line 163
    :cond_6
    if-eqz v2, :cond_7

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 167
    .local v5, theWindow:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 168
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x14

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 170
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v6, v10}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    goto :goto_4

    .line 175
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #theWindow:Landroid/view/Window;
    :cond_7
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword;->mPinKeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v6, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    goto :goto_4
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$1;-><init>(Lcom/android/settings/ConfirmLockPassword;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPassword;->setResult(I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "hideKeyguard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword;->mHideKeyguard:Z

    .line 75
    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword;->mHideKeyguard:Z

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->hideKeyguard(Z)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->initViews()V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHideKeyguard:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->hideKeyguard(Z)V

    .line 88
    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword;->mHideKeyguard:Z

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 247
    if-nez p2, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    return-void
.end method
