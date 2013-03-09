.class Lcom/google/android/finsky/previews/PreviewPlayer$2;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/previews/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/previews/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$2;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 362
    const-string v0, "Unable to load JSON: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer$2;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {v0, v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$102(Lcom/google/android/finsky/previews/PreviewPlayer;Lcom/android/volley/toolbox/JsonObjectRequest;)Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 364
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer$2;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #calls: Lcom/google/android/finsky/previews/PreviewPlayer;->notifyError()V
    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$200(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    .line 365
    return-void
.end method
