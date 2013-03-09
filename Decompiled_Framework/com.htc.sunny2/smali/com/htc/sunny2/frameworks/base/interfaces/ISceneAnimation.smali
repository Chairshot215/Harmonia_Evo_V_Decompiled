.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
.super Ljava/lang/Object;
.source "ISceneAnimation.java"


# static fields
.field public static final ANIM_IN:I = 0x1

.field public static final ANIM_OUT:I = 0x3

.field public static final ANIM_POP_OUT:I = 0x2

.field public static final ANIM_PUSH_IN:I = 0x0

.field public static final ANIM_UNKNOWN:I = -0x1


# virtual methods
.method public abstract getAnimationDuration()I
.end method

.method public abstract onAnimationEnd(I)V
.end method

.method public abstract onCreateAnimation(I)Landroid/os/Bundle;
.end method

.method public abstract onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
.end method

.method public abstract onPrepareAnimation(I)Z
.end method
