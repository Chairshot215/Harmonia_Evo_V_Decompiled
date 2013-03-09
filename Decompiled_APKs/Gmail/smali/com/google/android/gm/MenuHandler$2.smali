.class Lcom/google/android/gm/MenuHandler$2;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field op:Lcom/google/android/gm/BulkOperationHelper;

.field final synthetic this$0:Lcom/google/android/gm/MenuHandler;

.field final synthetic val$commandListener:Lcom/google/android/gm/CommandListener;

.field final synthetic val$conversationInfos:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/gm/MenuHandler;Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler$2;->this$0:Lcom/google/android/gm/MenuHandler;

    iput-object p2, p0, Lcom/google/android/gm/MenuHandler$2;->val$conversationInfos:Ljava/util/Collection;

    iput-object p3, p0, Lcom/google/android/gm/MenuHandler$2;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$2;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->access$200(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/BulkOperationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MenuHandler$2;->op:Lcom/google/android/gm/BulkOperationHelper;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$2;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->access$300(Lcom/google/android/gm/MenuHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler$2;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/MenuHandler;->access$400(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "^k"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 758
    .local v3, trashLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 759
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$2;->op:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler$2;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/gm/MenuHandler;->access$300(Lcom/google/android/gm/MenuHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler$2;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/MenuHandler;->access$400(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/gm/MenuHandler$2;->val$conversationInfos:Ljava/util/Collection;

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler$2;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/gm/MenuHandler;->access$500(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0f00ed

    iget-object v8, p0, Lcom/google/android/gm/MenuHandler$2;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 763
    :cond_0
    return-void
.end method
