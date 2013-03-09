.class Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;
.super Ljava/io/InputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #calls: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    monitor-exit v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_read(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BIII)I

    move-result v0

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
