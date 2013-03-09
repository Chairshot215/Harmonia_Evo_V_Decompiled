.class Lcom/google/android/gm/BulkOperationHelper$4;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper;->toggleLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BulkOperationHelper;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$add:Z

.field final synthetic val$commandListener:Lcom/google/android/gm/CommandListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversations:Ljava/util/Collection;

.field final synthetic val$displayedLabel:Ljava/lang/String;

.field final synthetic val$label:Lcom/google/android/gm/provider/Label;

.field final synthetic val$opId:I


# direct methods
.method constructor <init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$4;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$label:Lcom/google/android/gm/provider/Label;

    iput-boolean p5, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$add:Z

    iput-object p6, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$conversations:Ljava/util/Collection;

    iput-object p7, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$displayedLabel:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$opId:I

    iput-object p9, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$4;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$label:Lcom/google/android/gm/provider/Label;

    iget-boolean v4, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$add:Z

    iget-object v5, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$conversations:Ljava/util/Collection;

    iget-object v6, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$displayedLabel:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$opId:I

    iget-object v9, p0, Lcom/google/android/gm/BulkOperationHelper$4;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 475
    return-void
.end method
