.class Lcom/google/android/gm/BulkOperationHelper$5;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BulkOperationHelper;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$commandListener:Lcom/google/android/gm/CommandListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversations:Ljava/util/Collection;

.field final synthetic val$displayedLabel:Ljava/lang/String;

.field final synthetic val$opId:I

.field final synthetic val$operation:Lcom/google/android/gm/LabelOperations;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$5;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$operation:Lcom/google/android/gm/LabelOperations;

    iput-object p5, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$conversations:Ljava/util/Collection;

    iput-object p6, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$displayedLabel:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$opId:I

    iput-object p8, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$5;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$operation:Lcom/google/android/gm/LabelOperations;

    iget-object v4, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$conversations:Ljava/util/Collection;

    iget-object v5, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$displayedLabel:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$opId:I

    iget-object v8, p0, Lcom/google/android/gm/BulkOperationHelper$5;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 499
    return-void
.end method
