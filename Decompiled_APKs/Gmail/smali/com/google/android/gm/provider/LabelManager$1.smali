.class final Lcom/google/android/gm/provider/LabelManager$1;
.super Ljava/lang/Object;
.source "LabelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$callback:Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;

.field final synthetic val$callerHandler:Landroid/os/Handler;

.field final synthetic val$canonicalName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$useCache:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$canonicalName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$useCache:Z

    iput-object p5, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$callerHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$callback:Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$canonicalName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$useCache:Z

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    .line 336
    .local v0, label:Lcom/google/android/gm/provider/Label;
    iget-object v1, p0, Lcom/google/android/gm/provider/LabelManager$1;->val$callerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gm/provider/LabelManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gm/provider/LabelManager$1$1;-><init>(Lcom/google/android/gm/provider/LabelManager$1;Lcom/google/android/gm/provider/Label;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method
