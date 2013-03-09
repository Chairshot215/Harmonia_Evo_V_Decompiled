.class public Lcom/htc/album/addons/LocalTagView;
.super Lcom/htc/opensense2/album/ViewTemplateBase;
.source "LocalTagView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;,
        Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;,
        Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/ViewTemplateBase",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIRECTION_FORWARD:I = 0x2

.field public static final DIRECTION_NEUTRAL:I = 0x1

.field public static final DIRECTION_START:I = 0x0

.field private static final FOOT_BAR_TAGVIEW:I = 0x1bc

.field private static final HEADER_BAR_TAGVIEW:I = 0x14d

.field private static final LOG_TAG:Ljava/lang/String; = "LocalTagView"


# instance fields
.field protected mLayoutTop:Landroid/widget/RelativeLayout;

.field protected mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

.field protected mServiceName:Ljava/lang/String;

.field protected mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

.field protected mTagNext:I

.field protected mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

.field protected mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

.field protected mTagViewSelected:Landroid/view/View;

.field protected mbClearTop5:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense2/album/DisplayManagerInterface;)V
    .locals 2
    .parameter "adapterBase"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense2/album/DisplayManagerInterface;)V

    .line 56
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 57
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    .line 58
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagNext:I

    .line 60
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    .line 62
    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    .line 64
    new-instance v0, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    .line 132
    return-void
.end method


