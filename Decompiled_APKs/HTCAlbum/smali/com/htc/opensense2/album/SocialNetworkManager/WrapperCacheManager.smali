.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;
.super Lcom/htc/opensense2/album/cache/CacheManager;
.source "WrapperCacheManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "memCacheSize"
    .parameter "fileCacheSize"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/cache/CacheManager;-><init>(Landroid/content/Context;II)V

    .line 17
    return-void
.end method


# virtual methods
.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->setVisibleRange(II)V

    .line 22
    return-void
.end method
