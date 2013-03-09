.class public Lgnu/kawa/models/WithPaint;
.super Ljava/lang/Object;
.source "WithPaint.java"

# interfaces
.implements Lgnu/kawa/models/Paintable;


# instance fields
.field paint:Ljava/awt/Paint;

.field paintable:Lgnu/kawa/models/Paintable;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Paintable;Ljava/awt/Paint;)V
    .locals 0
    .parameter "paintable"
    .parameter "paint"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/kawa/models/WithPaint;->paintable:Lgnu/kawa/models/Paintable;

    .line 13
    iput-object p2, p0, Lgnu/kawa/models/WithPaint;->paint:Ljava/awt/Paint;

    .line 14
    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lgnu/kawa/models/WithPaint;->paintable:Lgnu/kawa/models/Paintable;

    invoke-interface {v0}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public paint(Ljava/awt/Graphics2D;)V
    .locals 2
    .parameter "graphics"

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    .line 21
    .local v0, saved:Ljava/awt/Paint;
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/models/WithPaint;->paint:Ljava/awt/Paint;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 22
    iget-object v1, p0, Lgnu/kawa/models/WithPaint;->paintable:Lgnu/kawa/models/Paintable;

    invoke-interface {v1, p1}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 28
    return-void

    .line 26
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    throw v1
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)Lgnu/kawa/models/Paintable;
    .locals 3
    .parameter "tr"

    .prologue
    .line 37
    new-instance v0, Lgnu/kawa/models/WithPaint;

    iget-object v1, p0, Lgnu/kawa/models/WithPaint;->paintable:Lgnu/kawa/models/Paintable;

    invoke-interface {v1, p1}, Lgnu/kawa/models/Paintable;->transform(Ljava/awt/geom/AffineTransform;)Lgnu/kawa/models/Paintable;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/models/WithPaint;->paint:Ljava/awt/Paint;

    invoke-direct {v0, v1, v2}, Lgnu/kawa/models/WithPaint;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/Paint;)V

    return-object v0
.end method
