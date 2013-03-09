.class public Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;
.super Landroid/app/Activity;
.source "TransferDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RESULT_FAIL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OOBE_TransferData"

.field private static final TRANSFER_DATA_HAS_RUN:Ljava/lang/String; = "OOBE_TransferData_has_run"


# instance fields
.field private mBtnBack:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mBtnTransferData:Landroid/widget/Button;

.field private mIntent:Landroid/content/Intent;

.field private mLaunchByIcon:Z

.field private mProgressImage:Landroid/widget/ImageView;

.field private mStepSetting:Lcom/htc/android/htcsetupwizard/StepSetting;

.field private mbBackFinish:Z

.field private mbFinalPage:Z

.field private progressBarLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->progressBarLength:I

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mIntent:Landroid/content/Intent;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mbBackFinish:Z

    .line 45
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mLaunchByIcon:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mbFinalPage:Z

    return-void
.end method

.method private initialize()V
    .locals 10

    .prologue
    const v9, 0x7f0d004d

    const v7, 0x7f0d0005

    const/4 v8, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 66
    const-string v6, "SelfFinishBackKeyPressed"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mbBackFinish:Z

    .line 67
    const-string v6, "LaunchByIcon"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mLaunchByIcon:Z

    .line 68
    const-string v6, "FinalPage"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mbFinalPage:Z

    .line 70
    :cond_0
    const v6, 0x7f03002e

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->setContentView(I)V

    .line 73
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isFlyer:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isExpress:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isExpressKT:Z

    if-eqz v6, :cond_6

    .line 75
    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, content:Landroid/widget/TextView;
    const v6, 0x7f0a0125

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 89
    .end local v1           #content:Landroid/widget/TextView;
    :cond_2
    :goto_0
    const v6, 0x7f0d003f

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 91
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 92
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 93
    const/16 v6, 0x14

    invoke-static {p0, v3, v6}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 95
    const v6, 0x7f0d0009

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnNext:Landroid/widget/Button;

    .line 96
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnNext:Landroid/widget/Button;

    if-eqz v6, :cond_3

    .line 97
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mbFinalPage:Z

    if-eqz v6, :cond_7

    .line 99
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnNext:Landroid/widget/Button;

    const v7, 0x7f0a0013

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 106
    :cond_3
    :goto_1
    const v6, 0x7f0d0003

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnBack:Landroid/widget/Button;

    .line 107
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnBack:Landroid/widget/Button;

    if-eqz v6, :cond_4

    .line 109
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mbBackFinish:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnBack:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    :cond_4
    :goto_2
    invoke-virtual {p0, v9}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnTransferData:Landroid/widget/Button;

    .line 114
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnTransferData:Landroid/widget/Button;

    if-eqz v6, :cond_5

    .line 115
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnTransferData:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_5
    return-void

    .line 79
    .end local v3           #layout:Landroid/widget/LinearLayout;
    :cond_6
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isChaCha:Z

    if-eqz v6, :cond_2

    .line 81
    const/high16 v6, 0x7f0d

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 82
    .local v5, title:Landroid/widget/TextView;
    const v6, 0x7f0a0123

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-virtual {p0, v7}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    .restart local v1       #content:Landroid/widget/TextView;
    const v6, 0x7f0a0126

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 85
    invoke-virtual {p0, v9}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    .local v0, button:Landroid/widget/Button;
    const v6, 0x7f0a0128

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 100
    .end local v0           #button:Landroid/widget/Button;
    .end local v1           #content:Landroid/widget/TextView;
    .end local v5           #title:Landroid/widget/TextView;
    .restart local v3       #layout:Landroid/widget/LinearLayout;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "OOBE_TransferData_has_run"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, szNext:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    .end local v4           #szNext:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "OOBE_TransferData"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 123
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 163
    const-string v1, "OOBE_TransferData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult, requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-ne v4, p2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, szNext:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OOBE_TransferData_has_run"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->finish()V

    .line 170
    .end local v0           #szNext:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 129
    :sswitch_0
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->finish()V

    goto :goto_0

    .line 135
    :sswitch_1
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->setResult(ILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->finish()V

    goto :goto_0

    .line 141
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.futuredial"

    const-string v4, "com.futuredial.ui.DMIUI"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    :try_start_0
    const-string v2, "com.futuredial.TransferData.StartType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "OOBE_TransferData"

    const-string v3, " futuredial transfer data apk doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_TransferData"

    const-string v3, " futuredial transfer data , exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "OOBE_TransferData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " futuredial transfer data exception cause by, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v2, "OOBE_TransferData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " futuredial transfer data exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_1
        0x7f0d0009 -> :sswitch_0
        0x7f0d004d -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->initialize()V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const-string v0, "OOBE_TransferData"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->initialize()V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 188
    const-string v1, "OOBE_TransferData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sparse-switch p1, :sswitch_data_0

    .line 203
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 192
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mbBackFinish:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->mLaunchByIcon:Z

    if-eqz v1, :cond_0

    .line 194
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TransferDataActivity;->setResult(I)V

    .line 195
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 190
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
    .line 175
    const-string v0, "OOBE_TransferData"

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

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 182
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 179
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method
