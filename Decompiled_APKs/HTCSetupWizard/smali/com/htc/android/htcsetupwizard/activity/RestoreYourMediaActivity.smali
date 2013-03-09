.class public Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;
.super Landroid/app/Activity;
.source "RestoreYourMediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_RestoreYourMediaActivity"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private hideProgressBar()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 61
    const v2, 0x7f030022

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->setContentView(I)V

    .line 63
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 64
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 66
    const v2, 0x7f0d0003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 67
    .local v1, btnBack:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 68
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    :cond_0
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    .local v0, btNext:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_1
    const v2, 0x7f0d0040

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 78
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->hideProgressBar()V

    .line 79
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->setResult(I)V

    .line 94
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->setResult(I)V

    goto :goto_1

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0004
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->initialize()V

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    const-string v0, "OOBE_RestoreYourMediaActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/RestoreYourMediaActivity;->initialize()V

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 130
    const-string v0, "OOBE_RestoreYourMediaActivity"

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

    .line 132
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 132
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
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 123
    const-string v0, "OOBE_RestoreYourMediaActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 107
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 112
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 117
    const-string v0, "OOBE_RestoreYourMediaActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
