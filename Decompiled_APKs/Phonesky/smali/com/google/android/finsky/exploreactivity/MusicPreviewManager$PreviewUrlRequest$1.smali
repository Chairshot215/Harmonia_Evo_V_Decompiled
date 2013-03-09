.class Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;
.super Ljava/lang/Object;
.source "MusicPreviewManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest;-><init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Ljava/lang/String;Lcom/android/volley/Request$Priority;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$request:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;

.field final synthetic val$this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;->val$this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;->val$request:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 517
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;->val$request:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->mUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;->access$302(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;->val$this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->access$1200(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$PreviewUrlRequest$1;->val$request:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$DownloadRequest;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 528
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 525
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
