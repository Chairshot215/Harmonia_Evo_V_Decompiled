.class public Lcom/htc/opensense2/album/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/DisplayManagerInterface;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mActivityListener:Lcom/htc/opensense2/album/TemplateActivityInterface;

.field protected mBlockSystemEvent:Z

.field protected mContext:Landroid/app/Activity;

.field protected mCurrentCorientation:I

.field protected mFocusTemplateId:I

.field public mMainView:Landroid/view/ViewGroup;

.field protected mMainViewWrapper:Landroid/view/ViewGroup;

.field protected mPrevFocusTemplateId:I

.field protected mTargetBundle:Landroid/os/Bundle;

.field protected mTemplates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense2/album/ViewTemplateBase",
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

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    .line 741
    iput v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    .line 743
    iput-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    .line 745
    iput-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mActivityListener:Lcom/htc/opensense2/album/TemplateActivityInterface;

    .line 746
    iput-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    .line 748
    iput v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mCurrentCorientation:I

    .line 47
    iput-object p1, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    .line 50
    iput v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    .line 52
    iput-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    .line 54
    return-void
.end method

.method private switchTemplate(Z)V
    .locals 10
    .parameter "bDoTransition"

    .prologue
    .line 617
    iget v6, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 619
    .local v0, t1:J
    iget-object v6, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v7, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 620
    .local v5, templatePre:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v5, :cond_0

    .line 621
    invoke-virtual {v5}, Lcom/htc/opensense2/album/ViewTemplateBase;->unbindAdapter()V

    .line 622
    invoke-virtual {v5}, Lcom/htc/opensense2/album/ViewTemplateBase;->onLeave()V

    .line 624
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 625
    .local v2, t2:J
    iget-object v6, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v0           #t1:J
    .end local v2           #t2:J
    .end local v5           #templatePre:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v7, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 629
    .local v4, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v4, :cond_3

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 634
    .restart local v0       #t1:J
    invoke-virtual {v4}, Lcom/htc/opensense2/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget-object v6, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    .line 636
    invoke-virtual {v4}, Lcom/htc/opensense2/album/ViewTemplateBase;->bindAdapter()V

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 638
    .restart local v2       #t2:J
    iget-object v6, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    .line 641
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v6, v7}, Lcom/htc/opensense2/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    .line 643
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/DisplayManager;->refreshControlBars()V

    .line 651
    .end local v0           #t1:J
    .end local v2           #t2:J
    :goto_0
    return-void

    .line 647
    :cond_3
    iget-object v6, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to switch to a not existing Template = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v6, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public addTemplate(Lcom/htc/opensense2/album/ViewTemplateBase;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense2/album/ViewTemplateBase",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 428
    if-nez p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v2

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->getId()I

    move-result v0

    .line 435
    .local v0, nId:I
    iget-object v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    invoke-virtual {p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->init()V

    .line 440
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 444
    invoke-virtual {p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v1

    .line 445
    .local v1, view:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    .end local v1           #view:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bindTemplate(I)V
    .locals 3
    .parameter "templateId"

    .prologue
    .line 505
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 508
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->bindAdapter()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-boolean v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 98
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-boolean v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 110
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-boolean v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 123
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public getActivityListener()Lcom/htc/opensense2/album/TemplateActivityInterface;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mActivityListener:Lcom/htc/opensense2/album/TemplateActivityInterface;

    return-object v0
.end method

.method public getFocusTemplateId()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    return v0
.end method

.method public getMainViewWrapper()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPreviousTemplateId()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    return v0
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 356
    iget v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 369
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 371
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->handleActivityMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 361
    .end local v0           #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    :pswitch_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unlock system event"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    goto :goto_1

    .line 365
    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/opensense2/album/DisplayManager;->switchTemplate(Z)V

    goto :goto_1

    .line 358
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
    .line 710
    iget-boolean v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    return v0
.end method

.method public notifyUpdateOverlay()V
    .locals 5

    .prologue
    .line 536
    iget-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 537
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 539
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 540
    .local v3, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v3, :cond_0

    .line 541
    invoke-virtual {v3}, Lcom/htc/opensense2/album/ViewTemplateBase;->onNotifyUpdateOverlay()V

    goto :goto_0

    .line 543
    .end local v0           #i:Ljava/lang/Integer;
    .end local v3           #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    :cond_1
    return-void
.end method

.method public notifyUpdateOverlay(Ljava/lang/Object;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 546
    iget-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 547
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 549
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 550
    .local v3, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v3, :cond_0

    .line 551
    invoke-virtual {v3, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onNotifyUpdateOverlay(Ljava/lang/Object;)V

    goto :goto_0

    .line 553
    .end local v0           #i:Ljava/lang/Integer;
    .end local v3           #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DisplayManager][onActivityResult]:..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 139
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense2/album/ViewTemplateBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 287
    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 303
    :cond_0
    return-void

    .line 289
    :cond_1
    const/4 v1, 0x0

    .line 291
    .local v1, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 293
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    check-cast v1, Lcom/htc/opensense2/album/ViewTemplateBase;

    .restart local v1       #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-nez v1, :cond_3

    .line 291
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/opensense2/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    .line 297
    invoke-virtual {v1, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 299
    iget-boolean v2, v1, Lcom/htc/opensense2/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 300
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Do not call super function."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, -0x1

    .line 231
    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mCurrentCorientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 232
    .local v0, oriChanged:Z
    :goto_0
    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    if-ne v2, v4, :cond_2

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 231
    .end local v0           #oriChanged:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    .restart local v0       #oriChanged:Z
    :cond_2
    if-nez v0, :cond_3

    .line 237
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[onConfigurationChanged] no change, skip now..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_3
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mCurrentCorientation:I

    .line 243
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 244
    .local v1, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v1, :cond_0

    .line 247
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][DisplayManager][onConfigurationChanged]: Begin"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/htc/opensense2/album/DisplayManager;->refreshControlBars()V

    .line 251
    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense2/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    move-result v2

    if-gt v2, v4, :cond_4

    .line 257
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][DisplayManager][onConfigurationChanged]: End"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onContentDataChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 204
    iget v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 207
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onContentDataChange(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 217
    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v1

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 220
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/htc/opensense2/album/DisplayManager;->release()V

    .line 267
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-boolean v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 86
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 335
    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    .line 348
    :cond_0
    return v0

    .line 337
    :cond_1
    const/4 v2, 0x0

    .line 338
    .local v2, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    const/4 v0, 0x0

    .line 340
    .local v0, bHandled:Z
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 342
    iget-object v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    check-cast v2, Lcom/htc/opensense2/album/ViewTemplateBase;

    .restart local v2       #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-nez v2, :cond_2

    .line 340
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;->onMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 312
    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    .line 325
    :cond_0
    return v0

    .line 314
    :cond_1
    const/4 v2, 0x0

    .line 315
    .local v2, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    const/4 v0, 0x0

    .line 317
    .local v0, bHandled:Z
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 319
    iget-object v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    check-cast v2, Lcom/htc/opensense2/album/ViewTemplateBase;

    .restart local v2       #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-nez v2, :cond_2

    .line 317
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;->onMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-boolean v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 64
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 175
    iget v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 178
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-boolean v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 77
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mCurrentCorientation:I

    .line 190
    iget v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 193
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->onResume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 149
    iget v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 152
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->onStart()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 162
    iget v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 165
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->onStop()V

    goto :goto_0
.end method

.method public playDefaultMainViewAnimation(Z)V
    .locals 3
    .parameter "playNow"

    .prologue
    .line 275
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 276
    .local v0, showMainView:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 277
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 278
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    const/16 v2, 0x2bc

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/htc/opensense2/album/DisplayManager;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 279
    return-void
.end method

.method public refreshControlBars()V
    .locals 4

    .prologue
    .line 674
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v3, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 675
    .local v1, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-nez v1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    invoke-virtual {v1}, Lcom/htc/opensense2/album/ViewTemplateBase;->invalidateControlBars()V

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_0
.end method

.method protected release()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 403
    iget-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 404
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

    .line 405
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 407
    .local v3, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    if-ne v4, v5, :cond_0

    .line 409
    invoke-virtual {v3}, Lcom/htc/opensense2/album/ViewTemplateBase;->unbindAdapter()V

    .line 410
    invoke-virtual {v3}, Lcom/htc/opensense2/album/ViewTemplateBase;->onLeave()V

    .line 412
    :cond_0
    invoke-virtual {v3}, Lcom/htc/opensense2/album/ViewTemplateBase;->onDestroy()V

    goto :goto_0

    .line 416
    .end local v0           #i:Ljava/lang/Integer;
    .end local v3           #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    .line 417
    iput v6, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    .line 418
    iput v6, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    .line 419
    return-void
.end method

.method public removeTemplate(I)Z
    .locals 3
    .parameter "nId"

    .prologue
    .line 460
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 468
    :goto_0
    return v1

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 464
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 468
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
    .line 690
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 693
    if-eqz p4, :cond_2

    .line 694
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "lock system event"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mBlockSystemEvent:Z

    .line 699
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mActivityListener:Lcom/htc/opensense2/album/TemplateActivityInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 700
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 701
    const/16 v1, 0x1389

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setActivityListener(Lcom/htc/opensense2/album/TemplateActivityInterface;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 725
    iput-object p1, p0, Lcom/htc/opensense2/album/DisplayManager;->mActivityListener:Lcom/htc/opensense2/album/TemplateActivityInterface;

    .line 726
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    .line 519
    if-nez p1, :cond_1

    .line 529
    :cond_0
    return-void

    .line 522
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 523
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

    .line 524
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 526
    .local v3, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v3, :cond_2

    .line 527
    invoke-virtual {v3, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method public setControlBarViewContainerId(I)V
    .locals 2
    .parameter "idControlBarView"

    .prologue
    .line 389
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v0, 0x0

    .line 394
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 396
    check-cast v0, Landroid/widget/RelativeLayout;

    .end local v0           #view:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainViewWrapper:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public setMainViewContainerId(I)V
    .locals 1
    .parameter "idMainView"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mMainView:Landroid/view/ViewGroup;

    .line 385
    :cond_0
    return-void
.end method

.method public switchBackToPreviousTemplate(Z)V
    .locals 2
    .parameter "bDoTransition"

    .prologue
    .line 657
    iget v0, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/opensense2/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 658
    return-void
.end method

.method public switchTemplate(ILandroid/os/Bundle;Z)V
    .locals 12
    .parameter "templateId"
    .parameter "bundle"
    .parameter "bDoTransition"

    .prologue
    const/4 v11, -0x1

    .line 560
    iget v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    iput v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    .line 562
    iput p1, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    .line 564
    iput-object p2, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    .line 565
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    if-nez v8, :cond_0

    .line 567
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    .line 569
    :cond_0
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "focus_template"

    iget v10, p0, Lcom/htc/opensense2/album/DisplayManager;->mFocusTemplateId:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 570
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "previous_template"

    iget v10, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    const-string v9, "transition_template"

    invoke-virtual {v8, v9, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 578
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

    .line 580
    .local v2, i:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 582
    .local v5, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v5, :cond_1

    .line 584
    invoke-virtual {v5}, Lcom/htc/opensense2/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 588
    .end local v2           #i:Ljava/lang/Integer;
    .end local v5           #template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    :cond_2
    const/4 v0, 0x0

    .line 589
    .local v0, bAnimation:Z
    iget v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    if-eq v8, v11, :cond_4

    if-eqz p3, :cond_4

    .line 591
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget v9, p0, Lcom/htc/opensense2/album/DisplayManager;->mPrevFocusTemplateId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 592
    .local v6, templatePre:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v6, :cond_4

    .line 594
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/htc/opensense2/album/DisplayManager;->mTargetBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v8, v9}, Lcom/htc/opensense2/album/ViewTemplateBase;->onTransition(ILandroid/os/Bundle;)I

    move-result v7

    .line 595
    .local v7, time:I
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->mActivityListener:Lcom/htc/opensense2/album/TemplateActivityInterface;

    invoke-interface {v8}, Lcom/htc/opensense2/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 596
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_3

    if-le v7, v11, :cond_3

    .line 598
    const/4 v0, 0x1

    .line 599
    const/16 v8, 0x138c

    int-to-long v9, v7

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 602
    :cond_3
    iget-object v8, p0, Lcom/htc/opensense2/album/DisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][DisplayManager][switchTemplate]1: Do back... "

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v1           #handler:Landroid/os/Handler;
    .end local v6           #templatePre:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    .end local v7           #time:I
    :cond_4
    if-nez v0, :cond_5

    .line 607
    invoke-direct {p0, p3}, Lcom/htc/opensense2/album/DisplayManager;->switchTemplate(Z)V

    .line 611
    :cond_5
    return-void
.end method

.method public unbindTemplate(I)V
    .locals 3
    .parameter "templateId"

    .prologue
    .line 491
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 494
    .local v0, template:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<*>;"
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->unbindAdapter()V

    goto :goto_0
.end method
