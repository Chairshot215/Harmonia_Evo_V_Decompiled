.class Lcom/htc/sdcardwizard/AlertDialogActivity$4;
.super Ljava/lang/Thread;
.source "AlertDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/AlertDialogActivity;->deleteItems(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/AlertDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    iput-object p2, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    #getter for: Lcom/htc/sdcardwizard/AlertDialogActivity;->handler:Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
    invoke-static {v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->access$100(Lcom/htc/sdcardwizard/AlertDialogActivity;)Lcom/htc/sdcardwizard/handler/SDCardPureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/SDCardPureHandler;->deleteItems()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->dismissWaitingDialog()V

    .line 97
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-virtual {v0, v2}, Lcom/htc/sdcardwizard/AlertDialogActivity;->setResult(I)V

    .line 99
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->finish()V

    .line 101
    return-void

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/AlertDialogActivity;->dismissWaitingDialog()V

    .line 97
    iget-object v1, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    iget-object v1, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-virtual {v1, v2}, Lcom/htc/sdcardwizard/AlertDialogActivity;->setResult(I)V

    .line 99
    iget-object v1, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$4;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/AlertDialogActivity;->finish()V

    throw v0
.end method
