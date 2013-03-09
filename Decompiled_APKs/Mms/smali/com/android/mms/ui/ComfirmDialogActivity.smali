.class public Lcom/android/mms/ui/ComfirmDialogActivity;
.super Landroid/app/Activity;
.source "ComfirmDialogActivity.java"


# static fields
.field public static final DIALOG_LOW_BALANCE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ComfirmDialogActivity"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/mms/ui/ComfirmDialogActivity;->mTitle:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/mms/ui/ComfirmDialogActivity;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/mms/ui/ComfirmDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComfirmDialogActivity;->mTitle:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/mms/ui/ComfirmDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComfirmDialogActivity;->mMessage:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/android/mms/ui/ComfirmDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComfirmDialogActivity;->showDialog(I)V

    .line 23
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComfirmDialogActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComfirmDialogActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/ComfirmDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComfirmDialogActivity$2;-><init>(Lcom/android/mms/ui/ComfirmDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComfirmDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComfirmDialogActivity$1;-><init>(Lcom/android/mms/ui/ComfirmDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
