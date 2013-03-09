.class public interface abstract Lorg/apache/xml/dtm/DTMAxisIterator;
.super Ljava/lang/Object;
.source "DTMAxisIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final END:I = -0x1


# virtual methods
.method public abstract cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
.end method

.method public abstract getLast()I
.end method

.method public abstract getNodeByPosition(I)I
.end method

.method public abstract getPosition()I
.end method

.method public abstract getStartNode()I
.end method

.method public abstract gotoMark()V
.end method

.method public abstract isReverse()Z
.end method

.method public abstract next()I
.end method

.method public abstract reset()Lorg/apache/xml/dtm/DTMAxisIterator;
.end method

.method public abstract setMark()V
.end method

.method public abstract setRestartable(Z)V
.end method

.method public abstract setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
.end method
