.class Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;
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

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->val$text:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    #calls: Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->access$000(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;-><init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    .local v0, updateUserInfo:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;
    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;->start()V

    .line 110
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->removeDialog(I)V

    .line 111
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->setResult(I)V

    .line 113
    .end local v0           #updateUserInfo:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->finish()V

    .line 114
    return-void
.end method
