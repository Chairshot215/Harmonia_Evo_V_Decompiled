.class Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;
.super Lcom/android/volley/Request;
.source "AppIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/AppIconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchToFileRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final mFileToWrite:Ljava/io/File;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .parameter "url"
    .parameter "fileToWrite"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/android/volley/Response$Listener",
            "<[B>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    .local p3, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<[B>;"
    invoke-direct {p0, p1, p4}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 268
    iput-object p2, p0, Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;->mFileToWrite:Ljava/io/File;

    .line 269
    iput-object p3, p0, Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;->setShouldCache(Z)V

    .line 271
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 1
    .parameter "response"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 282
    .local v0, binaryResponse:[B
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;->mFileToWrite:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 283
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 284
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 285
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 288
    .end local v2           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-object v3

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, ioe:Ljava/io/IOException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
