.class public Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_WelcomeActivity"


# instance fields
.field private mbBackFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->mbBackFinish:Z

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 67
    const v3, 0x7f030021

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->setContentView(I)V

    .line 69
    const v3, 0x7f0d003f

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 71
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 72
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 73
    const/16 v3, 0x2a

    invoke-static {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 75
    const v3, 0x7f0d0003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    .local v0, btnBack:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v3, 0x7f0d0004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 79
    .local v1, btnNoLater:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->setupTitle()V

    .line 82
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->setupWelcomeMessage()V

    .line 83
    return-void
.end method

.method private setupTitle()V
    .locals 2

    .prologue
    .line 86
    const/high16 v1, 0x7f0d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f0a013d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method private setupWelcomeMessage()V
    .locals 12

    .prologue
    .line 91
    const v10, 0x7f0d0010

    invoke-virtual {p0, v10}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 92
    .local v9, welcomeMessage:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a013e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, preface:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, oobeOperation:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a013f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, notice1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0140

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, notice2:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v8, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 101
    .local v6, operationMessage:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v6           #operationMessage:Ljava/lang/String;
    :cond_0
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 115
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->finish()V

    goto :goto_0

    .line 120
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->finish()V

    goto :goto_0

    .line 113
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
    .line 61
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->initialize()V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const-string v1, "OOBE_WelcomeActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->initialize()V

    .line 53
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 55
    const-string v1, "SelfFinishBackKeyPressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->mbBackFinish:Z

    .line 57
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 157
    const-string v1, "OOBE_WelcomeActivity"

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

    .line 159
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 161
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 162
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/WelcomeActivity;->setResult(I)V

    .line 163
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 159
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
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    const-string v0, "OOBE_WelcomeActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 134
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 139
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 144
    const-string v0, "OOBE_WelcomeActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method
