.class public Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;
.super Landroid/app/Activity;
.source "PrivacyCautionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_PrivacyCautionActivity"


# instance fields
.field private mbBackFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->mbBackFinish:Z

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 66
    const v3, 0x7f030021

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->setContentView(I)V

    .line 68
    const v3, 0x7f0d003f

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 70
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 71
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 72
    const/16 v3, 0x29

    invoke-static {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 74
    const v3, 0x7f0d0003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    .local v0, btnBack:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v3, 0x7f0d0004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 78
    .local v1, btnNoLater:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->setupTitle()V

    .line 81
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->setupPrivacyCautionText()V

    .line 82
    return-void
.end method

.method private setupPrivacyCautionText()V
    .locals 2

    .prologue
    .line 90
    const v1, 0x7f0d0010

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, informationText:Landroid/widget/TextView;
    const v1, 0x7f0a0142

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private setupTitle()V
    .locals 2

    .prologue
    .line 85
    const/high16 v1, 0x7f0d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f0a0141

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 97
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->setResult(I)V

    .line 98
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->finish()V

    goto :goto_0

    .line 102
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->finish()V

    goto :goto_0

    .line 95
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
    .line 60
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->initialize()V

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    const-string v1, "OOBE_PrivacyCautionActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->initialize()V

    .line 52
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "SelfFinishBackKeyPressed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->mbBackFinish:Z

    .line 56
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 139
    const-string v1, "OOBE_PrivacyCautionActivity"

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

    .line 141
    sparse-switch p1, :sswitch_data_0

    .line 154
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 143
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 144
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/PrivacyCautionActivity;->setResult(I)V

    .line 145
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 141
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
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    const-string v0, "OOBE_PrivacyCautionActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 116
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 121
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 126
    const-string v0, "OOBE_PrivacyCautionActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method
