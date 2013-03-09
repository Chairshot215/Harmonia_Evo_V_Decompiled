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
    .parameter "authority"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 136
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    .line 144
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    .line 148
    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    .line 174
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    .line 175
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    .line 176
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    .line 177
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 180
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    .line 181
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    .line 184
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    .line 188
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    .line 198
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 204
    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    .line 910
    iput v3, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    .line 211
    new-instance v0, Lcom/htc/widget/CarouselModel;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselModel;-><init>(Lcom/htc/widget/CarouselActivity;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    .line 212
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mAuthority:Ljava/lang/String;

    .line 213
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

    .line 214
    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    .line 215
    new-instance v0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;-><init>(Lcom/htc/widget/CarouselActivity;Lcom/htc/widget/CarouselActivity$1;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    .line 216
    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    .line 217
    return-void
.end method

.method private addSlidingDrawer()V
    .locals 7

    .prologue
    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselHost;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 224
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v1}, Lcom/htc/widget/CarouselHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselHost;->removeView(Landroid/view/View;)V

    .line 226
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    instance-of v3, v0, Lcom/htc/widget/CarouselWidget;

    if-eqz v3, :cond_1

    .line 228
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x20900c8

    iget-object v5, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 233
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 234
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 235
    .restart local v0       #child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 233
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 223
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 237
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 238
    return-void
.end method

.method private ensureCarouselHost()V
    .locals 3

    .prologue
    .line 551
    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-nez v2, :cond_0

    .line 552
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 554
    .local v0, features:I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    .line 555
    const v1, 0x20900c9

    .line 561
    .local v1, layoutResource:I
    :goto_0
    invoke-super {p0, v1}, Landroid/app/ActivityGroup;->setContentView(I)V

    .line 563
    .end local v0           #features:I
    .end local v1           #layoutResource:I
    :cond_0
    return-void

    .line 556
    .restart local v0       #features:I
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 557
    const v1, 0x20900ca

    .restart local v1       #layoutResource:I
    goto :goto_0

    .line 559
    .end local v1           #layoutResource:I
    :cond_2
    const v1, 0x209002f

    .restart local v1       #layoutResource:I
    goto :goto_0
.end method

.method private hideCarousel()V
    .locals 12

    .prologue
    const/high16 v8, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 985
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v3

    if-nez v3, :cond_0

    .line 986
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 987
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselWidget;->setVisibility(I)V

    .line 988
    const/16 v9, 0x12c

    .line 989
    .local v9, DURATION:I
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v2, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 990
    .local v10, animation1:Landroid/view/animation/AlphaAnimation;
    int-to-long v3, v9

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 991
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 992
    .local v0, animation2:Landroid/view/animation/TranslateAnimation;
    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 993
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 994
    .local v11, animationset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 995
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 996
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 999
    .end local v0           #animation2:Landroid/view/animation/TranslateAnimation;
    .end local v9           #DURATION:I
    .end local v10           #animation1:Landroid/view/animation/AlphaAnimation;
    .end local v11           #animationset:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private hideCarouselWithDialog()V
    .locals 3

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    .line 1003
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

    .line 1012
    return-void
.end method

.method private initalPoolNWidget()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const v2, 0x209002b

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 241
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    .line 242
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 244
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->addSlidingDrawer()V

    .line 246
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    .line 249
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 254
    :cond_0
    const v0, 0x20200bf

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinGridView;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    .line 255
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    .line 256
    const v0, 0x202020d

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselSlidingDrawer;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 258
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->getHandler(Landroid/content/Context;)Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 259
    new-instance v0, Lcom/htc/widget/BinAdapter;

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    .line 263
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinGridView;->setDragger(Lcom/htc/widget/DragController;)V

    .line 270
    new-instance v0, Lcom/htc/widget/BinAdapter;

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    iget-object v8, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    .line 274
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setDragger(Lcom/htc/widget/DragController;)V

    .line 280
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setDrawer(Lcom/htc/widget/CarouselSlidingDrawer;)V

    .line 282
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerOpenListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V

    .line 286
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerCloseListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V

    .line 287
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerScrollListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V

    .line 288
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnEditModeDrawerStateListener(Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V

    .line 290
    const v0, 0x20c01ba

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;->setDrawerTitle(I)V

    .line 292
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->initLayout()V

    .line 298
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {p0, v9}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 300
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v9}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v9}, Lcom/htc/widget/CarouselWidget;->setEditorMode(Z)V

    .line 303
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v10}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    goto :goto_0
.end method

