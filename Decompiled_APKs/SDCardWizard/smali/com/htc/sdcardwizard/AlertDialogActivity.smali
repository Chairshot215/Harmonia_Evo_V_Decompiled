.class public final Lcom/htc/sdcardwizard/AlertDialogActivity;
.super Lcom/htc/sdcardwizard/WaitingDialogActivity;
.source "AlertDialogActivity.java"

# interfaces
.implements Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;


# static fields
.field private static final ERASE_TEMP_FILES_DIALOG:I


# instance fields
.field private handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

.field private mMounSdReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity;->handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

    .line 122
    iput-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity;->mMounSdReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sdcardwizard/AlertDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/sdcardwizard/AlertDialogActivity;->deleteItems(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sdcardwizard/AlertDialogActivity;)Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity;->handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

    return-object v0
.end method

.method private deleteItems(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 89
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->showWaitingDialog(I)V

    .line 90
    new-instance v0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/sdcardwizard/AlertDialogActivity$4;-><init>(Lcom/htc/sdcardwizard/AlertDialogActivity;Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->start()V

    .line 103
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 25
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/htc/sdcardwizard/handler/SDCardPureHandler;->extractCategoryID(Landroid/content/Intent;)Lcom/htc/sdcardwizard/handler/CategoryID;

    move-result-object v0

    .line 26
    .local v0, categoryId:Lcom/htc/sdcardwizard/handler/CategoryID;
    invoke-static {p0, v0}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getPureHandler(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sdcardwizard/AlertDialogActivity;->handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

    .line 28
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/sdcardwizard/AlertDialogActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0, v1}, Lcom/htc/sdcardwizard/AlertDialogActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 30
    new-instance v2, Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-direct {v2, p0, p0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;-><init>(Landroid/content/Context;Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;)V

    iput-object v2, p0, Lcom/htc/sdcardwizard/AlertDialogActivity;->mMounSdReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    .line 31
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "id"
    .parameter "args"

    .prologue
    .line 41
    const/4 v4, 0x0

    .line 42
    .local v4, text:Ljava/lang/String;
    const/4 v5, 0x0

    .line 43
    .local v5, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 52
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid dialog Id."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f04003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, template:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sdcardwizard/AlertDialogActivity;->handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

    invoke-virtual {v6}, Lcom/htc/sdcardwizard/handler/SDCardPureHandler;->getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v1

    .line 47
    .local v1, categoryInfo:Lcom/htc/sdcardwizard/handler/CategoryInfo;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v1, Lcom/htc/sdcardwizard/handler/CategoryInfo;->size:J

    invoke-static {p0, v8, v9}, Lcom/htc/sdcardwizard/utils/Formatter;->filesize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 48
    const v5, 0x7f04003d

    .line 55
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 57
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 58
    const v6, 0x2080263

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 60
    const v6, 0x7f04003f

    new-instance v7, Lcom/htc/sdcardwizard/AlertDialogActivity$1;

    invoke-direct {v7, p0}, Lcom/htc/sdcardwizard/AlertDialogActivity$1;-><init>(Lcom/htc/sdcardwizard/AlertDialogActivity;)V

    invoke-virtual {v0, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 71
    const v6, 0x7f040040

    new-instance v7, Lcom/htc/sdcardwizard/AlertDialogActivity$2;

    invoke-direct {v7, p0}, Lcom/htc/sdcardwizard/AlertDialogActivity$2;-><init>(Lcom/htc/sdcardwizard/AlertDialogActivity;)V

    invoke-virtual {v0, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 78
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 79
    .local v2, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/sdcardwizard/AlertDialogActivity$3;

    invoke-direct {v6, p0}, Lcom/htc/sdcardwizard/AlertDialogActivity$3;-><init>(Lcom/htc/sdcardwizard/AlertDialogActivity;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 85
    return-object v2

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onPause()V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->removeDialog(I)V

    .line 117
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity;->mMounSdReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;->unregisterReceiver()V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-super {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onResume()V

    .line 108
    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->removeDialog(I)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->showDialog(I)V

    .line 110
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity;->mMounSdReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;->registerReceiver()V

    .line 111
    return-void
.end method

.method public onUnMount(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->removeDialog(I)V

    .line 36
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->finish()V

    .line 37
    return-void
.end method
