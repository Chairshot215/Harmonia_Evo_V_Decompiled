.class public Lcom/htc/opensense/album/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"

# interfaces
.implements Lcom/htc/opensense/album/DisplayManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/DisplayManager$1;,
        Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

.field protected mBlockSystemEvent:Z

.field protected mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

.field protected mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

.field protected mContext:Landroid/app/Activity;

.field protected mCurrentCorientation:I

.field protected mFocusTemplateId:I

.field protected mMainView:Landroid/view/ViewGroup;

.field protected mMainViewWrapper:Landroid/view/ViewGroup;

.field protected mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

.field protected mPrevFocusTemplateId:I

.field protected mTargetBundle:Landroid/os/Bundle;

.field protected mTemplates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense/album/ViewTemplateBase",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    iput v2, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    new-instance v0, Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;-><init>(Lcom/htc/opensense/album/DisplayManager;Lcom/htc/opensense/album/DisplayManager$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    iput v2, p0, Lcom/htc/opensense/album/DisplayManager;->mCurrentCorientation:I

    iput-object p1, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iput v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    return-void
.end method

.method private switchTemplate(Z)V
    .locals 10

    iget v6, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v7, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->unbindAdapter()V

    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->onLeave()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Template leave time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v7, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/htc/opensense/album/ViewTemplateBase;->bindAdapter()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Template enter time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v6, v7}, Lcom/htc/opensense/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/DisplayManager;->refreshControlBars()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to switch to a not existing Template = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x800

    sget v7, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public addTemplate(Lcom/htc/opensense/album/ViewTemplateBase;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/album/ViewTemplateBase",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/album/ViewTemplateBase;->init()V

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {p1, v1}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateTitleBarSets(Lcom/htc/opensense/album/AlbumTitleBar;)Z

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/AlbumTitleBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {p1, v1}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateCommandBarSets(Lcom/htc/opensense/album/AlbumCommandBar;)Z

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/AlbumCommandBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bindTemplate(I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->bindAdapter()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    return-object v0
.end method

.method public getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v0}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v0}, Lcom/htc/opensense/album/AlbumTitleBar;->getControlBar()Lcom/htc/opensense/album/ControlTitleBar;

    move-result-object v0

    goto :goto_0
.end method

.method public getFocusTemplateId()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    return v0
.end method

.method public getPreviousTemplateId()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    return v0
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->handleActivityMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unlock system event"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isBlockSystemEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/ViewTemplateBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/ViewTemplateBase;

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/opensense/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    invoke-virtual {v1, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V

    iget-boolean v2, v1, Lcom/htc/opensense/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Do not call super function."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x0

    iget v4, p0, Lcom/htc/opensense/album/DisplayManager;->mCurrentCorientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget v4, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    if-ne v4, v7, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[onConfigurationChanged] no change, skip now..."

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/opensense/album/DisplayManager;->mCurrentCorientation:I

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v6, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][DisplayManager][onConfigurationChanged]: Begin"

    invoke-static {v4, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/DisplayManager;->refreshControlBars()V

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/htc/opensense/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    move-result v4

    if-gt v4, v7, :cond_4

    :cond_4
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/htc/opensense/album/ViewTemplateBase;->doControlBarTransition()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/ControlButtonCollection;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-nez v4, :cond_6

    move v4, v5

    :goto_2
    invoke-direct {v0, v5, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    const/16 v5, 0x2bc

    invoke-virtual {p0, v4, v0, v5, v3}, Lcom/htc/opensense/album/DisplayManager;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    :cond_5
    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DisplayManager][onConfigurationChanged]: End"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumCommandBar;->getBottom()I

    move-result v4

    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v6}, Lcom/htc/opensense/album/AlbumCommandBar;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/opensense/album/DisplayManager;->release()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/opensense/album/DisplayManager;->mCurrentCorientation:I

    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onResume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onStart()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onStop()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public playDefaultMainViewAnimation(Z)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    const/16 v2, 0x2bc

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/htc/opensense/album/DisplayManager;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    return-void
.end method

.method public refreshControlBars()V
    .locals 5

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/ViewTemplateBase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateTitleBarSets(Lcom/htc/opensense/album/AlbumTitleBar;)Z

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/AlbumTitleBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/ViewTemplateBase;->getTitleBarLayout()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/AlbumTitleBar;->switchControlBarLayout(I)V

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/AlbumTitleBar;->getControlBar()Lcom/htc/opensense/album/ControlTitleBar;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/AlbumTitleBar;->getControlBar()Lcom/htc/opensense/album/ControlTitleBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase;->configureTitleBar(Lcom/htc/opensense/album/ControlTitleBar;)V

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/AlbumCommandBar;->setLayoutMode(I)V

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateCommandBarSets(Lcom/htc/opensense/album/AlbumCommandBar;)Z

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/AlbumCommandBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/ViewTemplateBase;->getCommandBarLayout()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/AlbumCommandBar;->switchControlBarLayout(II)V

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase;->configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V

    :cond_3
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/htc/opensense/album/ViewTemplateBase;->configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_0
.end method

.method protected release()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->unbindAdapter()V

    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->onLeave()V

    :cond_0
    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->onDestroy()V

    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumTitleBar;->removeAllViews()V

    iput-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumCommandBar;->removeAllViews()V

    iput-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    :cond_3
    iput-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    iput v7, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    iput v7, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    return-void
.end method

.method public removeTemplate(I)Z
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "lock system event"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1389

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setActivityListener(Lcom/htc/opensense/album/TemplateActivityInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method public setControlBarViewContainerId(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/opensense/album/AlbumTitleBar;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/htc/opensense/album/AlbumTitleBar;

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/htc/opensense/album/AlbumCommandBar;

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    goto :goto_0

    :cond_3
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public setMainViewContainerId(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public switchBackToPreviousTemplate(Z)V
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public switchCommandBar(II)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1, p1, p2}, Lcom/htc/opensense/album/AlbumCommandBar;->switchControlBarLayout(II)V

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/AlbumCommandBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ViewTemplateBase;->configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V

    goto :goto_0
.end method

.method public switchTemplate(ILandroid/os/Bundle;Z)V
    .locals 12

    const/4 v11, -0x1

    iget v8, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    iput v8, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    iput p1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    iput-object p2, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    if-nez v8, :cond_0

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    :cond_0
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "focus_template"

    iget v10, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "previous_template"

    iget v10, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "transition_template"

    invoke-virtual {v8, v9, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget v8, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    if-eq v8, v11, :cond_4

    if-eqz p3, :cond_4

    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v9, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v6, :cond_4

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v8, v9}, Lcom/htc/opensense/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    invoke-interface {v8}, Lcom/htc/opensense/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    if-le v7, v11, :cond_3

    const/4 v0, 0x1

    const/16 v8, 0x138c

    int-to-long v9, v7

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][DisplayManager][switchTemplate]1: Do back... "

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0, p3}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(Z)V

    :cond_5
    return-void
.end method

.method public unbindTemplate(I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->unbindAdapter()V

    goto :goto_0
.end method