.method private onCarouselCheck()V
    .locals 2

    .prologue
    .line 521
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 524
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-nez v0, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/CarouselActivity;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 533
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a CarouselHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 539
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setIsProviderAp(Z)V

    .line 540
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselHost;->setCarousel(Lcom/htc/widget/CarouselActivity;)V

    .line 543
    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    .line 546
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->initalPoolNWidget()V

    .line 547
    return-void
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 6
    .parameter "container"
    .parameter "level"

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 508
    .local v1, count:I
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

    .line 509
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 510
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 511
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 512
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/widget/CarouselActivity;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 509
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 514
    .restart local v0       #child:Landroid/view/View;
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

    .line 518
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setDrawerTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 659
    const v1, 0x202025e

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 660
    .local v0, title:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 661
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 662
    return-void
.end method

.method private setTipInDB()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 637
    .local v0, cr:Landroid/content/ContentResolver;
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

    .line 638
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 640
    .local v8, toShow:Z
    const/4 v6, 0x0

    .line 642
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 643
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 644
    const/4 v8, 0x1

    .line 645
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 646
    .local v9, values:Landroid/content/ContentValues;
    const-string v2, "first_time"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 649
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v8

    .line 655
    :goto_0
    return v2

    .line 650
    :catch_0
    move-exception v7

    .line 651
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v10

    .line 652
    goto :goto_0
.end method

.method private showCarousel()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v6, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 968
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v3, :cond_0

    .line 969
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 970
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v3, v12}, Lcom/htc/widget/CarouselWidget;->setVisibility(I)V

    .line 971
    const/16 v9, 0x12c

    .line 972
    .local v9, DURATION:I
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 973
    .local v10, animation1:Landroid/view/animation/AlphaAnimation;
    int-to-long v3, v9

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 974
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 975
    .local v0, animation2:Landroid/view/animation/TranslateAnimation;
    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 976
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 977
    .local v11, animationset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 978
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 979
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 982
    .end local v0           #animation2:Landroid/view/animation/TranslateAnimation;
    .end local v9           #DURATION:I
    .end local v10           #animation1:Landroid/view/animation/AlphaAnimation;
    .end local v11           #animationset:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method


# virtual methods
.method addAndSyncTask(Lcom/htc/widget/TaskInfo;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1}, Lcom/htc/widget/CarouselModel;->addTaskToDatabase(Landroid/content/Context;Lcom/htc/widget/TaskInfo;)V

    .line 598
    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setToQueueMode(Z)V

    .line 913
    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    .line 914
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 730
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

    .line 731
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 732
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    .line 734
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarouselWithDialog()V

    .line 744
    :cond_0
    :goto_0
    return v0

    .line 738
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    goto :goto_0

    .line 744
    :cond_2
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    .line 919
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->startProcessingOperations(Landroid/content/Context;)V

    .line 921
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->startQuery()V

    .line 923
    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    .line 924
    :cond_1
    return-void
.end method

.method protected enterEditMode()V
    .locals 1

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    .line 1021
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    .line 1023
    :cond_0
    return-void
.end method

.method getBinAdapterCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 790
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

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 583
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/widget/CarouselWidget;
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 593
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v0

    return-object v0
.end method

.method getModel()Lcom/htc/widget/CarouselModel;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    return-object v0
.end method

.method getStateMode()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    return v0
.end method

.method getWidgetAdapterCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 795
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

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    return v0
.end method

.method isMemoryMode()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    return v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 570
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 571
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 899
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 900
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 901
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 498
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 499
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 500
    .local v0, features:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    .line 503
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    .line 315
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 316
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 318
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

    .line 320
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselModel;->setUri(Landroid/net/Uri;)V

    .line 322
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->isProviderAP(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    .line 323
    if-eqz p1, :cond_0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->beginTransaction()V

    .line 330
    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTab"

    .prologue
    .line 774
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 396
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 398
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 400
    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    .line 402
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselModel;->cleanTasks()V

    .line 403
    iput-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    .line 404
    return-void
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method onEditDrawerClosed()V
    .locals 5

    .prologue
    const/16 v3, 0x3e9

    .line 701
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->clearFocus()V

    .line 702
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 705
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->removeTipBubble()V

    .line 706
    iput v3, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    .line 707
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v3}, Lcom/htc/widget/CarouselWidget;->setStateMode(I)V

    .line 708
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselWidget;->onDrawerClosed(I)V

    .line 710
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v1, :cond_0

    .line 711
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 712
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
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

    .line 715
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 716
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 718
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method onEditDrawerOpened()V
    .locals 9

    .prologue
    const/16 v8, 0x3ea

    const/4 v2, 0x0

    .line 683
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 685
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

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->setTipInDB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->createTipBubble()V

    .line 691
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->showTipBubble()V

    .line 694
    :cond_1
    iput v8, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    .line 695
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v8}, Lcom/htc/widget/CarouselWidget;->setStateMode(I)V

    .line 696
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->onDrawerOpened()V

    .line 697
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestFocus()Z

    .line 698
    return-void
