.class public Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;
.super Ljava/lang/Object;
.source "NafRequestWrapper.java"


# instance fields
.field private final currentHttpHostHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private final currentHttpRequest:Lorg/apache/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpHostHolder:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpRequest:Lorg/apache/http/HttpRequest;

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpHostHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCurrentHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpHostHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public getCurrentHttpRequest()Lorg/apache/http/HttpRequest;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpRequest:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public setCurrentHttpHost(Lorg/apache/http/HttpHost;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpHostHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NafRequestWrapper [currentHttpRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpRequest:Lorg/apache/http/HttpRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpRequest:Lorg/apache/http/HttpRequest;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentHttpHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpHostHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->currentHttpRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    goto :goto_0
.end method
