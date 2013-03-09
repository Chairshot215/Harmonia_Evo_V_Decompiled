.class public Lcom/htc/lockscreen/HtcAccountUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "HtcAccountUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field public static final LAUCH_CHOOSE_LOCK_DIRECT:Ljava/lang/String; = "launch_lock_direct"

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "HtcAccountUnlockScreen"


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mInstructions:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mTopHeader:Landroid/widget/TextView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"
    .parameter "pluginContext"

    .prologue
    const v6, 0x2080046

    const/4 v5, 0x1

    .line 102
    invoke-direct {p0, p6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 103
    const-string v1, "HtcAccountUnlockScreen"

    const-string v2, "HtcAccountUnlockScreen"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-object p4, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 105
    iput-object p5, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    const v1, 0x7f0a001a

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1040303

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    const v1, 0x7f0a001c

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0a001f

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    .line 118
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v4}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 119
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    const v1, 0x7f0a001d

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 122
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mOk:Landroid/widget/Button;

    .line 125
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lockscreen/app/ThemeHelper;->getThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, theme:Landroid/content/Context;
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    const-string v3, "search_input_field_selector"

    invoke-static {v0, v2, v3, v6}, Lcom/htc/lockscreen/app/ThemeHelper;->getDrawable(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    const-string v3, "search_input_field_selector"

    invoke-static {v0, v2, v3, v6}, Lcom/htc/lockscreen/app/ThemeHelper;->getDrawable(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 134
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 142
    :goto_1
    iput-object p3, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 143
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 144
    return-void

    .line 111
    .end local v0           #theme:Landroid/content/Context;
    :cond_0
    const v1, 0x1040302

    goto/16 :goto_0

    .line 139
    .restart local v0       #theme:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lockscreen/HtcAccountUnlockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x7530

    invoke-interface {v0, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 305
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, login:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, password:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 308
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    .line 338
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 313
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v2, options:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;-><init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 13
    .parameter "username"

    .prologue
    const/16 v12, 0x40

    .line 268
    iget-object v10, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    invoke-virtual {v10, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 274
    .local v2, accounts:[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 275
    .local v4, bestAccount:Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 276
    .local v5, bestScore:I
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v0, v3, v7

    .line 277
    .local v0, a:Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 278
    .local v9, score:I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 279
    const/4 v9, 0x4

    .line 293
    :cond_0
    :goto_1
    if-le v9, v5, :cond_5

    .line 294
    move-object v4, v0

    .line 295
    move v5, v9

    .line 276
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 280
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 281
    const/4 v9, 0x3

    goto :goto_1

    .line 282
    :cond_3
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_0

    .line 283
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 284
    .local v6, i:I
    if-ltz v6, :cond_0

    .line 285
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, aUsername:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 287
    const/4 v9, 0x2

    goto :goto_1

    .line 288
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 289
    const/4 v9, 0x1

    goto :goto_1

    .line 296
    .end local v1           #aUsername:Ljava/lang/String;
    .end local v6           #i:I
    :cond_5
    if-ne v9, v5, :cond_1

    .line 297
    const/4 v4, 0x0

    goto :goto_2

    .line 300
    .end local v0           #a:Landroid/accounts/Account;
    .end local v9           #score:I
    :cond_6
    return-object v4
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 341
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 343
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x104030a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 346
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 347
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 349
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/lockscreen/HtcAccountUnlockScreen$1;-><init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 147
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 150
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 246
    :goto_0
    const/4 v0, 0x1

    .line 248
    :goto_1
    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 196
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->asyncCheckPassword()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 203
    :cond_1
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public onDeviceLockChange(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 382
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 399
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 361
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "serviceStatus"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 377
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 365
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 179
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 180
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 369
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 154
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method
