.class public abstract Lorg/apache/xml/dtm/DTMAxisTraverser;
.super Ljava/lang/Object;
.source "DTMAxisTraverser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 1

    invoke-virtual {p0, p1, p1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    return v0
.end method

.method public first(II)I
    .locals 1

    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(III)I

    move-result v0

    return v0
.end method

.method public abstract next(II)I
.end method

.method public abstract next(III)I
.end method
