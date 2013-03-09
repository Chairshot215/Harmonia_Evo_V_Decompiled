.class public Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;
.super Landroid/app/Activity;
.source "HtcBuletoothConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$4;,
        Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<mCancel",
        "Listener:Ljava/lang/Object;",
        ">",
        "Landroid/app/Activity;"
    }
.end annotation


# static fields
.field public static final BLUETOOTH_MESSAGE:Ljava/lang/String; = "bluetooth_message"

.field public static final BLUETOOTH_TITLE:Ljava/lang/String; = "bluetooth_title"

.field public static final BULETOOTH_TYPE:Ljava/lang/String; = "bluetooth_type"

.field private static final TAG:Ljava/lang/String; = "HtcBuletoothConfirm"

.field private static final localLOGV:Z = true


# instance fields
.field private mBluetothType:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mMessage:Ljava/lang/String;

.field private mNoButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/String;

.field private mYesButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm<TmCancelListener;>;"
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    sget-object v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    .line 58
    new-instance v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;-><init>(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mYesButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    new-instance v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$2;-><init>(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mNoButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    new-instance v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$3;-><init>(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->sendConnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->sendDisconnect()V

    return-void
.end method

.method private sendConnect()V
    .locals 3

    .prologue
    .line 85
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm<TmCancelListener;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcNaviPanel.deskdock_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "deskdock_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private sendDisconnect()V
    .locals 3

    .prologue
    .line 93
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm<TmCancelListener;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcNaviPanel.deskdock_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "deskdock_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm<TmCancelListener;>;"
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bluetooth_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mTitle:Ljava/lang/String;

    .line 38
    const-string v1, "bluetooth_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mMessage:Ljava/lang/String;

    .line 39
    const-string v1, "bluetooth_type"

    sget-object v2, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    .line 41
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->showDialog(I)V

    .line 43
    const-string v1, "HtcBuletoothConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBluetothType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 48
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm<TmCancelListener;>;"
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080022

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mYesButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080023

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mNoButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method