.end method

.method onEditScrollEnded()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method onEditScrollStarted()V
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 725
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeTipBubble()V

    .line 726
    return-void
.end method

.method onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 802
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 369
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    .line 373
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 379
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    .line 382
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 384
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    .line 391
    :cond_2
    :goto_0
    return-void

    .line 386
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 433
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 434
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, cur:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 436
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 446
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    const-string v1, "drawerOpened"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->open()V

    .line 450
    :cond_2
    return-void

    .line 441
    :cond_3
    iget v1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 360
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->startQuery()V

    .line 362
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, currentTabTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_0
    if-eqz v0, :cond_1

    .line 461
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    .line 465
    const-string v1, "drawerOpened"

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 467
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 349
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->endTransaction()V

    .line 352
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

    .line 353
    return-void
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 0
    .parameter "endTag"

    .prologue
    .line 765
    return-void
.end method

.method public onTabStartSliding(Ljava/lang/String;)V
    .locals 0
    .parameter "startTag"

    .prologue
    .line 755
    return-void
.end method

.method onTaskSync()V
    .locals 2

    .prologue
    .line 617
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 618
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v1, p0, v0}, Lcom/htc/widget/CarouselModel;->syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    .line 619
    return-void
.end method

.method removeTagFromDB(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1}, Lcom/htc/widget/CarouselModel;->removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public final requestCarouselFeature(I)Z
    .locals 1
    .parameter "featureId"

    .prologue
    .line 824
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 825
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 827
    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 828
    const/4 v0, 0x1

    return v0
.end method

.method setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 614
    return-void
.end method

.method setBinAdapterCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 778
    return-void
.end method

.method public final setCarouselFeatureInt(II)V
    .locals 3
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 843
    move v0, p1

    .line 844
    .local v0, featureMask:I
    iget v2, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 848
    const v2, 0x202020f

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 849
    .local v1, titleContainer:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 850
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 851
    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public final setContentView(I)V
    .locals 4
    .parameter "layoutResID"

    .prologue
    .line 858
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 859
    .local v0, features:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 860
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->setContentView(I)V

    .line 872
    :goto_0
    return-void

    .line 862
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    .line 863
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 864
    const v2, 0x202020e

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 865
    .local v1, root:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 866
    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 867
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    goto :goto_0

    .line 869
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 876
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/CarouselActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "view"
    .parameter "params"

    .prologue
    .line 881
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 882
    .local v0, features:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 883
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    :goto_0
    return-void

    .line 885
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    .line 886
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 887
    const v2, 0x202020e

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 888
    .local v1, root:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 889
    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    goto :goto_0

    .line 892
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method setCountVisibility(Ljava/lang/String;Z)I
    .locals 1
    .parameter "tag"
    .parameter "enable"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    .line 427
    iput p1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    .line 428
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    .line 418
    return-void
.end method

.method setDragDropAnimationInitState()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->cancelDrag()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->initFlags()V

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->forceStopPartialFling()V

    .line 675
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->cancelAnimation()V

    .line 677
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    .line 678
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->requestLayout()V

    .line 680
    :cond_2
    return-void
.end method

.method public setGId(I)V
    .locals 2
    .parameter "gId"

    .prologue
    .line 476
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

    .line 477
    return-void
.end method

.method public setGId(Ljava/lang/String;)V
    .locals 0
    .parameter "gId"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    .line 487
    return-void
.end method

.method setMemoryMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    .line 627
    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselWidget;->setMemoryMode(Z)V

    .line 632
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselWidget;->setEditorMode(Z)V

    .line 633
    return-void

    .line 632
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setWidgetAdapterCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 783
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 784
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    .line 786
    :cond_0
    return-void
.end method

.method startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 336
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

    .line 340
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    .line 342
    :cond_1
    return-void
.end method

.method updateWidget(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setSelection(I)V

    .line 806
    return-void
.end method