# virtual methods
.method public bindAdapter()V
    .locals 4

    .prologue
    .line 350
    iget-object v2, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 351
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 352
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    .line 353
    const-string v2, "clear_top5_frined_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    .line 354
    iget-object v2, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/album/addons/AdaterTagPhotos;

    invoke-virtual {v2}, Lcom/htc/album/addons/AdaterTagPhotos;->bindAdapter()V

    .line 356
    new-instance v2, Lcom/htc/album/TagUtils/TagInfo;

    invoke-direct {v2}, Lcom/htc/album/TagUtils/TagInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    .line 357
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/LocalTagView;->setupTaggableView(I)Z

    .line 358
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->setupTagManager()V

    .line 359
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    .line 362
    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 363
    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 364
    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/ControlBarManager;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 365
    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method protected bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->createMainView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method protected createMainView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    if-nez v1, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 340
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/ImageView;

    .end local v0           #imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 342
    .restart local v0       #imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 600
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 601
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 176
    packed-switch p2, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 179
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/htc/album/addons/LocalTagView;->onHandleTagUpdate(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 407
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/LocalTagView;->setupTaggableView(I)Z

    .line 322
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->relayoutTagManager()V

    .line 324
    return-void
.end method

.method public onConfirm()V
    .locals 9

    .prologue
    .line 376
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v5, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v2

    .line 379
    .local v2, nCount:I
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_0
    if-le v2, v3, :cond_1

    .line 381
    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v7, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v7, v3}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TagUtils/TagViewManager;->isTagView(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 379
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :cond_0
    new-instance v4, Lcom/htc/album/TagUtils/TagInfo;

    invoke-direct {v4}, Lcom/htc/album/TagUtils/TagInfo;-><init>()V

    .line 384
    .local v4, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v7, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v7, v3}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TagUtils/TagViewManager;->getTagName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    .line 385
    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v7, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v7, v3}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TagUtils/TagViewManager;->getTagID(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    .line 386
    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v7, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v7, v3}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TagUtils/TagViewManager;->getTagX(Landroid/view/View;)F

    move-result v6

    iput v6, v4, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 387
    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v7, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v7, v3}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TagUtils/TagViewManager;->getTagY(Landroid/view/View;)F

    move-result v6

    iput v6, v4, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 389
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    .end local v4           #tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    :cond_1
    const-string v6, "LocalTagView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LocalTagView][onConfirm]: Send out Tag Size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 399
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "tags"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 400
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 401
    iget-object v6, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v6}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 402
    iget-object v6, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v6}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 403
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 573
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onCancel()V

    .line 576
    :goto_0
    return-void

    .line 569
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onConfirm()V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateDialog(Landroid/view/View;)Landroid/app/Dialog;
    .locals 7
    .parameter "view"

    .prologue
    .line 284
    move-object v4, p1

    .line 285
    .local v4, viewFocused:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 286
    .local v0, activity:Landroid/app/Activity;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f0b005d

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const v6, 0x7f0b005b

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 289
    .local v3, items:[Ljava/lang/CharSequence;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v5, p1}, Lcom/htc/album/TagUtils/TagViewManager;->getTagName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 292
    new-instance v5, Lcom/htc/album/addons/LocalTagView$1;

    invoke-direct {v5, p0, v4, v0}, Lcom/htc/album/addons/LocalTagView$1;-><init>(Lcom/htc/album/addons/LocalTagView;Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 311
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 312
    .local v2, dialog:Lcom/htc/widget/HtcAlertDialog;
    return-object v2
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 614
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 615
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 616
    const/4 v3, 0x5

    const v5, 0x20c01d6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 617
    const/4 v3, 0x4

    const v5, 0x7f0b0001

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 619
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 620
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 621
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 624
    :cond_0
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 4
    .parameter "id"

    .prologue
    .line 585
    const/4 v1, 0x0

    .line 586
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    iget-object v2, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 590
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 591
    .local v0, header:Landroid/view/ViewGroup;
    instance-of v2, v0, Lcom/htc/widget/HeaderBar;

    if-eqz v2, :cond_0

    .line 592
    check-cast v0, Lcom/htc/widget/HeaderBar;

    .end local v0           #header:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 595
    :cond_0
    return-object v1
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    .line 192
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 194
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v2, 0x1

    const/16 v3, 0x14d

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 195
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v2, 0x2

    const/16 v3, 0x1bc

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 196
    return-void
.end method

.method public onHandleTagUpdate(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 205
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/htc/album/TagUtils/TagViewManager;->removeTag(Landroid/view/View;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 213
    .local v9, bunde:Landroid/os/Bundle;
    const-string v0, "tag_name"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, szName:Ljava/lang/String;
    const-string v0, "tag_id"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, szID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v3, v3, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v4, v4, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->validateTagUniqueness(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 217
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    const-string v3, ""

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v4, v4, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v5, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    .line 219
    const-string v0, "LocalTagView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalTagView][onActivityResult]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    .line 221
    return-void
.end method

.method public onLeave()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->enableHeaderTransparentBackground(Z)V

    .line 200
    invoke-super {p0}, Lcom/htc/opensense2/album/ViewTemplateBase;->onLeave()V

    .line 201
    return-void
.end method

.method public onLongClickTagView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 556
    instance-of v1, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/LocalTagView;->onCreateDialog(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    .line 559
    .local v0, nDialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 561
    .end local v0           #nDialog:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/addons/AdaterTagPhotos;

    invoke-virtual {v0}, Lcom/htc/album/addons/AdaterTagPhotos;->onPause()V

    .line 164
    :cond_0
    return-void
.end method

.method public onPhotoTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v7, 0x42c8

    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, tag_x_in_percent:F
    const/4 v2, 0x0

    .line 476
    .local v2, tag_y_in_percent:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 477
    .local v3, x_start:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 480
    .local v4, y_start:F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 481
    .local v0, rc:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 483
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewX()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-eq v5, v6, :cond_0

    .line 484
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Lcom/htc/album/TagUtils/HandlerTagView;->setPhotoViewX(I)V

    .line 485
    :cond_0
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewY()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-eq v5, v6, :cond_1

    .line 486
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Lcom/htc/album/TagUtils/HandlerTagView;->setPhotoViewY(I)V

    .line 491
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v5

    if-eqz v5, :cond_2

    .line 492
    mul-float v5, v3, v7

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 493
    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v5

    if-eqz v5, :cond_3

    .line 494
    mul-float v5, v4, v7

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 496
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iput v1, v5, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 497
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iput v2, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 504
    return-void
.end method

.method public onPhotoTouchUp()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 513
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onTouchTagPhotoCommonGalleryService()V

    .line 517
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    .line 519
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onUpdateViewTitle()V

    .line 170
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/addons/AdaterTagPhotos;

    invoke-virtual {v0}, Lcom/htc/album/addons/AdaterTagPhotos;->onResume()V

    .line 172
    :cond_0
    return-void
.end method

.method public onTagDelete(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TagUtils/TagViewManager;->removeTag(Landroid/view/View;)V

    .line 237
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    .line 238
    return-void
.end method

.method public onTagEdit(Landroid/app/Activity;Landroid/view/View;)V
    .locals 10
    .parameter "activity"
    .parameter "view"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 242
    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v5, p2}, Lcom/htc/album/TagUtils/TagViewManager;->getTagX(Landroid/view/View;)F

    move-result v5

    iput v5, v4, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    .line 243
    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v5, p2}, Lcom/htc/album/TagUtils/TagViewManager;->getTagY(Landroid/view/View;)F

    move-result v5

    iput v5, v4, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    .line 246
    iput-object p2, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    .line 249
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.album"

    const-string v5, "com.htc.album.SocialNetwork.ActivitySearchView"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v4, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 253
    .local v2, intentTemp:Landroid/content/Intent;
    const-string v4, "upload_mode"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 254
    .local v3, nMode:I
    const-string v4, "upload_mode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v6

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    const-string v4, "service_name"

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v4, "service_display"

    const-string v5, "facebook"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p1, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void

    .line 261
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    const-string v4, "service_name"

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v4, "service_display"

    const-string v5, "flickr"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 266
    :cond_2
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 268
    const-string v4, "service_name"

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v4, "service_display"

    const-string v5, "renren"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 271
    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    const-string v4, "service_name"

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v4, "service_display"

    const-string v5, "sina"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onTouchTagPhotoCommonGalleryService()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 522
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 523
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.album"

    const-string v5, "com.htc.album.SocialNetwork.ActivitySearchView"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    iget-object v4, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 526
    .local v2, intentTemp:Landroid/content/Intent;
    const-string v4, "upload_mode"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 527
    .local v3, nMode:I
    const-string v4, "upload_mode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v6

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    const-string v4, "service_name"

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v4, "service_display"

    const-string v5, "facebook"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 550
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "clear_top5_frined_list"

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 551
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 552
    iget-object v4, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 553
    return-void

    .line 534
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    const-string v4, "service_name"

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string v4, "service_display"

    const-string v5, "flickr"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 539
    :cond_2
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    const-string v4, "service_name"

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v4, "service_display"

    const-string v5, "renren"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 544
    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    const-string v4, "service_name"

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v4, "service_display"

    const-string v5, "sina"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onUpdateViewTitle()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public relayoutTagManager()V
    .locals 5

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v1}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewX()I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v2}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewY()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v3}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->setCanvasInfo(IIII)V

    .line 470
    :cond_0
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method public setupTagManager()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 436
    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][setupTagManager]... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 440
    .local v9, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v0, v9}, Lcom/htc/album/TagUtils/HandlerTagView;->getTagViewManager(Landroid/content/Context;)Lcom/htc/album/TagUtils/TagViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 442
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    new-instance v1, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->setTagOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 443
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    new-instance v1, Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->setTagOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 448
    const/4 v12, 0x0

    .line 449
    .local v12, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v8}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/album/TagUtils/TagPhotoInfo;

    .line 450
    .local v13, tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    invoke-virtual {v13}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 452
    .local v10, nCount:I
    const/4 v11, 0x0

    .local v11, nIndex:I
    :goto_0
    if-le v10, v11, :cond_1

    .line 454
    invoke-virtual {v13, v11}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getTagInfo(I)Lcom/htc/album/TagUtils/TagInfo;

    move-result-object v12

    if-nez v12, :cond_0

    .line 452
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v1, v12, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    iget-object v2, v12, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    const-string v3, ""

    iget v4, v12, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget v5, v12, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    goto :goto_1

    .line 459
    :cond_1
    return-void
