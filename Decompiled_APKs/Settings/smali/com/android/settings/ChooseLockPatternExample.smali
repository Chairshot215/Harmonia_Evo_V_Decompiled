.class public Lcom/android/settings/ChooseLockPatternExample;
.super Landroid/app/Activity;
.source "ChooseLockPatternExample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final START_DELAY:J = 0x3e8L

.field protected static final TAG:Ljava/lang/String; = "Settings"


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/view/View;

.field private mNextButton:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSkipButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/android/settings/ChooseLockPatternExample$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPatternExample$1;-><init>(Lcom/android/settings/ChooseLockPatternExample;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockPatternExample;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 104
    const v0, 0x7f0c0acd

    const v1, 0x7f0c0ace

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ChooseLockPatternExample;->initButton(II)V

    .line 106
    return-void
.end method

.method private initButton(II)V
    .locals 1
    .parameter "leftStrId"
    .parameter "rightStrId"

    .prologue
    .line 113
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 119
    :cond_0
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 127
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternExample;->initButton()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 91
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 64
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPatternExample;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 70
    .local v1, isFallback:Z
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternExample;->initViews()V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 97
    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 101
    :cond_0
    return-void
.end method
