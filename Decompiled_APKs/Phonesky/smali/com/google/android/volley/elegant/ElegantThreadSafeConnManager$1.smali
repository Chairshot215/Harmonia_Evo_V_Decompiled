.class Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;
.super Ljava/lang/Object;
.source "ElegantThreadSafeConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;

.field final synthetic val$poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

.field final synthetic val$route:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method constructor <init>(Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;->this$0:Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;

    iput-object p2, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;->val$poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    iput-object p3, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;->val$poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->abortRequest()V

    .line 54
    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 3
    .parameter "timeout"
    .parameter "tunit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Route may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;->val$poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    .line 65
    .local v0, entry:Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    new-instance v1, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;

    iget-object v2, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;->this$0:Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;

    invoke-direct {v1, v2, v0}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    return-object v1
.end method
