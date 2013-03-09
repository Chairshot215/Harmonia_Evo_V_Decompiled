.class public interface abstract Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
.super Ljava/lang/Object;
.source "IdleDragControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;,
        Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;,
        Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;
    }
.end annotation


# virtual methods
.method public abstract clearClickAnime()V
.end method

.method public abstract clearUnlockAnime()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract init()V
.end method

.method public abstract reset()V
.end method

.method public abstract setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V
.end method

.method public abstract setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZI)V
.end method

.method public abstract setDropIndex(I)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setEnableGoldenRate(Z)V
.end method

.method public abstract setFakeImage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setOnBackListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;)V
.end method

.method public abstract setOnDragListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;)V
.end method

.method public abstract setOnTouchListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnTouchListener;)V
.end method

.method public abstract setOpacity(FZ)V
.end method

.method public abstract setUnlockAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setUnlockAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract uninit()V
.end method
