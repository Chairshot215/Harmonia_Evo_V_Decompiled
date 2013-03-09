.class public Lgnu/kawa/models/DrawImage;
.super Lgnu/kawa/models/Model;
.source "DrawImage.java"

# interfaces
.implements Lgnu/kawa/models/Paintable;
.implements Ljava/io/Serializable;


# instance fields
.field description:Ljava/lang/String;

.field image:Ljava/awt/image/BufferedImage;

.field src:Lgnu/text/Path;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 41
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 42
    iput-object p1, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    .line 43
    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-virtual {p0}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 54
    iget-object v2, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 55
    .local v1, w:I
    iget-object v2, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    .line 56
    .local v0, h:I
    new-instance v2, Ljava/awt/geom/Rectangle2D$Float;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-direct {v2, v5, v5, v3, v4}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v2
.end method

.method public getImage()Ljava/awt/Image;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 67
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getSrc()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    return-object v0
.end method

.method loadImage()V
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    if-nez v1, :cond_0

    .line 31
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    invoke-virtual {v1}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    return-void

    .line 33
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 35
    .local v0, ex:Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 0
    .parameter "display"
    .parameter "where"

    .prologue
    .line 22
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public paint(Ljava/awt/Graphics2D;)V
    .locals 2
    .parameter "graphics"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 48
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {p1, v0, v1, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 49
    return-void
.end method

.method public setSrc(Lgnu/text/Path;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 74
    iput-object p1, p0, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    .line 75
    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)Lgnu/kawa/models/Paintable;
    .locals 1
    .parameter "tr"

    .prologue
    .line 61
    new-instance v0, Lgnu/kawa/models/WithTransform;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/models/WithTransform;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method
