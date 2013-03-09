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

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    iput p1, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    iput p2, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    return-void
.end method


# virtual methods
.method public swap()V
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    iget v1, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    iput v1, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    iput v0, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    return-void
.end method
