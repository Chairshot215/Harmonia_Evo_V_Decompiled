.class public Lcom/htc/widget/CarouselActivity;
.super Landroid/app/ActivityGroup;
.source "CarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;
    }
.end annotation


# static fields
.field static final CHECK_TASK_EXISTENCE:I = 0x386

.field private static final DEFAULT_FEATURES:I = 0x2

.field static final DELETE_ONE_TAB:I = 0x4b0

.field public static final FEATURE_CUSTOM_TITLE:I = 0x4

.field private static final FEATURE_EMPTY_CONTENT:I = 0x1

.field public static final FEATURE_NO_EDITOR:I = 0x8

.field public static final FEATURE_NO_TITLE:I = 0x2

.field static final INSERT_POOL_TASK:I = 0x44d

.field static final INSERT_WIDGET_TASK:I = 0x44c

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CarouselActivity"

.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field public static final NO_UPDATE_REQUIRED:I = 0x3f0

.field static final TOKEN_BIN:I = 0x384

.field static final TOKEN_GALLERY:I = 0x385

.field static final TOKEN_REORD_GALLERY:I = 0x3e8

.field static final TOKEN_UPDATE_BIN:I = 0x3e9

.field static final TOKEN_UPDATE_GALLERY:I = 0x3ea

.field public static final UPDATE_COUNT_TEXT:I = 0x3eb

.field public static final UPDATE_COUNT_TEXT_VISIBLE:I = 0x3ec

.field static final UPDATE_TASK_INFO_POOL:I = 0x3ed

.field static final UPDATE_TASK_INFO_WIDGET:I = 0x3ee

.field public static final UPDATE_TASK_NAME:I = 0x3ef


# instance fields
.field eresources:Landroid/content/res/Resources;

.field private final mAuthority:Ljava/lang/String;

.field private mBinGridView:Lcom/htc/widget/BinGridView;

.field private mCarouselHost:Lcom/htc/widget/CarouselHost;

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mDragLayer:Lcom/htc/widget/CarouselHost;

.field private mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

.field private mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

.field private mFeatures:I

.field private mGID:Ljava/lang/String;

.field mGalleryAdapter:Lcom/htc/widget/BinAdapter;

.field private mGalleryWidget:Lcom/htc/widget/CarouselWidget;

.field mGridAdapter:Lcom/htc/widget/BinAdapter;

.field private mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsDestroy:Z

.field private mIsProviderAp:Z

.field private mIsStartQueryCalled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMemoryMode:Z

.field private final mModel:Lcom/htc/widget/CarouselModel;

.field private mRestoring:Z

.field private mStateMode:I

.field private mTaskUri:Landroid/net/Uri;

