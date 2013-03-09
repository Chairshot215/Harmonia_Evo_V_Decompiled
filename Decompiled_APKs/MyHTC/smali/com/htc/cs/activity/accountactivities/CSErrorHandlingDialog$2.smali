.class Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;
.super Ljava/lang/Object;
.source "CSErrorHandlingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->createCSErrorHandlingDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->cancelled:Z
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->access$102(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;Z)Z

    .line 119
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->setResult(I)V

    .line 120
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    #calls: Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->access$000(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->removeDialog(I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->finish()V

    .line 124
    return-void
.end method
