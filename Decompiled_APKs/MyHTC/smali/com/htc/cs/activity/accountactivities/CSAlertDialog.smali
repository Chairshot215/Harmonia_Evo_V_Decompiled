.class public Lcom/htc/cs/activity/accountactivities/CSAlertDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "CSAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/htc/cs/activity/accountactivities/CSAlertDialog;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onStartNonSIP()V

    .line 16
    return-void
.end method
