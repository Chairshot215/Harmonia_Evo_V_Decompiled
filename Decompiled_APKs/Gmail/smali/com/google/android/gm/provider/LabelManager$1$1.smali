.class Lcom/google/android/gm/provider/LabelManager$1$1;
.super Ljava/lang/Object;
.source "LabelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/LabelManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/LabelManager$1;

.field final synthetic val$label:Lcom/google/android/gm/provider/Label;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/LabelManager$1;Lcom/google/android/gm/provider/Label;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelManager$1$1;->this$0:Lcom/google/android/gm/provider/LabelManager$1;

    iput-object p2, p0, Lcom/google/android/gm/provider/LabelManager$1$1;->val$label:Lcom/google/android/gm/provider/Label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelManager$1$1;->this$0:Lcom/google/android/gm/provider/LabelManager$1;

    iget-object v0, v0, Lcom/google/android/gm/provider/LabelManager$1;->val$callback:Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;

    iget-object v1, p0, Lcom/google/android/gm/provider/LabelManager$1$1;->val$label:Lcom/google/android/gm/provider/Label;

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;->onLabelResult(Lcom/google/android/gm/provider/Label;)V

    .line 340
    return-void
.end method
