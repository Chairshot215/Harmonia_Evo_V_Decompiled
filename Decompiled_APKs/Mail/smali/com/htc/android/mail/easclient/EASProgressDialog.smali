.class public Lcom/htc/android/mail/easclient/EASProgressDialog;
.super Lcom/htc/app/HtcProgressDialog;
.source "EASProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/EASProgressDialog$4;,
        Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;,
        Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;
    }
.end annotation


# static fields
.field public static final ACTION_DISMISS_DIALOG:Ljava/lang/String; = "action.easprogressdialog.dismiss"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_DIALOG_ACTION:Ljava/lang/String; = "extra.easprogressdialog.dialogaction"


# instance fields
.field mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

.field private mAutoDismiss:Z

.field mCallback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;

.field mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/EASProgressDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAutoDismiss:Z

    .line 35
    sget-object v0, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->NONE:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    .line 36
    iput-object v1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mCallback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;

    .line 37
    iput-object v1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/htc/android/mail/easclient/EASProgressDialog$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog$3;-><init>(Lcom/htc/android/mail/easclient/EASProgressDialog;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/easclient/EASProgressDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAutoDismiss:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASProgressDialog;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 93
    sget-boolean v1, Lcom/htc/android/mail/easclient/EASProgressDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASProgressDialog"

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/htc/app/HtcProgressDialog;->onStart()V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "intent.eas.progress.message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "action.easprogressdialog.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 103
    sget-boolean v1, Lcom/htc/android/mail/easclient/EASProgressDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASProgressDialog"

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/htc/app/HtcProgressDialog;->onStop()V

    .line 105
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.easprogressdialog.dismiss"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra.easprogressdialog.dialogaction"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mCallback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mCallback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;

    invoke-interface {v1}, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;->onStop()V

    .line 111
    :cond_1
    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0
    .parameter "dismiss"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAutoDismiss:Z

    .line 45
    return-void
.end method

.method public setCallback(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mCallback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;

    .line 144
    return-void
.end method

.method public setDialog(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;)V
    .locals 5
    .parameter "action"

    .prologue
    const v4, 0x7f0b028d

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    .line 50
    sget-object v0, Lcom/htc/android/mail/easclient/EASProgressDialog$4;->$SwitchMap$com$htc$android$mail$easclient$EASProgressDialog$DialogAction:[I

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setIndeterminate(Z)V

    .line 54
    new-instance v0, Lcom/htc/android/mail/easclient/EASProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog$1;-><init>(Lcom/htc/android/mail/easclient/EASProgressDialog;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setIndeterminate(Z)V

    .line 67
    new-instance v0, Lcom/htc/android/mail/easclient/EASProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog$2;-><init>(Lcom/htc/android/mail/easclient/EASProgressDialog;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setIndeterminate(Z)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASProgressDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b028c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setIndeterminate(Z)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
