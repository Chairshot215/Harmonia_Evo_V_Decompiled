.class public Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;
.super Landroid/app/Activity;
.source "DataSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AUTO_DATA_SYNC:Ljava/lang/String; = "oobe_auto_sync_check"

.field private static final TAG:Ljava/lang/String; = "OOBE_DataSyncActivity"


# instance fields
.field private mbBackFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->mbBackFinish:Z

    return-void
.end method

.method private initialize()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 76
    const-string v8, "SelfFinishBackKeyPressed"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->mbBackFinish:Z

    .line 79
    :cond_0
    const v8, 0x7f03000c

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->setContentView(I)V

    .line 81
    const v8, 0x7f0d003f

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 83
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 84
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 85
    const/4 v8, 0x7

    invoke-static {p0, v2, v8}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 87
    const v8, 0x7f0d0004

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 88
    .local v3, next:Landroid/widget/Button;
    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_1
    const v8, 0x7f0d0003

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_2
    const v8, 0x7f0d0019

    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    .line 96
    .local v4, sync:Landroid/widget/CheckedTextView;
    if-eqz v4, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oobe_auto_sync_check"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 99
    .local v5, value:I
    const-string v8, "OOBE_DataSyncActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oobe_auto_sync_check = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-nez v5, :cond_4

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 101
    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    .line 102
    invoke-virtual {v4, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .end local v5           #value:I
    :cond_3
    return-void

    .restart local v5       #value:I
    :cond_4
    move v6, v7

    .line 100
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 151
    const v2, 0x7f0d0019

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 152
    .local v1, sync:Landroid/widget/CheckedTextView;
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 154
    .local v0, b:Z
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oobe_auto_sync_check"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    .end local v0           #b:Z
    :cond_0
    return-void

    .line 154
    .restart local v0       #b:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 161
    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->setResult(I)V

    .line 162
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->finish()V

    goto :goto_0

    .line 166
    :sswitch_1
    const v1, 0x7f0d0019

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 167
    .local v0, sync:Landroid/widget/CheckedTextView;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 171
    .end local v0           #sync:Landroid/widget/CheckedTextView;
    :sswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->setResult(I)V

    .line 172
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->finish()V

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_2
        0x7f0d0004 -> :sswitch_0
        0x7f0d0019 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->initialize()V

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    const-string v0, "OOBE_DataSyncActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->initialize()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    const-string v0, "OOBE_DataSyncActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 193
    const-string v1, "OOBE_DataSyncActivity"

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

    .line 195
    sparse-switch p1, :sswitch_data_0

    .line 208
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 197
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 198
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/DataSyncActivity;->setResult(I)V

    .line 199
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 180
    const-string v0, "OOBE_DataSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 184
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    const-string v0, "OOBE_DataSyncActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
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
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    const-string v0, "OOBE_DataSyncActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 139
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 115
    const-string v0, "OOBE_DataSyncActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 144
    const-string v0, "OOBE_DataSyncActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method
