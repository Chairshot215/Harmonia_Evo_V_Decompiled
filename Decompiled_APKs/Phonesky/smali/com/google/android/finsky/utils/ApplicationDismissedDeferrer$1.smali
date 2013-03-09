.class Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;
.super Ljava/lang/Object;
.source "ApplicationDismissedDeferrer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->runOnApplicationClose(Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

.field final synthetic val$pollingIntervalMs:I

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;Ljava/lang/Runnable;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;->this$0:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    iput-object p2, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;->val$runnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;->val$pollingIntervalMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;->this$0:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    #calls: Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->isContextPackageInBackground()Z
    invoke-static {v0}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->access$000(Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;->this$0:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    iget-object v1, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;->val$runnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;->val$pollingIntervalMs:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->runOnApplicationClose(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
