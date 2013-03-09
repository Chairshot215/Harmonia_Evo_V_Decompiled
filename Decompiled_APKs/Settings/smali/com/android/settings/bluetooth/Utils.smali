.class final Lcom/android/settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final D:Z = false

.field public static final STATE_DOCKED:I = 0xc

.field public static final STATE_DOCKING:I = 0xb

.field public static final STATE_UNDOCKED:I = 0xa

.field public static final STATE_UNDOCKING:I = 0xd

.field static final V:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .parameter "connectionState"

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 54
    :pswitch_0
    const v0, 0x7f0c07c1

    goto :goto_0

    .line 56
    :pswitch_1
    const v0, 0x7f0c07c7

    goto :goto_0

    .line 58
    :pswitch_2
    const v0, 0x7f0c07c5

    goto :goto_0

    .line 60
    :pswitch_3
    const v0, 0x7f0c07c6

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 98
    const v0, 0x7f0c08ca

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method static showDisconnectDialog(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog;
    .locals 4
    .parameter "context"
    .parameter "dialog"
    .parameter "disconnectListener"
    .parameter "title"
    .parameter "message"

    .prologue
    const v2, 0x104000a

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object p1

    .line 85
    :goto_0
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1, p4}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 88
    return-object p1

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 81
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    .local v0, okText:Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "name"
    .parameter "messageResId"

    .prologue
    const/4 v4, 0x0

    .line 102
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, message:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 104
    .local v1, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, activity:Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
