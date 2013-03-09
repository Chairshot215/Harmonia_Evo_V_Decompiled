.class public Lcom/htc/wrap/android/webkit/HtcWrapCacheManager;
.super Ljava/lang/Object;
.source "HtcWrapCacheManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheSize()J
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Landroid/webkit/CacheManager;->getCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setCacheSize(J)V
    .locals 0
    .parameter "lCacheSize_Byte"

    .prologue
    .line 7
    invoke-static {p0, p1}, Landroid/webkit/CacheManager;->setCacheSize(J)V

    .line 8
    return-void
.end method
