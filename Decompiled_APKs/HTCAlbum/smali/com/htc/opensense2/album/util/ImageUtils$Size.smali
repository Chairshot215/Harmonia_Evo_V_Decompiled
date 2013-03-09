.class public Lcom/htc/opensense2/album/util/ImageUtils$Size;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 49
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 49
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    .line 45
    iput p1, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 46
    iput p2, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    .line 47
    return-void
.end method
