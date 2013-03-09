.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$19;
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
    .line 406
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$19;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$19;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->fromApp:Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$200(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$19;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSStatusBarNotification;->cancel(Landroid/content/Context;I)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$19;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->setResult(I)V

    .line 412
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$19;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->finish()V

    .line 413
    return-void
.end method