.end method

.method public setupTaggableView(I)Z
    .locals 5
    .parameter "nDirection"

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 432
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .line 417
    .restart local v0       #bResult:Z
    :cond_0
    const-string v3, "LocalTagView"

    const-string v4, "[HTCAlbum][LocalTagView][setupTaggableView]... "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 421
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    if-nez v3, :cond_1

    .line 422
    new-instance v3, Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-direct {v3}, Lcom/htc/album/TagUtils/HandlerTagView;-><init>()V

    iput-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    .line 424
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TagUtils/TagPhotoInfo;

    .line 426
    .local v2, photoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Lcom/htc/album/TagUtils/HandlerTagView;->setTaggableView(Landroid/widget/ImageView;)V

    .line 427
    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    invoke-virtual {v3, v1, v2, v4}, Lcom/htc/album/TagUtils/HandlerTagView;->prepareTaggableView(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;Landroid/view/View$OnTouchListener;)Z

    .line 432
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unbindAdapter()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v0}, Lcom/htc/album/TagUtils/HandlerTagView;->release()V

    .line 372
    :cond_0
    return-void
.end method

.method public verifyUIChange()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0}, Lcom/htc/album/TagUtils/TagViewManager;->getTagCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v1, 0x14d

    invoke-virtual {v0, v2, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBars(II)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBar(I)V

    goto :goto_0
.end method
