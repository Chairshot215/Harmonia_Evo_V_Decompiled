.class public Lcom/htc/MediaCacheService/gallery/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;,
        Lcom/htc/MediaCacheService/gallery/FileCache$VideoCacheEntry;
    }
.end annotation


# static fields
.field public static final ENTRY_ADD:I = 0x1

.field public static final ENTRY_DEL:I = 0x3

.field public static final ENTRY_UNKNOWN:I = 0x0

.field public static final ENTRY_UPDATE:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "FileCache"


# instance fields
.field public mEntryAction:I

.field public mbFinded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/htc/MediaCacheService/gallery/FileCache;->mbFinded:Z

    .line 19
    iput v0, p0, Lcom/htc/MediaCacheService/gallery/FileCache;->mEntryAction:I

    .line 235
    return-void
.end method
