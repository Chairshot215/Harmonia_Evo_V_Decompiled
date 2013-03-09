.class Lcom/google/android/gm/MenuHandler$3;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/MenuHandler;->expunge(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/MenuHandler;

.field final synthetic val$commandListener:Lcom/google/android/gm/CommandListener;

.field final synthetic val$conversations:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler$3;->this$0:Lcom/google/android/gm/MenuHandler;

    iput-object p2, p0, Lcom/google/android/gm/MenuHandler$3;->val$commandListener:Lcom/google/android/gm/CommandListener;

    iput-object p3, p0, Lcom/google/android/gm/MenuHandler$3;->val$conversations:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$3;->val$commandListener:Lcom/google/android/gm/CommandListener;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$3;->val$commandListener:Lcom/google/android/gm/CommandListener;

    const v1, 0x7f0f00ed

    invoke-interface {v0, v1}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$3;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->access$300(Lcom/google/android/gm/MenuHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler$3;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/MenuHandler;->access$400(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler$3;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/MenuHandler;->access$500(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 792
    .local v3, label:Lcom/google/android/gm/provider/Label;
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$3;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->access$200(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/BulkOperationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler$3;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/gm/MenuHandler;->access$300(Lcom/google/android/gm/MenuHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler$3;->this$0:Lcom/google/android/gm/MenuHandler;

    #getter for: Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/MenuHandler;->access$400(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gm/MenuHandler$3;->val$conversations:Ljava/util/Collection;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler$3;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/BulkOperationHelper;->performYButtonAction(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V

    .line 794
    return-void
.end method
