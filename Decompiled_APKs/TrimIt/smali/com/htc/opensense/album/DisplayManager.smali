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
    .parameter "ctx"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    .line 808
    iput v2, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    .line 810
    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    .line 811
    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    .line 812
    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    .line 814
    new-instance v0, Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;-><init>(Lcom/htc/opensense/album/DisplayManager;Lcom/htc/opensense/album/DisplayManager$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    .line 815
    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    .line 816
    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    .line 818
    iput v2, p0, Lcom/htc/opensense/album/DisplayManager;->mCurrentCorientation:I

    .line 71
    iput-object p1, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    .line 74
    iput v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    .line 76
    iput-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    .line 78
    return-void
.end method

.method private switchTemplate(Z)V
    .locals 10
    .parameter "bDoTransition"

    .prologue
    .line 597
    iget v6, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 599
    .local v0, t1:J
    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v7, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 600
    .local v5, templatePre:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v5, :cond_0

    .line 601
    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->unbindAdapter()V

    .line 602
    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->onLeave()V

    .line 604
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 605
    .local v2, t2:J
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

    .line 608
    .end local v0           #t1:J
    .end local v2           #t2:J
    .end local v5           #templatePre:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v7, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 609
    .local v4, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v4, :cond_4

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 614
    .restart local v0       #t1:J
    invoke-virtual {v4}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    .line 616
    invoke-virtual {v4}, Lcom/htc/opensense/album/ViewTemplateBase;->bindAdapter()V

    .line 617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 618
    .restart local v2       #t2:J
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

    .line 620
    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    .line 621
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v6, v7}, Lcom/htc/opensense/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/DisplayManager;->refreshControlBars()V

    .line 632
    .end local v0           #t1:J
    .end local v2           #t2:J
    :cond_3
    :goto_0
    return-void

    .line 627
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

    .line 628
    const/16 v6, 0x800

    sget v7, Lcom/htc/opensense/album/AlbumCommon/CommonFeatureModeID;->CURRENT_MODE:I

    if-eq v6, v7, :cond_3

    .line 629
    iget-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public addTemplate(Lcom/htc/opensense/album/ViewTemplateBase;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/album/ViewTemplateBase",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 418
    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/album/ViewTemplateBase;->getId()I

    move-result v0

    .line 425
    .local v0, nId:I
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    invoke-virtual {p1}, Lcom/htc/opensense/album/ViewTemplateBase;->init()V

    .line 433
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    if-eqz v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {p1, v1}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateTitleBarSets(Lcom/htc/opensense/album/AlbumTitleBar;)Z

    .line 436
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/AlbumTitleBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {p1, v1}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateCommandBarSets(Lcom/htc/opensense/album/AlbumCommandBar;)Z

    .line 442
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/AlbumCommandBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bindTemplate(I)V
    .locals 3
    .parameter "templateId"

    .prologue
    .line 508
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 511
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->bindAdapter()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 114
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 126
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 139
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    return-object v0
.end method

.method public getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-nez v0, :cond_0

    .line 775
    const/4 v0, 0x0

    .line 777
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

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    if-nez v0, :cond_0

    .line 763
    const/4 v0, 0x0

    .line 765
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

    .prologue
    .line 485
    iget v0, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    return v0
.end method

.method public getPreviousTemplateId()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    return v0
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 328
    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 341
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 343
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->handleActivityMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 333
    .end local v0           #template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    :pswitch_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unlock system event"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    goto :goto_1

    .line 337
    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(Z)V

    goto :goto_1

    .line 330
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

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 150
    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 153
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/ViewTemplateBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 303
    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 321
    :cond_0
    return-void

    .line 305
    :cond_1
    const/4 v1, 0x0

    .line 307
    .local v1, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 309
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    check-cast v1, Lcom/htc/opensense/album/ViewTemplateBase;

    .restart local v1       #template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-nez v1, :cond_3

    .line 307
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/opensense/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    .line 313
    invoke-virtual {v1, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 315
    iget-boolean v2, v1, Lcom/htc/opensense/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 316
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Do not call super function."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 231
    iget v4, p0, Lcom/htc/opensense/album/DisplayManager;->mCurrentCorientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v6, :cond_1

    const/4 v1, 0x1

    .line 232
    .local v1, oriChanged:Z
    :goto_0
    iget v4, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    if-ne v4, v7, :cond_2

    .line 274
    :cond_0
    :goto_1
    return-void

    .end local v1           #oriChanged:Z
    :cond_1
    move v1, v3

    .line 231
    goto :goto_0

    .line 235
    .restart local v1       #oriChanged:Z
    :cond_2
    if-nez v1, :cond_3

    .line 237
    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[onConfigurationChanged] no change, skip now..."

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_3
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/opensense/album/DisplayManager;->mCurrentCorientation:I

    .line 243
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v6, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 244
    .local v2, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v2, :cond_0

    .line 247
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][DisplayManager][onConfigurationChanged]: Begin"

    invoke-static {v4, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/htc/opensense/album/DisplayManager;->refreshControlBars()V

    .line 251
    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/htc/opensense/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    move-result v4

    if-gt v4, v7, :cond_4

    .line 259
    :cond_4
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 261
    invoke-virtual {v2}, Lcom/htc/opensense/album/ViewTemplateBase;->doControlBarTransition()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/ControlButtonCollection;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 263
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-nez v4, :cond_6

    move v4, v5

    :goto_2
    invoke-direct {v0, v5, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 267
    .local v0, controlBarAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 268
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 269
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    const/16 v5, 0x2bc

    invoke-virtual {p0, v4, v0, v5, v3}, Lcom/htc/opensense/album/DisplayManager;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 273
    .end local v0           #controlBarAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_5
    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DisplayManager][onConfigurationChanged]: End"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 263
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
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 217
    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v1

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 220
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/htc/opensense/album/DisplayManager;->release()V

    .line 283
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 88
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 189
    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 192
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-boolean v2, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 101
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/opensense/album/DisplayManager;->mCurrentCorientation:I

    .line 204
    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 207
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onResume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 163
    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 166
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onStart()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 176
    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 179
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onStop()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 649
    iget v1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 652
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public playDefaultMainViewAnimation(Z)V
    .locals 3
    .parameter "playNow"

    .prologue
    .line 291
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 292
    .local v0, showMainView:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 293
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 294
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    const/16 v2, 0x2bc

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/htc/opensense/album/DisplayManager;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 295
    return-void
.end method

.method public refreshControlBars()V
    .locals 5

    .prologue
    .line 662
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 663
    .local v1, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-nez v1, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    if-eqz v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateTitleBarSets(Lcom/htc/opensense/album/AlbumTitleBar;)Z

    .line 669
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/AlbumTitleBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/ViewTemplateBase;->getTitleBarLayout()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/AlbumTitleBar;->switchControlBarLayout(I)V

    .line 671
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/AlbumTitleBar;->getControlBar()Lcom/htc/opensense/album/ControlTitleBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 673
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/AlbumTitleBar;->getControlBar()Lcom/htc/opensense/album/ControlTitleBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase;->configureTitleBar(Lcom/htc/opensense/album/ControlTitleBar;)V

    .line 676
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v2, :cond_3

    .line 679
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/AlbumCommandBar;->setLayoutMode(I)V

    .line 681
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase;->onCreateCommandBarSets(Lcom/htc/opensense/album/AlbumCommandBar;)Z

    .line 682
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/AlbumCommandBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/ViewTemplateBase;->getCommandBarLayout()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/AlbumCommandBar;->switchControlBarLayout(II)V

    .line 685
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 687
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ViewTemplateBase;->configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V

    .line 691
    :cond_3
    const/4 v0, 0x0

    .line 692
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v1, v0}, Lcom/htc/opensense/album/ViewTemplateBase;->configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_0
.end method

.method protected release()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 383
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 384
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 385
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 387
    .local v3, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    if-ne v4, v5, :cond_0

    .line 389
    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->unbindAdapter()V

    .line 390
    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->onLeave()V

    .line 392
    :cond_0
    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->onDestroy()V

    .line 393
    invoke-virtual {v3}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 395
    .end local v0           #i:Ljava/lang/Integer;
    .end local v3           #template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    if-eqz v4, :cond_2

    .line 397
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumTitleBar;->removeAllViews()V

    .line 398
    iput-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    .line 400
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v4, :cond_3

    .line 402
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v4}, Lcom/htc/opensense/album/AlbumCommandBar;->removeAllViews()V

    .line 403
    iput-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    .line 406
    :cond_3
    iput-object v6, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    .line 407
    iput v7, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    .line 408
    iput v7, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    .line 409
    return-void
