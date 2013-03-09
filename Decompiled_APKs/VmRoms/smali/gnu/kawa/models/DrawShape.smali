.class public Lgnu/kawa/models/DrawShape;
.super Ljava/lang/Object;
.source "DrawShape.java"

# interfaces
.implements Lgnu/kawa/models/Paintable;


# instance fields
.field shape:Ljava/awt/Shape;


# direct methods
.method public constructor <init>(Ljava/awt/Shape;)V
    .locals 0
    .parameter "shape"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lgnu/kawa/models/DrawShape;->shape:Ljava/awt/Shape;

    .line 12
    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lgnu/kawa/models/DrawShape;->shape:Ljava/awt/Shape;

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public paint(Ljava/awt/Graphics2D;)V
    .locals 1
    .parameter "graphics"

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/kawa/models/DrawShape;->shape:Ljava/awt/Shape;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    .line 17
    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)Lgnu/kawa/models/Paintable;
    .locals 2
    .parameter "tr"

    .prologue
    .line 26
    new-instance v0, Lgnu/kawa/models/DrawShape;

    iget-object v1, p0, Lgnu/kawa/models/DrawShape;->shape:Ljava/awt/Shape;

    invoke-virtual {p1, v1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/kawa/models/DrawShape;-><init>(Ljava/awt/Shape;)V

    return-object v0
.end method
