.class public Lcom/htc/sdm/activity/SDMStorageFullDialog;
.super Landroid/app/Activity;
.source "SDMStorageFullDialog.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMStorageFullDialog] "


# instance fields
.field private final DIALOG_STORAGE_FULL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sdm/activity/SDMStorageFullDialog;->DIALOG_STORAGE_FULL:I

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMStorageFullDialog;->requestWindowFeature(I)Z

    .line 26
    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMStorageFullDialog;->showDialog(I)V

    .line 27
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMStorageFullDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c01c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, desc:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c01c1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09006b

    new-instance v3, Lcom/htc/sdm/activity/SDMStorageFullDialog$2;

    invoke-direct {v3, p0}, Lcom/htc/sdm/activity/SDMStorageFullDialog$2;-><init>(Lcom/htc/sdm/activity/SDMStorageFullDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09001f

    new-instance v3, Lcom/htc/sdm/activity/SDMStorageFullDialog$1;

    invoke-direct {v3, p0}, Lcom/htc/sdm/activity/SDMStorageFullDialog$1;-><init>(Lcom/htc/sdm/activity/SDMStorageFullDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 31
    return-void
.end method
