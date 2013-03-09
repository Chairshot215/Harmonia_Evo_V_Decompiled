.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;
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


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->cancelled:Z
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$102(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Z)Z

    .line 389
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->setResult(I)V

    .line 390
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #calls: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$000(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->finish()V

    .line 394
    return-void
.end method