.field private mTransactionCounter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    iput v3, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    new-instance v0, Lcom/htc/widget/CarouselModel;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselModel;-><init>(Lcom/htc/widget/CarouselActivity;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mAuthority:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    new-instance v0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;-><init>(Lcom/htc/widget/CarouselActivity;Lcom/htc/widget/CarouselActivity$1;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    return-void
.end method

.method private addSlidingDrawer()V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselHost;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v1}, Lcom/htc/widget/CarouselHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselHost;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v3, v0, Lcom/htc/widget/CarouselWidget;

    if-eqz v3, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x20900c8

    iget-object v5, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselHost;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private ensureCarouselHost()V
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-nez v2, :cond_0

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    const v1, 0x20900c9

    :goto_0
    invoke-super {p0, v1}, Landroid/app/ActivityGroup;->setContentView(I)V

    :cond_0
    return-void

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    const v1, 0x20900ca

    goto :goto_0

    :cond_2
    const v1, 0x209002f

    goto :goto_0
.end method

.method private hideCarousel()V
    .locals 12

    const/high16 v8, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselWidget;->setVisibility(I)V

    const/16 v9, 0x12c

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v2, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v3, v9

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private hideCarouselWithDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20c0231

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c0232

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c013c

    new-instance v2, Lcom/htc/widget/CarouselActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/CarouselActivity$1;-><init>(Lcom/htc/widget/CarouselActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    return-void
.end method

.method private initalPoolNWidget()V
    .locals 11

    const/4 v4, 0x0

    const v2, 0x209002b

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->addSlidingDrawer()V

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    :cond_0
    const v0, 0x20200bf

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinGridView;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    const v0, 0x202020d

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselSlidingDrawer;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->getHandler(Landroid/content/Context;)Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    new-instance v0, Lcom/htc/widget/BinAdapter;

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinGridView;->setDragger(Lcom/htc/widget/DragController;)V

    new-instance v0, Lcom/htc/widget/BinAdapter;

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    iget-object v8, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setDragger(Lcom/htc/widget/DragController;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setDrawer(Lcom/htc/widget/CarouselSlidingDrawer;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerOpenListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerCloseListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerScrollListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnEditModeDrawerStateListener(Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V

    const v0, 0x20c01ba

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;->setDrawerTitle(I)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->initLayout()V

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0, v9}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v9}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v9}, Lcom/htc/widget/CarouselWidget;->setEditorMode(Z)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v10}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    goto :goto_0
.end method

.method private onCarouselCheck()V
    .locals 2

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/CarouselActivity;->printViewTree(Landroid/view/ViewGroup;I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a CarouselHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setup(Landroid/app/LocalActivityManager;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setIsProviderAp(Z)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselHost;->setCarousel(Lcom/htc/widget/CarouselActivity;)V

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->initalPoolNWidget()V

    return-void
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const-string v3, "CarouselTraceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/widget/CarouselActivity;->printViewTree(Landroid/view/ViewGroup;I)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const-string v3, "CarouselTraceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setDragDropAnimationInitStateNonEdit()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->cancelDrag()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->initFlags()V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->forceStopPartialFling()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    :cond_2
    return-void
.end method

.method private setDrawerTitle(I)V
    .locals 2

    const v1, 0x202025e

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    return-void
.end method

.method private setTipInDB()Z
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tips"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v8, 0x1

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "first_time"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v8

    :goto_0
    return v2

    :catch_0
    move-exception v7

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v10

    goto :goto_0
.end method

.method private showCarousel()V
    .locals 13

    const/4 v12, 0x0

    const/high16 v6, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v3, v12}, Lcom/htc/widget/CarouselWidget;->setVisibility(I)V

    const/16 v9, 0x12c

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v3, v9

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addAndSyncTask(Lcom/htc/widget/TaskInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1}, Lcom/htc/widget/CarouselModel;->addTaskToDatabase(Landroid/content/Context;Lcom/htc/widget/TaskInfo;)V

    return-void
.end method

.method public beginTransaction()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setToQueueMode(Z)V

    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarouselWithDialog()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public endTransaction()V
    .locals 1

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->startProcessingOperations(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->startQuery()V

    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    :cond_1
    return-void
.end method

.method protected enterEditMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    :cond_0
    return-void
.end method

.method getBinAdapterCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarouselHost()Lcom/htc/widget/CarouselHost;
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/widget/CarouselWidget;
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v0

    return-object v0
.end method

.method getModel()Lcom/htc/widget/CarouselModel;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    return-object v0
.end method

.method getStateMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    return v0
.end method

.method getWidgetAdapterCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method isDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    return v0
.end method

.method isMemoryMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    return v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    return-void
.end method

.method public onContentChanged()V
    .locals 2

    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselModel;->setUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->isProviderAP(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->beginTransaction()V

    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselModel;->cleanTasks()V

    iput-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    return-void
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    return-void
.end method

.method onEditDrawerClosed()V
    .locals 5

    const/16 v3, 0x3e9

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->clearFocus()V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->removeTipBubble()V

    iput v3, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v3}, Lcom/htc/widget/CarouselWidget;->setStateMode(I)V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselWidget;->onDrawerClosed(I)V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    const-string v1, "system_server"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "activity_tabCount"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "tab_count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v4}, Lcom/htc/widget/BinAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    :cond_0
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    return-void
.end method

.method onEditDrawerOpened()V
    .locals 9

    const/16 v8, 0x3ea

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x384

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=0"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->setTipInDB()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->createTipBubble()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->showTipBubble()V

    :cond_1
    iput v8, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v8}, Lcom/htc/widget/CarouselWidget;->setStateMode(I)V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->onDrawerOpened()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestFocus()Z

    return-void
.end method

.method onEditScrollEnded()V
    .locals 0

    return-void
.end method

.method onEditScrollStarted()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeTipBubble()V

    return-void
.end method

.method onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitStateNonEdit()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    const-string v1, "drawerOpened"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->open()V

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->startQuery()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    const-string v1, "drawerOpened"

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->endTransaction()V

    const-string v0, "CarouselTimeLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTabStartSliding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method onTaskSync()V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v1, p0, v0}, Lcom/htc/widget/CarouselModel;->syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method removeTagFromDB(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1}, Lcom/htc/widget/CarouselModel;->removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final requestCarouselFeature(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    const/4 v0, 0x1

    return v0
.end method

.method setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method setBinAdapterCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public final setCarouselFeatureInt(II)V
    .locals 3

    move v0, p1

    iget v2, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const v2, 0x202020f

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public final setContentView(I)V
    .locals 4

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->setContentView(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    const v2, 0x202020e

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/CarouselActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    const v2, 0x202020e

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method setCountVisibility(Ljava/lang/String;Z)I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public setDefaultTab(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    iput p1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    return-void
.end method

.method setDragDropAnimationInitState()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->cancelDrag()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->initFlags()V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->forceStopPartialFling()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->cancelAnimation()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setGId(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    return-void
.end method

.method public setGId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    return-void
.end method

.method setMemoryMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselWidget;->setMemoryMode(Z)V

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselWidget;->setEditorMode(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setWidgetAdapterCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    :cond_0
    return-void
.end method

.method startQuery()V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=1"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    :cond_1
    return-void
.end method

.method updateWidget(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setSelection(I)V

    return-void
.end method
