.class Lcom/google/android/finsky/appstate/UpdateChecker$1$2;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/UpdateChecker$1;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/UpdateChecker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "volleyError"

    .prologue
    .line 129
    const-string v0, "Update check failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v0, v0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$errorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v0, v0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    :cond_0
    return-void
.end method
