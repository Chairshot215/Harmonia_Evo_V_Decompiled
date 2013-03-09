.class Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;
.super Ljava/io/FilterOutputStream;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/HttpResponseCache$CacheRequestImpl;-><init>(Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

.field final synthetic val$editor:Llibcore/io/DiskLruCache$Editor;

.field final synthetic val$this$0:Llibcore/net/http/HttpResponseCache;


# direct methods
.method constructor <init>(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V
    .locals 0

    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

    iput-object p3, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;->val$this$0:Llibcore/net/http/HttpResponseCache;

    iput-object p4, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;->val$editor:Llibcore/io/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

    iget-object v1, v0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Llibcore/net/http/HttpResponseCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

    #getter for: Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->access$100(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

    const/4 v2, 0x1

    #setter for: Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z
    invoke-static {v0, v2}, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->access$102(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;Z)Z

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

    iget-object v0, v0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Llibcore/net/http/HttpResponseCache;

    invoke-static {v0}, Llibcore/net/http/HttpResponseCache;->access$208(Llibcore/net/http/HttpResponseCache;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;->val$editor:Llibcore/io/DiskLruCache$Editor;

    invoke-virtual {v0}, Llibcore/io/DiskLruCache$Editor;->commit()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
