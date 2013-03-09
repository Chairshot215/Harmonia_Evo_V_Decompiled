.class Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$3;
.super Ljava/lang/Object;
.source "CSErrorHandlingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 126
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$3;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$3;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->setResult(I)V

    .line 130
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$3;->this$0:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->finish()V

    .line 132
    return-void
.end method
