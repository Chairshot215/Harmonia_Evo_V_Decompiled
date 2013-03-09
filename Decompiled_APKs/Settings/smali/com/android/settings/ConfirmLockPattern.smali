.class public Lcom/android/settings/ConfirmLockPattern;
.super Landroid/app/Activity;
.source "ConfirmLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$4;,
        Lcom/android/settings/ConfirmLockPattern$Stage;
    }
.end annotation


# static fields
.field public static final FOOTER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer"

.field public static final FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer_wrong"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header_wrong"

.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mHideKeyguard:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHideKeyguard:Z

    .line 241
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$1;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 258
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$2;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPattern;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ConfirmLockPattern;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$304(Lcom/android/settings/ConfirmLockPattern;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmLockPattern;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ConfirmLockPattern;Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ConfirmLockPattern;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 291
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 293
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPattern$3;-><init>(Lcom/android/settings/ConfirmLockPattern;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 312
    return-void
.end method

.method private hideKeyguard(Z)V
    .locals 5
    .parameter "hide"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 159
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 160
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, 0x48

    .line 162
    .local v0, flags:I
    if-eqz p1, :cond_0

    .line 163
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x48

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    return-void

    .line 165
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
    .line 315
    const v0, 0x7f0c08ad

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->initButton(II)V

    .line 317
    return-void
.end method

.method private initButton(II)V
    .locals 2
    .parameter "leftStrId"
    .parameter "rightStrId"

    .prologue
    .line 324
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mCancelButton:Landroid/widget/Button;

    .line 326
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(I)V

    .line 330
    :cond_0
    const v1, 0x7f080032

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 332
    .local v0, nextButton:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 335
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    :cond_1
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    return-void
.end method

.method private updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    const/4 v2, 0x1

    .line 200
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$4;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0ab4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0ab5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0ab6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0ab7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 236
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    .line 347
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, startIntent:Landroid/content/Intent;
    const-string v3, "hideKeyguard"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ConfirmLockPattern;->mHideKeyguard:Z

    .line 99
    iget-boolean v3, p0, Lcom/android/settings/ConfirmLockPattern;->mHideKeyguard:Z

    if-eqz v3, :cond_0

    .line 100
    invoke-direct {p0, v4}, Lcom/android/settings/ConfirmLockPattern;->hideKeyguard(Z)V

    .line 104
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmLockPattern;->requestWindowFeature(I)Z

    .line 105
    const v3, 0x7f04001d

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPattern;->setContentView(I)V

    .line 107
    const v3, 0x7f080028

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    .line 108
    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 109
    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    .line 110
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;->initButton()V

    .line 111
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v3, 0x7f08002e

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 117
    .local v2, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 121
    const-string v3, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    .line 122
    const-string v3, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    .line 123
    const-string v3, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 124
    const-string v3, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 127
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 129
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 130
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 131
    sget-object v3, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v3}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 133
    if-eqz p1, :cond_4

    .line 134
    const-string v3, "num_wrong_attempts"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    .line 144
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v3, v5

    .line 127
    goto :goto_0

    .line 139
    :cond_4
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHideKeyguard:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->hideKeyguard(Z)V

    .line 151
    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHideKeyguard:Z

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 155
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 185
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 193
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 175
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    return-void
.end method
