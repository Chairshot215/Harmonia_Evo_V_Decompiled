.class public Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;
.super Landroid/app/Activity;
.source "BackupWithVerizonSnapshotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_BackupWithVerizonSnapshot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private hideProgressBar()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 60
    const v2, 0x7f030021

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->setContentView(I)V

    .line 62
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 63
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 65
    const v2, 0x7f0d0003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 67
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    :cond_0
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 71
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->setupTitle()V

    .line 77
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->setupPrivacyCautionText()V

    .line 78
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->hideProgressBar()V

    .line 79
    return-void
.end method

.method private setupPrivacyCautionText()V
    .locals 2

    .prologue
    .line 91
    const v1, 0x7f0d0010

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, informationText:Landroid/widget/TextView;
    const v1, 0x7f0a0026

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method private setupTitle()V
    .locals 2

    .prologue
    .line 86
    const/high16 v1, 0x7f0d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 98
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->finish()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x7f0d0004
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->initialize()V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    const-string v0, "OOBE_BackupWithVerizonSnapshot"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonSnapshotActivity;->initialize()V

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 135
    const-string v0, "OOBE_BackupWithVerizonSnapshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sparse-switch p1, :sswitch_data_0

    .line 144
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 142
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    const-string v0, "OOBE_BackupWithVerizonSnapshot"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 112
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 117
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 122
    const-string v0, "OOBE_BackupWithVerizonSnapshot"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