.end method

.method public removeTemplate(I)Z
    .locals 3
    .parameter "nId"

    .prologue
    .line 463
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 471
    :goto_0
    return v1

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 467
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 471
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V
    .locals 4
    .parameter "view"
    .parameter "anim"
    .parameter "duration"
    .parameter "playNow"

    .prologue
    .line 701
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 704
    if-eqz p4, :cond_2

    .line 705
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "lock system event"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/DisplayManager;->mBlockSystemEvent:Z

    .line 710
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 711
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 712
    const/16 v1, 0x1389

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setActivityListener(Lcom/htc/opensense/album/TemplateActivityInterface;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    .line 737
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    .line 522
    if-nez p1, :cond_1

    .line 532
    :cond_0
    return-void

    .line 525
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 526
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 527
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 529
    .local v3, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v3, :cond_2

    .line 530
    invoke-virtual {v3, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method public setControlBarViewContainerId(I)V
    .locals 2
    .parameter "idControlBarView"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/4 v0, 0x0

    .line 370
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 371
    instance-of v1, v0, Lcom/htc/opensense/album/AlbumTitleBar;

    if-eqz v1, :cond_2

    .line 372
    check-cast v0, Lcom/htc/opensense/album/AlbumTitleBar;

    .end local v0           #view:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerTitleBars:Lcom/htc/opensense/album/AlbumTitleBar;

    goto :goto_0

    .line 373
    .restart local v0       #view:Landroid/view/View;
    :cond_2
    instance-of v1, v0, Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v1, :cond_3

    .line 374
    check-cast v0, Lcom/htc/opensense/album/AlbumCommandBar;

    .end local v0           #view:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    goto :goto_0

    .line 375
    .restart local v0       #view:Landroid/view/View;
    :cond_3
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 376
    check-cast v0, Landroid/widget/RelativeLayout;

    .end local v0           #view:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public setMainViewContainerId(I)V
    .locals 1
    .parameter "idMainView"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/opensense/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    .line 357
    :cond_0
    return-void
.end method

.method public switchBackToPreviousTemplate(Z)V
    .locals 2
    .parameter "bDoTransition"

    .prologue
    .line 638
    iget v0, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 639
    return-void
.end method

.method public switchCommandBar(II)V
    .locals 3
    .parameter "nLayoutID"
    .parameter "nVisibility"

    .prologue
    .line 782
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v1

    if-nez v1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 793
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 796
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1, p1, p2}, Lcom/htc/opensense/album/AlbumCommandBar;->switchControlBarLayout(II)V

    .line 797
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager;->mOnControlButtonClick:Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/AlbumCommandBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mContainerCommandBars:Lcom/htc/opensense/album/AlbumCommandBar;

    invoke-virtual {v1}, Lcom/htc/opensense/album/AlbumCommandBar;->getControlBar()Lcom/htc/opensense/album/ControlButtonCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ViewTemplateBase;->configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V

    goto :goto_0
.end method

.method public switchTemplate(ILandroid/os/Bundle;Z)V
    .locals 12
    .parameter "templateId"
    .parameter "bundle"
    .parameter "bDoTransition"

    .prologue
    const/4 v11, -0x1

    .line 540
    iget v8, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    iput v8, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    .line 542
    iput p1, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    .line 544
    iput-object p2, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    .line 545
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    if-nez v8, :cond_0

    .line 547
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    .line 549
    :cond_0
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "focus_template"

    iget v10, p0, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "previous_template"

    iget v10, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "transition_template"

    invoke-virtual {v8, v9, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 557
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 558
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 560
    .local v2, i:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 562
    .local v5, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v5, :cond_1

    .line 564
    invoke-virtual {v5}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 568
    .end local v2           #i:Ljava/lang/Integer;
    .end local v5           #template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    :cond_2
    const/4 v0, 0x0

    .line 569
    .local v0, bAnimation:Z
    iget v8, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    if-eq v8, v11, :cond_4

    if-eqz p3, :cond_4

    .line 571
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v9, p0, Lcom/htc/opensense/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 572
    .local v6, templatePre:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v6, :cond_4

    .line 574
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/htc/opensense/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v8, v9}, Lcom/htc/opensense/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    move-result v7

    .line 575
    .local v7, time:I
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->mActivityListener:Lcom/htc/opensense/album/TemplateActivityInterface;

    invoke-interface {v8}, Lcom/htc/opensense/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 576
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_3

    if-le v7, v11, :cond_3

    .line 578
    const/4 v0, 0x1

    .line 579
    const/16 v8, 0x138c

    int-to-long v9, v7

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 582
    :cond_3
    iget-object v8, p0, Lcom/htc/opensense/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][DisplayManager][switchTemplate]1: Do back... "

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .end local v1           #handler:Landroid/os/Handler;
    .end local v6           #templatePre:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    .end local v7           #time:I
    :cond_4
    if-nez v0, :cond_5

    .line 587
    invoke-direct {p0, p3}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(Z)V

    .line 591
    :cond_5
    return-void
.end method

.method public unbindTemplate(I)V
    .locals 3
    .parameter "templateId"

    .prologue
    .line 494
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 497
    .local v0, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->unbindAdapter()V

    goto :goto_0
.end method
