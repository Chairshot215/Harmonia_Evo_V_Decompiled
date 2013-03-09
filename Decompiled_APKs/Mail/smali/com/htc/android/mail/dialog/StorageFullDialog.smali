.class public Lcom/htc/android/mail/dialog/StorageFullDialog;
.super Landroid/app/Activity;
.source "StorageFullDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageFullDialog"


# instance fields
.field private final DIALOG_STORAGE_FULL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/dialog/StorageFullDialog;->DIALOG_STORAGE_FULL:I

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/dialog/StorageFullDialog;->requestWindowFeature(I)Z

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/dialog/StorageFullDialog;->showDialog(I)V

    .line 25
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 35
    :pswitch_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v2, 0x7f0b02e5

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/dialog/StorageFullDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, desc:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02e4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0167

    new-instance v3, Lcom/htc/android/mail/dialog/StorageFullDialog$2;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/dialog/StorageFullDialog$2;-><init>(Lcom/htc/android/mail/dialog/StorageFullDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008e

    new-instance v3, Lcom/htc/android/mail/dialog/StorageFullDialog$1;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/dialog/StorageFullDialog$1;-><init>(Lcom/htc/android/mail/dialog/StorageFullDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 29
    return-void
.end method
