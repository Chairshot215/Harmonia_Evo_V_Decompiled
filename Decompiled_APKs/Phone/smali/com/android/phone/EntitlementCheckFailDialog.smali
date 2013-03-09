.class public Lcom/android/phone/EntitlementCheckFailDialog;
.super Landroid/app/Activity;
.source "EntitlementCheckFailDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CODE_AVALIABLE:Z = false

.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = false

.field private static final DIALOG_ID_ERROR_33:I = 0x1

.field private static final DIALOG_ID_ERROR_other:I = 0x2

.field private static final DIALOG_ID_NONE:I = 0x0

.field public static final INTENT_EXTRA_ERR:Ljava/lang/String; = "errType"

.field private static final LOG_TAG:Ljava/lang/String; = "EntitlementFail"

.field private static final MOVE_DIALOG_INTO_HIGHER_LAYER:Z


# instance fields
.field private mDialogId:I

.field private mDisplayed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    sput-boolean v0, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 272
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/EntitlementCheckFailDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    return v0
.end method

.method private processIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 249
    sget-boolean v2, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    if-eqz v2, :cond_0

    .line 250
    if-nez p1, :cond_1

    .line 251
    const-string v1, "EntitlementFail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create/change dialog, org="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x0

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    const-string v2, "errType"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 258
    .local v0, errCode:I
    packed-switch v0, :pswitch_data_0

    .line 264
    :pswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    .line 267
    :goto_1
    const-string v2, "EntitlementFail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChangeDialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :pswitch_1
    iput v1, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    goto :goto_1

    .line 258
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    sget-boolean v0, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    if-eqz v0, :cond_0

    .line 111
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget-boolean v1, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    if-eqz v1, :cond_2

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/EntitlementCheckFailDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EntitlementCheckFailDialog;->processIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 69
    .local v0, result:Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    if-nez v1, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EntitlementCheckFailDialog;->finish()V

    .line 76
    .end local v0           #result:Z
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EntitlementCheckFailDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const v6, 0x1080027

    const/4 v5, 0x1

    .line 149
    sget-boolean v2, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "EntitlementFail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateDialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, dlg:Landroid/app/Dialog;
    const/4 v1, 0x0

    .line 153
    .local v1, dlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 194
    invoke-virtual {p0}, Lcom/android/phone/EntitlementCheckFailDialog;->finish()V

    .line 198
    :goto_0
    if-eqz v0, :cond_0

    .line 228
    .end local v0           #dlg:Landroid/app/Dialog;
    .end local v1           #dlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_0
    :goto_1
    return-object v0

    .line 155
    .restart local v0       #dlg:Landroid/app/Dialog;
    .restart local v1       #dlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00d5

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/phone/EntitlementCheckFailDialog$1;

    invoke-direct {v4, p0}, Lcom/android/phone/EntitlementCheckFailDialog$1;-><init>(Lcom/android/phone/EntitlementCheckFailDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 166
    new-instance v2, Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;

    invoke-direct {v2, p0}, Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;-><init>(Lcom/android/phone/EntitlementCheckFailDialog;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 169
    :pswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00d7

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00d6

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0162

    new-instance v4, Lcom/android/phone/EntitlementCheckFailDialog$3;

    invoke-direct {v4, p0}, Lcom/android/phone/EntitlementCheckFailDialog$3;-><init>(Lcom/android/phone/EntitlementCheckFailDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/phone/EntitlementCheckFailDialog$2;

    invoke-direct {v4, p0}, Lcom/android/phone/EntitlementCheckFailDialog$2;-><init>(Lcom/android/phone/EntitlementCheckFailDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 191
    new-instance v2, Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;

    invoke-direct {v2, p0}, Lcom/android/phone/EntitlementCheckFailDialog$DialogCancelHandler;-><init>(Lcom/android/phone/EntitlementCheckFailDialog;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 228
    .end local v0           #dlg:Landroid/app/Dialog;
    .end local v1           #dlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 234
    sget-boolean v0, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/EntitlementCheckFailDialog;->removeDialog(I)V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    .line 243
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 79
    sget-boolean v1, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    if-eqz v1, :cond_0

    .line 80
    iget v0, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    .line 81
    .local v0, prevDialogId:I
    invoke-direct {p0, p1}, Lcom/android/phone/EntitlementCheckFailDialog;->processIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    .end local v0           #prevDialogId:I
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v0       #prevDialogId:I
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDisplayed:Z

    if-eqz v1, :cond_3

    .line 88
    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/phone/EntitlementCheckFailDialog;->dismissDialog(I)V

    .line 91
    :cond_2
    iget v1, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/EntitlementCheckFailDialog;->showDialog(ILandroid/os/Bundle;)Z

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/phone/EntitlementCheckFailDialog;->removeDialog(I)V

    goto :goto_0

    .line 97
    :cond_3
    iget v1, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/phone/EntitlementCheckFailDialog;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    sget-boolean v0, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDisplayed:Z

    .line 146
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    sget-boolean v0, Lcom/android/phone/EntitlementCheckFailDialog;->CODE_AVALIABLE:Z

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDisplayed:Z

    .line 120
    iget v0, p0, Lcom/android/phone/EntitlementCheckFailDialog;->mDialogId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EntitlementCheckFailDialog;->showDialog(ILandroid/os/Bundle;)Z

    .line 122
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 129
    return-void
.end method
