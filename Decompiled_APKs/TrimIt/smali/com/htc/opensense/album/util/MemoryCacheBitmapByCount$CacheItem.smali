.class public Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
.super Ljava/lang/Object;
.source "MemoryCacheBitmapByCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheItem"
.end annotation


# instance fields
.field public bmp:Landroid/graphics/Bitmap;

.field public position:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
