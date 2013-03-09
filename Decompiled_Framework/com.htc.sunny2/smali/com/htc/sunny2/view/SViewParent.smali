.class public interface abstract Lcom/htc/sunny2/view/SViewParent;
.super Ljava/lang/Object;
.source "SViewParent.java"


# virtual methods
.method public abstract addView(Lcom/htc/sunny2/view/SView;)V
.end method

.method public abstract createContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public abstract getRenderThread()Lcom/htc/sunny2/RenderThread;
.end method

.method public abstract getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;
.end method

.method public abstract hasWindowFocus()Z
.end method

.method public abstract isBindedSurface()Z
.end method

.method public abstract performHapticFeedback(I)Z
.end method

.method public abstract performHapticFeedback(II)Z
.end method

.method public abstract playSoundEffect(I)V
.end method

.method public abstract removeView(Lcom/htc/sunny2/view/SView;)V
.end method

.method public abstract requestLayout()V
.end method

.method public abstract setGlobalBackgroundResource(I)V
.end method

.method public abstract setGlobalHeaderBar(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z
.end method
