.class Lcom/google/android/gm/provider/Label$LabelContentUpdater$1;
.super Ljava/lang/Object;
.source "Label.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/Label$LabelContentUpdater;->performTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/provider/Label$LabelContentUpdater;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/Label$LabelContentUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater$1;->this$1:Lcom/google/android/gm/provider/Label$LabelContentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$LabelContentUpdater$1;->this$1:Lcom/google/android/gm/provider/Label$LabelContentUpdater;

    iget-object v0, v0, Lcom/google/android/gm/provider/Label$LabelContentUpdater;->this$0:Lcom/google/android/gm/provider/Label;

    #calls: Lcom/google/android/gm/provider/Label;->notifyDataSetChanged()V
    invoke-static {v0}, Lcom/google/android/gm/provider/Label;->access$300(Lcom/google/android/gm/provider/Label;)V

    .line 827
    return-void
.end method
