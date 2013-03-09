.class public Lcom/htc/album/Animation/animationSetGridview;
.super Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.source "animationSetGridview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/animation/animationSetBase",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFocusIndex:I

.field private mFocusItem:Lcom/htc/sunny2/view/Vector3F;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunny2/view/SView;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    .line 17
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    .line 23
    return-void
.end method

.method private createAlphaAnimation(ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 6
    .parameter "nAnimState"
    .parameter "listener"

    .prologue
    const-wide/16 v4, 0x12c

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget v1, p0, Lcom/htc/album/Animation/animationSetGridview;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    .line 157
    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 138
    .restart local v0       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 139
    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 140
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 141
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    goto :goto_0

    .line 147
    :pswitch_1
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 148
    .restart local v0       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 150
    invoke-virtual {v0, v3, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 151
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 152
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x2bc

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 130
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 3
    .parameter "nAnimState"

    .prologue
    .line 40
    iput p1, p0, Lcom/htc/album/Animation/animationSetGridview;->mAnimationState:I

    .line 41
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 46
    iget v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    return-object v0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    const-string v1, "thumb_animation_click_index"

    iget v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    const-string v1, "thumb_animation_click_index"

    iget v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    const-string v1, "thumb_animation_click_index"

    iget v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    const-string v1, "thumb_animation_click_pos"

    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    const-string v1, "thumb_animation_click_index"

    iget v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mBundle:Landroid/os/Bundle;

    const-string v1, "thumb_animation_click_pos"

    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 4
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 76
    iget v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mAnimationState:I

    packed-switch v2, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 79
    :pswitch_0
    if-nez p2, :cond_1

    :goto_1
    check-cast v1, Lcom/htc/sunny2/view/Vector3F;

    .line 80
    .local v1, startPos:Lcom/htc/sunny2/view/Vector3F;
    if-eqz p2, :cond_0

    if-nez v1, :cond_2

    .line 81
    :cond_0
    invoke-direct {p0, v3, p3}, Lcom/htc/album/Animation/animationSetGridview;->createAlphaAnimation(ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v0

    .line 82
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 79
    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v1           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_1
    const-string v2, "folder_animation_click_pos"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_1

    .line 85
    .restart local v1       #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_2
    new-instance v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;

    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v0, v2, v1}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/Vector3F;)V

    .line 86
    .local v0, controller:Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 87
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 93
    .end local v0           #controller:Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;
    .end local v1           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :pswitch_1
    if-nez p1, :cond_4

    :goto_2
    check-cast v1, Lcom/htc/sunny2/view/Vector3F;

    .line 94
    .restart local v1       #startPos:Lcom/htc/sunny2/view/Vector3F;
    if-eqz p1, :cond_3

    if-nez v1, :cond_5

    .line 95
    :cond_3
    invoke-direct {p0, v3, p3}, Lcom/htc/album/Animation/animationSetGridview;->createAlphaAnimation(ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v0

    .line 96
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 93
    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v1           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_4
    const-string v2, "folder_animation_click_pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_2

    .line 99
    .restart local v1       #startPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_5
    new-instance v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;

    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v0, v2, v1}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/Vector3F;)V

    .line 100
    .local v0, controller:Lcom/htc/album/Animation/MultiViewCollapsedAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 101
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 107
    .end local v0           #controller:Lcom/htc/album/Animation/MultiViewCollapsedAnimation;
    .end local v1           #startPos:Lcom/htc/sunny2/view/Vector3F;
    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, p3}, Lcom/htc/album/Animation/animationSetGridview;->createAlphaAnimation(ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v0

    .line 108
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 113
    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    :pswitch_3
    invoke-direct {p0, v3, p3}, Lcom/htc/album/Animation/animationSetGridview;->createAlphaAnimation(ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v0

    .line 114
    .restart local v0       #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public setFocused(ILcom/htc/sunny2/view/Vector3F;)V
    .locals 0
    .parameter "nIndex"
    .parameter "item"

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    .line 28
    iput-object p2, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    .line 29
    return-void
.end method
