.class public Lcom/android/phone/cdma/HtcCdmaDialog;
.super Landroid/app/Activity;
.source "HtcCdmaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = false

.field public static final DIALOG_ID_HOTSPOT_ERROR:I = 0x4

.field public static final DIALOG_ID_MIP_ERROR:I = 0x1

.field public static final DIALOG_ID_NETWORK_BUSY:I = 0x3

.field public static final DIALOG_ID_NONE:I = 0x0

.field public static final DIALOG_ID_SIGNAL_FADE:I = 0x2

.field public static final DIALOG_ID_UNKNOWN_MCC:I = 0x5

.field public static final DIALOG_SUPPORT_MULTI_LINE:Z = true

.field private static final EVENT_SHOW_DIALOG:I = 0x1

.field private static final EVENT_UPDATE_DIALOG:I = 0x2

.field private static final MOVE_DIALOG_INTO_HIGHER_LAYER:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mCanDisplayed:Z

.field private mDialogId:I

.field private mDialogIntent:Landroid/content/Intent;

.field private mDialogUi_MustHaveType:I

.field private mDisplayed:Ljava/lang/Integer;

.field private mHandler:Landroid/os/Handler;

.field private mIsSense4:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-string v0, "CdmaDlg"

    iput-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDisplayed:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/cdma/HtcCdmaDialog;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDisplayed:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/cdma/HtcCdmaDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/cdma/HtcCdmaDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/cdma/HtcCdmaDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mCanDisplayed:Z

    return v0
.end method

.method public static final closeDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "i"
    .parameter "errorLogPrefix"

    .prologue
    .line 396
    const-class v1, Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    move-object v0, p2

    .line 399
    .local v0, errorLog:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 400
    :cond_0
    const-string v0, "Fail to close dialog: "

    .line 402
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/phone/cdma/HtcCdmaDialog;->triggerDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/android/phone/cdma/HtcCdmaDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/cdma/HtcCdmaDialog$1;-><init>(Lcom/android/phone/cdma/HtcCdmaDialog;)V

    iput-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mHandler:Landroid/os/Handler;

    .line 311
    :cond_0
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create/change dialog, org="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return v0

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogIntent:Landroid/content/Intent;

    .line 222
    const-class v1, Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    iput v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    .line 228
    :goto_1
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/cdma/HtcCdmaDialog;->callback_updateDialogType(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    goto :goto_1
.end method

.method public static final sense_Verison()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    return-object v0
.end method

.method public static final sense_minVersion4()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 346
    :try_start_0
    invoke-static {}, Lcom/android/phone/cdma/HtcCdmaDialog;->sense_Verison()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[.]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, senseVer:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 348
    .local v3, ver:I
    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    const/4 v1, 0x1

    .line 352
    .end local v3           #ver:I
    .local v1, isMinVersion4:Z
    :cond_0
    :goto_0
    return v1

    .line 349
    .end local v1           #isMinVersion4:Z
    :catch_0
    move-exception v0

    .line 350
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #isMinVersion4:Z
    goto :goto_0
.end method

.method public static final startDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "i"
    .parameter "errorLogPrefix"

    .prologue
    .line 388
    move-object v0, p2

    .line 389
    .local v0, errorLog:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 390
    :cond_0
    const-string v0, "Fail to start dialog: "

    .line 392
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/phone/cdma/HtcCdmaDialog;->triggerDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method private static triggerDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "i"
    .parameter "errorLog"

    .prologue
    .line 325
    const/high16 v1, 0x7080

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 330
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, ex:Ljava/lang/Exception;
    const-class v1, Lcom/android/phone/cdma/HtcCdmaDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public callback_createDialog(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "dialogType"
    .parameter "requestedIntent"

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public callback_updateDialogType(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public callback_updateLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public final createAlert(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "iconId"

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mIsSense4:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 372
    invoke-static {}, Lcom/android/phone/cdma/HtcCdmaDialog;->sense_minVersion4()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mIsSense4:Ljava/lang/Boolean;

    .line 374
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v0, :cond_2

    .line 376
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mIsSense4:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mIsSense4:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 377
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 380
    :cond_2
    return-object v0
.end method

.method public final createProgressing(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 3
    .parameter "message"

    .prologue
    .line 358
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .local v0, dlg:Landroid/app/Dialog;
    move-object v1, v0

    .line 359
    check-cast v1, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, p1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 360
    check-cast v1, Lcom/htc/app/HtcProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 367
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public final genericCancelHandler()Landroid/content/DialogInterface$OnCancelListener;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/cdma/HtcCdmaDialog$DialogCancelHandler;-><init>(Lcom/android/phone/cdma/HtcCdmaDialog;Lcom/android/phone/cdma/HtcCdmaDialog$1;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;->callback_updateLogString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, logTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 54
    iput-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;

    .line 88
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/cdma/HtcCdmaDialog;->processIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 90
    .local v1, result:Z
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    if-nez v2, :cond_2

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;->finish()V

    .line 94
    :cond_2
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogIntent:Landroid/content/Intent;

    invoke-virtual {p0, p0, p1, v1}, Lcom/android/phone/cdma/HtcCdmaDialog;->callback_createDialog(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/Dialog;

    move-result-object v0

    .line 158
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-object v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 201
    iget v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    if-eqz v0, :cond_0

    .line 202
    iget v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/cdma/HtcCdmaDialog;->removeDialog(I)V

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mDialogId:I

    .line 99
    .local v0, prevDialogId:I
    invoke-direct {p0, p1}, Lcom/android/phone/cdma/HtcCdmaDialog;->processIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;->createHandler()V

    .line 107
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mCanDisplayed:Z

    .line 152
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    iput-boolean v1, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mCanDisplayed:Z

    .line 125
    invoke-direct {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;->createHandler()V

    .line 126
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 135
    return-void
.end method
