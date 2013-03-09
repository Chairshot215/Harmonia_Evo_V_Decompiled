.class Lcom/google/android/gm/BulkOperationHelper$6$1;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/BulkOperationHelper$6;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BulkOperationHelper$6;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$6$1;->this$1:Lcom/google/android/gm/BulkOperationHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$6$1;->this$1:Lcom/google/android/gm/BulkOperationHelper$6;

    iget-object v0, v0, Lcom/google/android/gm/BulkOperationHelper$6;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    #getter for: Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;
    invoke-static {v0}, Lcom/google/android/gm/BulkOperationHelper;->access$000(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/MenuHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->onEndBulkOperation()V

    .line 551
    return-void
.end method
