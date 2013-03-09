.class Lcom/google/android/gm/BulkOperationHelper$3;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper;->performYButtonAction(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V
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

.field final synthetic val$label:Lcom/google/android/gm/provider/Label;

.field final synthetic val$uncommittedConversationState:Lcom/google/android/gm/LabelOperations;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$3;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$label:Lcom/google/android/gm/provider/Label;

    iput-object p5, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$conversations:Ljava/util/Collection;

    iput-object p6, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$uncommittedConversationState:Lcom/google/android/gm/LabelOperations;

    iput-object p7, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$3;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$label:Lcom/google/android/gm/provider/Label;

    iget-object v4, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$conversations:Ljava/util/Collection;

    iget-object v5, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$uncommittedConversationState:Lcom/google/android/gm/LabelOperations;

    const v6, 0x7f0f00ec

    iget-object v7, p0, Lcom/google/android/gm/BulkOperationHelper$3;->val$commandListener:Lcom/google/android/gm/CommandListener;

    #calls: Lcom/google/android/gm/BulkOperationHelper;->performYButtonActionInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    invoke-static/range {v0 .. v7}, Lcom/google/android/gm/BulkOperationHelper;->access$100(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 451
    return-void
.end method
