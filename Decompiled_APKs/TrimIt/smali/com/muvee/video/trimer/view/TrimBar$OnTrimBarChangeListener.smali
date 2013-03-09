.class public interface abstract Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
.super Ljava/lang/Object;
.source "TrimBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/video/trimer/view/TrimBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTrimBarChangeListener"
.end annotation


# virtual methods
.method public abstract onTrimBarCurrentPositionChanged(IZ)V
.end method

.method public abstract onTrimBarPressed(I)V
.end method

.method public abstract onTrimBarReleased(Lcom/muvee/video/trimer/view/TrimBar$State;)V
.end method

.method public abstract onTrimLeftPressed()V
.end method

.method public abstract onTrimRightPressed()V
.end method
