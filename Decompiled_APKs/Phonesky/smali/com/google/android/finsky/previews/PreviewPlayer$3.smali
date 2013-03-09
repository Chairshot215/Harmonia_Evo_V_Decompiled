.class Lcom/google/android/finsky/previews/PreviewPlayer$3;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/previews/PreviewPlayer;
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
.field final synthetic this$0:Lcom/google/android/finsky/previews/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$3;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 368
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$3;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentUnrollRequest:Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {v1, v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$102(Lcom/google/android/finsky/previews/PreviewPlayer;Lcom/android/volley/toolbox/JsonObjectRequest;)Lcom/android/volley/toolbox/JsonObjectRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 374
    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$3;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    invoke-static {v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$400(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$3;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/finsky/previews/PreviewPlayer;->setModeToStreaming(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$300(Lcom/google/android/finsky/previews/PreviewPlayer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setDataSource(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$3;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    invoke-static {v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$400(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->prepareAsync()V

    .line 377
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$3;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;
    invoke-static {v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$500(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/StatusListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->preparing()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 389
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "Illegal state while preparing audio. Is Monkey=%b."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 382
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 383
    .local v0, e:Ljava/io/IOException;
    const-string v1, "IOException: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$3;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #calls: Lcom/google/android/finsky/previews/PreviewPlayer;->notifyError()V
    invoke-static {v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$200(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    goto :goto_0

    .line 385
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 386
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Unable to decode JSON response"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$3;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #calls: Lcom/google/android/finsky/previews/PreviewPlayer;->notifyError()V
    invoke-static {v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$200(Lcom/google/android/finsky/previews/PreviewPlayer;)V

    goto :goto_0
.end method
