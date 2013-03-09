.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;
.super Landroid/database/DataSetObserver;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->initGlobalDebugInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

.field final synthetic val$uiThread:Landroid/os/Handler;

.field final synthetic val$updateGlobalDebugInfo:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;->val$uiThread:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;->val$updateGlobalDebugInfo:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;->val$uiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;->val$updateGlobalDebugInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;->val$uiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;->val$updateGlobalDebugInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    return-void
.end method
