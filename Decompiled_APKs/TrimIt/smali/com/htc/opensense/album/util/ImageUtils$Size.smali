.class public Lcom/htc/opensense/album/util/ImageUtils$Size;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageUtils;
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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    .line 60
    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    .line 60
    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    .line 50
    iput p1, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    .line 51
    iput p2, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    .line 52
    return-void
.end method


# virtual methods
.method public swap()V
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    .line 56
    .local v0, t:I
    iget v1, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    iput v1, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    .line 57
    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    .line 58
    return-void
.end method
