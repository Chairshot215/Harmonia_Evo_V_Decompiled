.class Lcom/htc/album/AlbumUtility/AdapterPool$Item;
.super Ljava/lang/Object;
.source "AdapterPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumUtility/AdapterPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/BaseAdapter;

.field public mTicks:J


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/AlbumUtility/AdapterPool$Item;->mTicks:J

    .line 90
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/AdapterPool$Item;->mAdapter:Landroid/widget/BaseAdapter;

    .line 91
    return-void
.end method
