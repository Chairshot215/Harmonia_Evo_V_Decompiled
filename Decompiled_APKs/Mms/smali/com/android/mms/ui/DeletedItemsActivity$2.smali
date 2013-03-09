.class Lcom/android/mms/ui/DeletedItemsActivity$2;
.super Ljava/lang/Object;
.source "DeletedItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeletedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeletedItemsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeletedItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity$2;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 594
    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity$2;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteUnlock:Z
    invoke-static {v2}, Lcom/android/mms/ui/DeletedItemsActivity;->access$200(Lcom/android/mms/ui/DeletedItemsActivity;)Z

    move-result v0

    .line 595
    .local v0, DeleteUnlock:Z
    const-string v2, "DeletedItemsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty folder is clicked and unlock is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v1, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;

    invoke-direct {v1}, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;-><init>()V

    .line 599
    .local v1, args:Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;
    iput-boolean v0, v1, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->locked:Z

    .line 600
    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity$2;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #calls: Lcom/android/mms/ui/DeletedItemsActivity;->ShowProgressDialog()V
    invoke-static {v2}, Lcom/android/mms/ui/DeletedItemsActivity;->access$300(Lcom/android/mms/ui/DeletedItemsActivity;)V

    .line 601
    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity$2;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;
    invoke-static {v2}, Lcom/android/mms/ui/DeletedItemsActivity;->access$400(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DeletedItemsActivity$2;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;
    invoke-static {v3}, Lcom/android/mms/ui/DeletedItemsActivity;->access$400(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    move-result-object v3

    const/16 v4, 0x4e93

    invoke-virtual {v3, v4, v1}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 602
    return-void
.end method
