.class public Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;
.super Landroid/app/Activity;
.source "HtcBuletoothConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$3;,
        Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_MESSAGE:Ljava/lang/String; = "bluetooth_message"

.field public static final BLUETOOTH_TITLE:Ljava/lang/String; = "bluetooth_title"

.field public static final BULETOOTH_TYPE:Ljava/lang/String; = "bluetooth_type"

.field private static final TAG:Ljava/lang/String; = "HtcBuletoothConfirm"

.field private static final localLOGV:Z = true


# instance fields
.field private mBluetothType:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

.field private mNoButtonListener:Landroid/view/View$OnClickListener;

.field private mYesButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    sget-object v0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    .line 49
    new-instance v0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$1;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$1;-><init>(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mYesButtonListener:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$2;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$2;-><init>(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mNoButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->sendConnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->sendDisconnect()V

    return-void
.end method

.method private sendConnect()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcNaviPanel.cardock_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "cardock_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method private sendDisconnect()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcNaviPanel.cardock_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "cardock_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 32
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "bluetooth_title"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, title:Ljava/lang/String;
    const-string v4, "bluetooth_message"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, message:Ljava/lang/String;
    const-string v4, "bluetooth_type"

    sget-object v5, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    iput-object v4, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    .line 36
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->setContentView(I)V

    .line 37
    const/high16 v4, 0x7f0b

    invoke-virtual {p0, v4}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAlertDialogView;

    .line 38
    .local v0, alertDialogView:Lcom/htc/widget/HtcAlertDialogView;
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialogView;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialogView;->setMessage(Ljava/lang/CharSequence;)V

    .line 40
    const/high16 v4, 0x7f09

    iget-object v5, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mYesButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialogView;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 42
    const v4, 0x7f090001

    iget-object v5, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mNoButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialogView;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialogView;->create()V

    .line 46
    const-string v4, "HtcBuletoothConfirm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBluetothType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
