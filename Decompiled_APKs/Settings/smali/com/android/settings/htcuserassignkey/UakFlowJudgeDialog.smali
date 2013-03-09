.class public Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "UakFlowJudgeDialog.java"


# static fields
.field public static ACTION_UAK_HW_KEY_RESPONSER:Ljava/lang/String; = null

.field public static EXTRA_UAK_HW_KEY_PRESS_TYPE:Ljava/lang/String; = null

.field private static final FINISH_DELAY:I = 0x1f4

.field private static TAG:Ljava/lang/String;


# instance fields
.field handler:Landroid/os/Handler;

.field protected mHtcAlert:Lcom/htc/app/HtcAlertController;

.field protected mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

.field protected mkeyCode_1b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "UakFlowJudgeDlg"

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->TAG:Ljava/lang/String;

    .line 28
    const-string v0, "com.android.settings.hardwareKeyResponser"

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->ACTION_UAK_HW_KEY_RESPONSER:Ljava/lang/String;

    .line 30
    const-string v0, "com.android.settings.extra.UAK_HW_KEY_PRESS_TYPE"

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->EXTRA_UAK_HW_KEY_PRESS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mkeyCode_1b:I

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public finishactivity()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$3;-><init>(Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedState"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v9}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->requestWindowFeature(I)Z

    .line 41
    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->isSetupRunning()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->finish()V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 51
    .local v8, target:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 52
    .local v4, isLongPress:Z
    const/4 v3, 0x1

    .line 53
    .local v3, isConfirmstyle:Z
    if-eqz v8, :cond_2

    .line 54
    const-string v11, "com.android.settings.extra.UAK_HW_KEY_INDEX"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mkeyCode_1b:I

    .line 55
    sget-object v11, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->EXTRA_UAK_HW_KEY_PRESS_TYPE:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ne v9, v11, :cond_5

    move v4, v9

    .line 61
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    invoke-direct {v1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;-><init>()V

    .line 62
    .local v1, data:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    iget v9, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mkeyCode_1b:I

    invoke-static {p0, v9, v1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 65
    iget-object v7, v1, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 66
    .local v7, record:Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_3
    const/4 v3, 0x0

    .line 94
    :cond_4
    :goto_2
    new-instance v9, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-direct {v9, p0, p0, v11}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v9, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    .line 95
    new-instance v9, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v9, p0}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 97
    iget-object v6, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 98
    .local v6, params:Lcom/htc/app/HtcAlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c0505

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v6, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v3, :cond_9

    const v9, 0x7f0c051d

    :goto_3
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 100
    .local v5, msg:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 101
    .local v0, composeMsg:Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v6, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 108
    :goto_4
    const v9, 0x7f0c0378

    invoke-virtual {p0, v9}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v6, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 109
    new-instance v9, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$1;

    invoke-direct {v9, p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$1;-><init>(Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;)V

    iput-object v9, v6, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    const v9, 0x7f0c0b08

    invoke-virtual {p0, v9}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v6, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 117
    new-instance v9, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;

    invoke-direct {v9, p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;-><init>(Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;)V

    iput-object v9, v6, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->setupAlert(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .end local v0           #composeMsg:Ljava/lang/String;
    .end local v1           #data:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    .end local v5           #msg:Ljava/lang/CharSequence;
    .end local v6           #params:Lcom/htc/app/HtcAlertController$AlertParams;
    .end local v7           #record:Ljava/lang/String;
    :cond_5
    move v4, v10

    .line 55
    goto/16 :goto_1

    .line 68
    .restart local v1       #data:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    .restart local v7       #record:Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_4

    .line 81
    new-instance v2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    invoke-direct {v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;-><init>()V

    .line 82
    .local v2, data1:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    iget v9, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mkeyCode_1b:I

    invoke-static {p0, v9, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 83
    sget-object v9, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->TAG:Ljava/lang/String;

    const-string v10, "Failed to get persistent AP name problem"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 86
    :cond_7
    iget-object v7, v2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 87
    if-eqz v7, :cond_8

    const-string v9, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 88
    :cond_8
    sget-object v9, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->TAG:Ljava/lang/String;

    const-string v11, "No relative AP name problem"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c051f

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 99
    .end local v2           #data1:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    .restart local v6       #params:Lcom/htc/app/HtcAlertController$AlertParams;
    :cond_9
    const v9, 0x7f0c051e

    goto/16 :goto_3

    .line 106
    .restart local v0       #composeMsg:Ljava/lang/String;
    .restart local v5       #msg:Ljava/lang/CharSequence;
    :cond_a
    iput-object v5, v6, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method protected setupAlert(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/app/HtcAlertController;->installContent()V

    .line 144
    if-eqz p1, :cond_0

    .line 147
    :cond_0
    return-void
.end method
