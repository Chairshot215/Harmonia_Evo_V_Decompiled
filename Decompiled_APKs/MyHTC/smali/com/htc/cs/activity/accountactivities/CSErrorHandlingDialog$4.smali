.class Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$4;
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
    .line 144
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$4;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$4;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->fromApp:Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->access$200(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$4;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSStatusBarNotification;->cancel(Landroid/content/Context;I)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$4;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->setResult(I)V

    .line 150
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$4;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->finish()V

    .line 151
    return-void
.end method
