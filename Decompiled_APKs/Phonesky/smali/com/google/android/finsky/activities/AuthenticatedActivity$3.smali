.class Lcom/google/android/finsky/activities/AuthenticatedActivity$3;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->fireOnReadyRunnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "onSaveInstanceState() called, not firing onReady()."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->val$shouldHandleIntent:Z

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onReady(Z)V

    goto :goto_0
.end method
