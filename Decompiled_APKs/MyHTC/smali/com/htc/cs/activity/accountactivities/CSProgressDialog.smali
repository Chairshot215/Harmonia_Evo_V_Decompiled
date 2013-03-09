.class public Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
.super Lcom/htc/app/HtcProgressDialog;
.source "CSProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/activity/accountactivities/CSProgressDialog$2;,
        Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogCallback;,
        Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;
    }
.end annotation


# static fields
.field public static final ACTION_DISMISS_DIALOG:Ljava/lang/String; = "action.CSProgressDialog.dismiss"

.field public static final EXTRA_DIALOG_ACTION:Ljava/lang/String; = "extra.CSProgressDialog.dialogaction"


# instance fields
.field private disableAllKeyEvent:Landroid/content/DialogInterface$OnKeyListener;

.field mAction:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

.field private mAutoDismiss:Z

.field mCallback:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogCallback;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mAutoDismiss:Z

    .line 31
    sget-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->NONE:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mAction:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    .line 32
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mCallback:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogCallback;

    .line 33
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$1;-><init>(Lcom/htc/cs/activity/accountactivities/CSProgressDialog;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->disableAllKeyEvent:Landroid/content/DialogInterface$OnKeyListener;

    .line 36
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0
    .parameter "dismiss"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mAutoDismiss:Z

    .line 41
    return-void
.end method

.method public setCallback(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mCallback:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogCallback;

    .line 92
    return-void
.end method

.method public setDialog(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;)V
    .locals 5
    .parameter "action"

    .prologue
    const v4, 0x7f09000a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mAction:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    .line 47
    sget-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$2;->$SwitchMap$com$htc$cs$activity$accountactivities$CSProgressDialog$DialogAction:[I

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mAction:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setCancelable(Z)V

    .line 67
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v3}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setIndeterminate(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setCancelable(Z)V

    .line 52
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->disableAllKeyEvent:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setIndeterminate(Z)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setCancelable(Z)V

    .line 58
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->disableAllKeyEvent:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 61
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
