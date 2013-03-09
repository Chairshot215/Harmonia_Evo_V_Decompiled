.class public interface abstract Lcom/android/camera/widget/ScrollInterface;
.super Ljava/lang/Object;
.source "ScrollInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;
    }
.end annotation


# virtual methods
.method public abstract getMax()I
.end method

.method public abstract getMin()I
.end method

.method public abstract getPosition()I
.end method

.method public abstract increasePosition(I)V
.end method

.method public abstract releaseResource()V
.end method

.method public abstract setMinMax(II)Z
.end method

.method public abstract setOnPositionChangeListner(Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;)V
.end method

.method public abstract setPosition(I)Z
.end method
