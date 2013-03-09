.class public Lcom/android/settings/ChooseLockPatternTutorial;
.super Landroid/app/Activity;
.source "ChooseLockPatternTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNextButton:Landroid/widget/Button;

.field private mSkipButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f0c0acd

    const v1, 0x7f0c0ace

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->initButton(II)V

    .line 79
    return-void
.end method

.method private initButton(II)V
    .locals 1
    .parameter "leftStrId"
    .parameter "rightStrId"

    .prologue
    .line 86
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 92
    :cond_0
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 100
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->initButton()V

    .line 54
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 62
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPatternTutorial;->setResult(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 67
    .local v1, isFallback:Z
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockPatternExample;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 36
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    if-nez p1, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_fallback"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    .local v1, isFallback:Z
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    const-string v3, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 48
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isFallback:Z
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->initViews()V

    goto :goto_0
.end method
