.class public Lorg/apache/harmony/security/fortress/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/Engine$1;,
        Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;,
        Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
    }
.end annotation


# static fields
.field public static door:Lorg/apache/harmony/security/fortress/SecurityAccess;


# instance fields
.field private volatile serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    return-void
.end method

.method private notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "algorithm == null"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v1

    throw v1

    :cond_1
    invoke-virtual {v0, p3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "Null algorithm name"

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->refresh()V

    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    if-eqz v0, :cond_1

    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$000(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->refreshNumber:I
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$100(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)I

    move-result v4

    if-ne v3, v4, :cond_1

    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->service:Ljava/security/Provider$Service;
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$200(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/security/Provider$Service;

    move-result-object v2

    :goto_0
    new-instance v3, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    invoke-virtual {v2, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$1;)V

    return-object v3

    :cond_1
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v3

    throw v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->getService(Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v3

    throw v3

    :cond_3
    new-instance v3, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    sget v4, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    invoke-direct {v3, p1, v4, v2, v6}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;-><init>(Ljava/lang/String;ILjava/security/Provider$Service;Lorg/apache/harmony/security/fortress/Engine$1;)V

    iput-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    goto :goto_0
.end method
