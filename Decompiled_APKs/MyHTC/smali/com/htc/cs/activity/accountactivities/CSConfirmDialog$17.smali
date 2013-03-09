.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;
.super Ljava/lang/Object;
.source "CSConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createCSConfirmDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->val$text:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #calls: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$000(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSStatusBarNotification;->cancel(Landroid/content/Context;I)V

    .line 378
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setHashedPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const-string v1, "InvalidCredential"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 380
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    .line 381
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->setResult(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->finish()V

    .line 384
    return-void
.end method
