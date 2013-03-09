.class public interface abstract Lcom/htc/sunny2/view/IViewScroller;
.super Ljava/lang/Object;
.source "IViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;,
        Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;,
        Lcom/htc/sunny2/view/IViewScroller$STATUS;
    }
.end annotation


# virtual methods
.method public abstract deInit()V
.end method

.method public abstract getItemAlignMode()Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;
.end method

.method public abstract getRelativeMovement()I
.end method

.method public abstract getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;
.end method

.method public abstract init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z
.end method

.method public abstract onFling(F)V
.end method

.method public abstract onTouchDown(I)V
.end method

.method public abstract onTouchMove(I)V
.end method

.method public abstract onTouchUp(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract update()V
.end method
