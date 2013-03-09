.class public Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;
.super Lcom/htc/widget/HtcAlertDialog$Builder;
.source "CSAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/cs/activity/accountactivities/CSAlertDialog;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, dialog:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog;->access$000(Lcom/htc/cs/activity/accountactivities/CSAlertDialog;)Lcom/htc/app/HtcAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 27
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog;->setCancelable(Z)V

    .line 28
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 29
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 32
    :cond_0
    return-object v0
.end method

.method public bridge synthetic create()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->create()Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    move-result-object v0

    return-object v0
.end method
