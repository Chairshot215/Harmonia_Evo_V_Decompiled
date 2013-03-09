.class public Lcom/htc/album/Animation/animationSetFolderGridview;
.super Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.source "animationSetFolderGridview.java"


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
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunny2/view/SView;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    .line 17
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    .line 22
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x2bc

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 153
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 5
    .parameter "nAnimState"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 38
    iput p1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mAnimationState:I

    .line 39
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 40
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mBundle:Landroid/os/Bundle;

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 44
    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mAnimationState:I

    packed-switch v2, :pswitch_data_0

    .line 101
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mBundle:Landroid/os/Bundle;

    return-object v2

    .line 49
    :pswitch_1
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    if-nez v2, :cond_1

    .line 50
    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_2

    .line 55
    iget v3, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v1, v3, v2

    .line 56
    .local v1, idx:I
    if-le v1, v4, :cond_2

    .line 58
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 59
    .local v0, child:Lcom/htc/sunny2/view/SView;
    if-eqz v0, :cond_2

    .line 60
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 64
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    .end local v1           #idx:I
    :cond_2
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_pos"

    iget-object v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    if-nez v2, :cond_3

    .line 72
    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_4

    .line 77
    iget v3, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v1, v3, v2

    .line 78
    .restart local v1       #idx:I
    if-le v1, v4, :cond_4

    .line 80
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 81
    .restart local v0       #child:Lcom/htc/sunny2/view/SView;
    if-eqz v0, :cond_4

    .line 82
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 86
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    .end local v1           #idx:I
    :cond_4
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_pos"

    iget-object v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusItem:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    iget-object v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mBundle:Landroid/os/Bundle;

    const-string v3, "folder_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 108
    iget v1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 111
    :pswitch_0
    new-instance v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;

    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-direct {v0, v1, v2}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 112
    .local v0, controller:Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 113
    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 118
    .end local v0           #controller:Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
    :pswitch_1
    new-instance v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;

    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    invoke-direct {v0, v1, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    .line 119
    .local v0, controller:Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 120
    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 125
    .end local v0           #controller:Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
    :pswitch_2
    new-instance v0, Lcom/htc/album/Animation/MultiViewDropAnimation;

    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v0, v1}, Lcom/htc/album/Animation/MultiViewDropAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 126
    .local v0, controller:Lcom/htc/album/Animation/MultiViewDropAnimation;
    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/MultiViewDropAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 127
    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 132
    .end local v0           #controller:Lcom/htc/album/Animation/MultiViewDropAnimation;
    :pswitch_3
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 133
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 134
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 135
    invoke-virtual {v0, p3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 136
    iget-object v1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public setFocused(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/album/Animation/animationSetFolderGridview;->mFocusIndex:I

    .line 27
    return-void
.end method
