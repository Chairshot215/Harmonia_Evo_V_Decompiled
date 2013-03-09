.class public abstract Ljava/net/ResponseCache;
.super Ljava/lang/Object;
.source "ResponseCache.java"


# static fields
.field private static defaultResponseCache:Ljava/net/ResponseCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljava/net/ResponseCache;->defaultResponseCache:Ljava/net/ResponseCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Ljava/net/ResponseCache;
    .locals 1

    sget-object v0, Ljava/net/ResponseCache;->defaultResponseCache:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public static setDefault(Ljava/net/ResponseCache;)V
    .locals 0

    sput-object p0, Ljava/net/ResponseCache;->defaultResponseCache:Ljava/net/ResponseCache;

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
