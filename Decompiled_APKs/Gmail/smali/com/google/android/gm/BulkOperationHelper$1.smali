.class Lcom/google/android/gm/BulkOperationHelper$1;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper;->postCommandComplete(ILcom/google/android/gm/CommandListener;Lcom/google/android/gm/UndoOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BulkOperationHelper;

.field final synthetic val$commandListener:Lcom/google/android/gm/CommandListener;

.field final synthetic val$opId:I

.field final synthetic val$undo:Lcom/google/android/gm/UndoOperation;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BulkOperationHelper;Lcom/google/android/gm/CommandListener;ILcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$1;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper$1;->val$commandListener:Lcom/google/android/gm/CommandListener;

    iput p3, p0, Lcom/google/android/gm/BulkOperationHelper$1;->val$opId:I

    iput-object p4, p0, Lcom/google/android/gm/BulkOperationHelper$1;->val$undo:Lcom/google/android/gm/UndoOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$1;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    #getter for: Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;
    invoke-static {v0}, Lcom/google/android/gm/BulkOperationHelper;->access$000(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/MenuHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->getActivity()Lcom/google/android/gm/RestrictedActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$1;->val$commandListener:Lcom/google/android/gm/CommandListener;

    iget v1, p0, Lcom/google/android/gm/BulkOperationHelper$1;->val$opId:I

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper$1;->val$undo:Lcom/google/android/gm/UndoOperation;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/CommandListener;->onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V

    .line 331
    :cond_0
    return-void
.end method
