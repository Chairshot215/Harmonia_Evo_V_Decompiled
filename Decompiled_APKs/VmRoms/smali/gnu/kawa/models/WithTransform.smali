.class public Lgnu/kawa/models/WithTransform;
.super Ljava/lang/Object;
.source "WithTransform.java"

# interfaces
.implements Lgnu/kawa/models/Paintable;


# instance fields
.field paintable:Lgnu/kawa/models/Paintable;

.field transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V
    .locals 0
    .parameter "paintable"
    .parameter "transform"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/kawa/models/WithTransform;->paintable:Lgnu/kawa/models/Paintable;

    .line 13
    iput-object p2, p0, Lgnu/kawa/models/WithTransform;->transform:Ljava/awt/geom/AffineTransform;

    .line 14
    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lgnu/kawa/models/WithTransform;->transform:Ljava/awt/geom/AffineTransform;

    iget-object v1, p0, Lgnu/kawa/models/WithTransform;->paintable:Lgnu/kawa/models/Paintable;

    invoke-interface {v1}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public paint(Ljava/awt/Graphics2D;)V
    .locals 2
    .parameter "graphics"

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    .line 21
    .local v0, saved:Ljava/awt/geom/AffineTransform;
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/models/WithTransform;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    .line 22
    iget-object v1, p0, Lgnu/kawa/models/WithTransform;->paintable:Lgnu/kawa/models/Paintable;

    invoke-interface {v1, p1}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 28
    return-void

    .line 26
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    throw v1
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)Lgnu/kawa/models/Paintable;
    .locals 3
    .parameter "tr"

    .prologue
    .line 38
    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object v1, p0, Lgnu/kawa/models/WithTransform;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, v1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    .line 39
    .local v0, combined:Ljava/awt/geom/AffineTransform;
    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 40
    new-instance v1, Lgnu/kawa/models/WithTransform;

    iget-object v2, p0, Lgnu/kawa/models/WithTransform;->paintable:Lgnu/kawa/models/Paintable;

    invoke-direct {v1, v2, v0}, Lgnu/kawa/models/WithTransform;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V

    return-object v1
.end method
