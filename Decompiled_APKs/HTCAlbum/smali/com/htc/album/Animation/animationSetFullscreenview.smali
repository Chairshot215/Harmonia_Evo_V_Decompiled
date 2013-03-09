.class public Lcom/htc/album/Animation/animationSetFullscreenview;
.super Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.source "animationSetFullscreenview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/animation/animationSetBase",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunny2/view/SView;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x2bc

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->showFullFilmView()V

    .line 122
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 5
    .parameter "nAnimState"

    .prologue
    const/16 v4, 0xb4

    const/4 v3, 0x0

    .line 43
    iput p1, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mAnimationState:I

    .line 44
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 47
    iget v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    return-object v0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "FROM_WIDTH"

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 52
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "FROM_HEIGHT"

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 53
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_X"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_Y"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "ANIMATION_STATE"

    iget v2, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mAnimationState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "DURATION"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideFullFilmView()V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_WIDTH"

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 62
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "TO_HEIGHT"

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 63
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "FROM_X"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "FROM_Y"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "ANIMATION_STATE"

    iget v2, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mAnimationState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v1, "DURATION"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 4
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    const/high16 v3, 0x3f80

    .line 75
    iget v1, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    .line 112
    :goto_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 80
    const-string v1, "thumb_animation_click_pos"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/view/Vector3F;

    .line 81
    .local v0, vector3F:Lcom/htc/sunny2/view/Vector3F;
    if-nez v0, :cond_1

    .line 91
    .end local v0           #vector3F:Lcom/htc/sunny2/view/Vector3F;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    goto :goto_0

    .line 87
    .restart local v0       #vector3F:Lcom/htc/sunny2/view/Vector3F;
    :cond_1
    const-string v1, "FROM_X"

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "FROM_Y"

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 94
    .end local v0           #vector3F:Lcom/htc/sunny2/view/Vector3F;
    :pswitch_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 96
    const-string v1, "thumb_animation_click_pos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/view/Vector3F;

    .line 97
    .restart local v0       #vector3F:Lcom/htc/sunny2/view/Vector3F;
    if-eqz v0, :cond_2

    const-string v1, "thumb_animation_click_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    if-eq v2, v1, :cond_4

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v2, "TO_WIDTH"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 101
    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mBundle:Landroid/os/Bundle;

    const-string v2, "TO_HEIGHT"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 109
    .end local v0           #vector3F:Lcom/htc/sunny2/view/Vector3F;
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, p2, p1, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    goto :goto_0

    .line 105
    .restart local v0       #vector3F:Lcom/htc/sunny2/view/Vector3F;
    :cond_4
    const-string v1, "TO_X"

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v1, "TO_Y"

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    move v0, v2

    .line 38
    :goto_0
    return v0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    move v0, v1

    .line 30
    goto :goto_0

    .line 32
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/Animation/animationSetFullscreenview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    move v0, v1

    .line 33
    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
