.class public Lcom/htc/widget/CarouselHost;
.super Landroid/widget/FrameLayout;
.source "CarouselHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/htc/widget/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselHost$1;,
        Lcom/htc/widget/CarouselHost$DropAnimationRunnable;,
        Lcom/htc/widget/CarouselHost$IntentContentStrategy;,
        Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;,
        Lcom/htc/widget/CarouselHost$ContentStrategy;,
        Lcom/htc/widget/CarouselHost$IndicatorStrategy;,
        Lcom/htc/widget/CarouselHost$TabSpec;,
        Lcom/htc/widget/CarouselHost$TabContentFactory;,
        Lcom/htc/widget/CarouselHost$OnTabBeforeChangeListener;,
        Lcom/htc/widget/CarouselHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CarouselHost"

.field public static final TASK_STATE_DEFAULT:I = 0x63

.field public static final TASK_STATE_POOL:I = 0x64

.field public static final TASK_STATE_UNREMOVABLE:I = 0x65


# instance fields
.field eresources:Landroid/content/res/Resources;

.field private mBackupCurrentTag:Ljava/lang/String;

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mCarousel:Lcom/htc/widget/CarouselActivity;

.field private final mContext:Landroid/content/Context;

.field private mCorOffsetX:F

.field private mCorOffsetY:F

.field protected mCurrentTabTag:Ljava/lang/String;

.field private mCurrentView:Landroid/view/View;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragSource:Lcom/htc/widget/DragSource;

.field private mDragView:Landroid/widget/FrameLayout;

.field private mDragging:Z

.field private mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

.field private final mDropCoordinates:[I

.field private mDropTarget:Lcom/htc/widget/DropTarget;

.field private mIsProviderAP:Z

.field private mLastDropTarget:Lcom/htc/widget/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOriginator:Landroid/view/View;

.field private mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

.field private final mRect:Landroid/graphics/Rect;

.field private mShouldDrop:Z

.field private mShouldStopFling:Z

.field private mShouldThrowEvent:Z

.field private mSourceX:F

.field private mSourceY:F

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTipBubble:Landroid/widget/RelativeLayout;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iput-boolean v2, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    new-instance v0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->initCarouselHost()V

    iput-boolean v2, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iput-boolean v2, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    new-instance v0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->initCarouselHost()V

    iput-boolean v2, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/CarouselHost;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/CarouselHost;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/widget/CarouselHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/DragSource;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/DropTarget;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropTarget:Lcom/htc/widget/DropTarget;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/CarouselHost;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/widget/CarouselHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/CarouselHost;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/widget/CarouselHost;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/CarouselHost;->moveIndicator(FF)V

    return-void
.end method

.method private addTab(Lcom/htc/widget/CarouselHost$TabSpec;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "you must specify a way to create the tab indicator."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "you must specify a way to create the tab content"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mIsProviderAP:Z

    if-eqz v3, :cond_2

    new-instance v0, Lcom/htc/widget/TaskInfo;

    invoke-direct {v0}, Lcom/htc/widget/TaskInfo;-><init>()V

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;

    invoke-virtual {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselHost$IntentContentStrategy;

    #getter for: Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    iput v4, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/htc/widget/TaskInfo;->taskOrder:I

    if-ne p2, v4, :cond_3

    iput v4, v0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselActivity;->addAndSyncTask(Lcom/htc/widget/TaskInfo;)V

    :cond_2
    return-void

    :cond_3
    iput v5, v0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    goto :goto_0
.end method

.method private addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V
    .locals 11

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    if-nez v6, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-static {p2, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    invoke-static {p2, p4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    move/from16 v0, p5

    invoke-static {p2, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v9

    move/from16 v0, p6

    invoke-static {p2, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/htc/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v4

    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/widget/CarouselHost;->addTab(Lcom/htc/widget/CarouselHost$TabSpec;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    new-instance v5, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v5}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    const-string v6, "fake package"

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v6, "fake package"

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v6, "fake package"

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v6, "fake package"

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v1, v2}, Lcom/htc/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/htc/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v4

    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/widget/CarouselHost;->addTab(Lcom/htc/widget/CarouselHost$TabSpec;Z)V

    goto :goto_0
.end method

.method private createDragView()V
    .locals 15

    const v14, 0x20200bc

    const/4 v13, 0x0

    const/4 v12, -0x2

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x33

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v12, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v9, v9, Lcom/htc/widget/CarouselWidget;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v10}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x398

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v13, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mOriginator:Landroid/view/View;

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v9, 0x209002b

    invoke-virtual {v2, v9, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x20200c1

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v5, v11, v9, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLines(I)V

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mOriginator:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setWidth(I)V

    const-string v9, "window"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v6, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v12, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private drop(FF)Z
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/CarouselHost;->mSourceX:F

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/CarouselHost;->mSourceY:F

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->invalidate()V

    iget-object v7, p0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1, v7}, Lcom/htc/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/widget/DropTarget;

    move-result-object v8

    instance-of v0, v8, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v0, v0, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setDragBinGridViewToFalse()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v0, v0, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->realign()V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v4, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    :cond_2
    iput-object v8, p0, Lcom/htc/widget/CarouselHost;->mDropTarget:Lcom/htc/widget/DropTarget;

    if-eqz v8, :cond_9

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->acceptDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->onDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v9}, Lcom/htc/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_3

    instance-of v0, v8, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v0, v0, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    :cond_3
    :goto_0
    move v0, v9

    :goto_1
    return v0

    :cond_4
    instance-of v0, v8, Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->setLateShrinkedFlag()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_7

    instance-of v0, v8, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    check-cast v8, Landroid/view/View;

    invoke-interface {v0, v8, v10}, Lcom/htc/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v0, v9

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(I)V

    :cond_a
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    check-cast v8, Landroid/view/View;

    invoke-interface {v0, v8, v10}, Lcom/htc/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setDragBinGridViewToFalse()V

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v0, v0, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->realign()V

    :cond_b
    move v0, v10

    goto :goto_1
.end method

.method private endDrag()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    :cond_0
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/widget/DropTarget;
    .locals 18

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v13

    add-int v10, p2, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v13

    add-int v11, p3, v13

    add-int/lit8 v7, v6, -0x1

    :goto_0
    if-ltz v7, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v4, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    instance-of v13, v4, Lcom/htc/widget/CarouselWidget;

    if-eqz v13, :cond_2

    iget v13, v9, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    iget v15, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_1
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v8

    const v13, 0x1020011

    if-eq v8, v13, :cond_4

    instance-of v13, v4, Landroid/view/ViewGroup;

    if-eqz v13, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int p2, v10, v13

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int p3, v11, v13

    move-object v13, v4

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/htc/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/widget/DropTarget;

    move-result-object v12

    :cond_1
    if-nez v12, :cond_3

    instance-of v13, v4, Lcom/htc/widget/DropTarget;

    if-eqz v13, :cond_4

    move-object v5, v4

    check-cast v5, Lcom/htc/widget/DropTarget;

    const/4 v13, 0x0

    aput p2, p4, v13

    const/4 v13, 0x1

    aput p3, p4, v13

    check-cast v4, Lcom/htc/widget/DropTarget;

    :goto_2
    return-object v4

    :cond_2
    instance-of v13, v4, Lcom/htc/widget/BinGridView;

    if-eqz v13, :cond_0

    iget v13, v9, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    iget v15, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    move-object v4, v12

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initCarouselHost()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->setDescendantFocusability(I)V

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    return-void
.end method

.method private moveIndicator(FF)V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
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

    invoke-direct {p0, v0, v3}, Lcom/htc/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

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

.method private setDragBinGridViewToFalse()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselWidget;->setDragBinGridView(Z)V

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/widget/CarouselWidget;->startWidthAnimation(II)V

    :cond_0
    return-void
.end method

.method private setDragBinGridViewToTrue()V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselWidget;->setDragBinGridView(Z)V

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/widget/CarouselWidget;->startWidthAnimation(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method CloseActivityIfRunning(Lcom/htc/widget/CarouselHost$TabSpec;Lcom/htc/widget/TaskInfo;)V
    .locals 5

    const/4 v4, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$1700(Lcom/htc/widget/CarouselHost$TabSpec;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/CarouselHost$IntentContentStrategy;

    iget-object v2, p2, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->compareIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2}, Lcom/htc/widget/CarouselHost$TabSpec;->sync(Lcom/htc/widget/TaskInfo;)V

    goto :goto_0

    :cond_2
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabClosed()V

    invoke-virtual {p1, p2}, Lcom/htc/widget/CarouselHost$TabSpec;->sync(Lcom/htc/widget/TaskInfo;)V

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$1700(Lcom/htc/widget/CarouselHost$TabSpec;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, " bad ! spec is  null on the setCurrentTab"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_4
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_5

    const-string v1, "CarouselHost::setCurrentTabUtil()"

    const-string v2, "Strange !, Current View is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V
    .locals 16

    const/4 v11, 0x1

    const/4 v10, 0x1

    packed-switch p8, :pswitch_data_0

    const/4 v11, 0x1

    const/4 v10, 0x1

    :goto_0
    const/4 v2, 0x1

    if-ne v11, v2, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/htc/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    :goto_1
    return-void

    :pswitch_0
    const/4 v11, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v11, 0x0

    const/4 v10, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v11, 0x1

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/htc/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v12

    new-instance v13, Lcom/htc/widget/TaskInfo;

    invoke-direct {v13}, Lcom/htc/widget/TaskInfo;-><init>()V

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;
    invoke-static {v12}, Lcom/htc/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v12}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/CarouselHost$IntentContentStrategy;

    #getter for: Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v15}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v13, Lcom/htc/widget/TaskInfo;->isHost:I

    const/4 v2, 0x1

    iput v2, v13, Lcom/htc/widget/TaskInfo;->isRemovable:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/htc/widget/TaskInfo;->taskOrder:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v2, v13}, Lcom/htc/widget/CarouselActivity;->addAndSyncTask(Lcom/htc/widget/TaskInfo;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method cancelDrag()V
    .locals 10

    const/high16 v9, -0x3b86

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v7}, Lcom/htc/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/widget/DropTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v8

    const/4 v3, 0x1

    aget v3, v7, v3

    iget v4, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v9, v9}, Lcom/htc/widget/CarouselHost;->drop(FF)Z

    iput-boolean v8, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->endDrag()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    goto :goto_0
.end method

.method closeTabByTag(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabClosed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method createTipBubble()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x2090033

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/htc/widget/CarouselHost;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v5, -0x2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20500b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0x50

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/widget/RelativeLayout;->layout(IIII)V

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    iget v2, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    iget v3, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/CarouselHost;->moveIndicator(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    invoke-direct {p0, p0, v1}, Lcom/htc/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :cond_1
    move-object v5, v4

    check-cast v5, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/widget/CarouselWidget;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object v5, v4

    check-cast v5, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/widget/CarouselWidget;->getStateWidget()I

    move-result v5

    const/16 v7, 0x3ea

    if-ne v5, v7, :cond_4

    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_5
    if-nez v1, :cond_6

    move-object v1, v0

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_7
    :goto_2
    move v5, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    instance-of v5, v1, Lcom/htc/widget/CarouselWidget;

    if-eqz v5, :cond_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_a
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    :pswitch_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x82

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    invoke-virtual {v4, p1}, Lcom/htc/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method doAnimationForDragIcon(FF)V
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mSourceX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/widget/CarouselHost;->mSourceY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetX:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetY:F

    sub-float v4, p2, v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->startUsingPositions(IIII)V

    return-void
.end method

.method doCurrentTabPause()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabOnPaused()V

    return-void
.end method

.method doCurrntTabResume()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabOnResume()V

    return-void
.end method

.method findDropTarget(II[I)Lcom/htc/widget/DropTarget;
    .locals 1

    invoke-direct {p0, p0, p1, p2, p3}, Lcom/htc/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/widget/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method getBackUpCurrentTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/widget/CarouselWidget;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method getDropAnimationRunnable()Lcom/htc/widget/CarouselHost$DropAnimationRunnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    return-object v0
.end method

.method getHostCount()I
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCount()I

    move-result v1

    return v1
.end method

.method getIndexByTag(Ljava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    if-nez p1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method getPositionForTag(Ljava/lang/String;)I
    .locals 7

    const/4 v5, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v2, v5

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v6}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    const-string v6, "task_tag"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    :goto_1
    move v2, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;
    .locals 6

    const/4 v4, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v4, "task_tag"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v4

    goto :goto_0
.end method

.method getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;
    .locals 7

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselActivity;->getModel()Lcom/htc/widget/CarouselModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselHost$TabSpec;

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselActivity;->getModel()Lcom/htc/widget/CarouselModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v4, "CarouselHost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "borranx spec is null dump currentTag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v5, "CarouselHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "borranx Key "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " value "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public moveToNext()V
    .locals 4

    iget-object v3, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v0

    iget-object v3, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    :goto_0
    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method public moveToPrevious()V
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;
    .locals 2

    new-instance v0, Lcom/htc/widget/CarouselHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/widget/CarouselHost$TabSpec;-><init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;Lcom/htc/widget/CarouselHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->cancelDrag()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetY:F

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    iput v2, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    goto :goto_1

    :pswitch_2
    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/CarouselHost;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->endDrag()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    const/4 v3, 0x0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getPaddingLeft()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v5, v1, v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getPaddingLeft()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, v1, v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/widget/CarouselHost;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v4, -0x2

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20500b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v4, 0x50

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/widget/RelativeLayout;->layout(IIII)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    packed-switch v11, :pswitch_data_0

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    sub-float v4, v4, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    sub-float v4, v4, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    sub-float v4, v22, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    sub-float v4, v23, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/htc/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/widget/DropTarget;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-ne v4, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/widget/DropTarget;->onDragOver(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->invalidate(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/widget/DropTarget;->onDragEnter(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/CarouselHost;->drop(FF)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    :cond_1
    return-void
.end method

.method removeIndicator()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    return-void
.end method

.method removeTab(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "CarouselHost"

    const-string v1, "Invalid tag. Can not delete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    const-string v0, "CarouselHost"

    const-string v1, "Table number is one. Can not delete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->setNextTab()V

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabClosed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public removeTabByTag(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->removeTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselActivity;->removeTagFromDB(Ljava/lang/String;)V

    return-void
.end method

.method removeTipBubble()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    :cond_0
    return-void
.end method

.method public setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/CarouselActivity;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method setBackupCurrentTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-void
.end method

.method setCarousel(Lcom/htc/widget/CarouselActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    return-void
.end method

.method public setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/CarouselActivity;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I

    return-void
.end method

.method public setCountVisibility(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/CarouselActivity;->setCountVisibility(Ljava/lang/String;Z)I

    return-void
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 8

    const/4 v7, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4, p1}, Lcom/htc/widget/CarouselWidget;->setCurrentTabUtil(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v1

    if-eqz v1, :cond_5

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_3
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabClosed()V

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, " bad ! spec is  null on the setCurrentTab"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const-string v4, "CarouselHost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " bad !  we lost spec mCurrentTabTag! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4, p1}, Lcom/htc/widget/CarouselWidget;->setCurrentTabUtil(I)V

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v4, :cond_8

    const-string v4, "CarouselHost::setCurrentTabUtil()"

    const-string v5, "Strange !, Current View is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    :cond_a
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/CarouselActivity;->onCurrentTabChanged(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setIsProviderAp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/CarouselHost;->mIsProviderAP:Z

    return-void
.end method

.method setNextTab()V
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTabHintEnabled(Z)V
    .locals 0

    return-void
.end method

.method setup()V
    .locals 2

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselWidget;->setCarouselHost(Lcom/htc/widget/CarouselHost;)V

    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/htc/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method setup(Landroid/app/LocalActivityManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->setup()V

    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    return-void
.end method

.method showTipBubble()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTipBubble:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/htc/widget/DragSource;Ljava/lang/Object;I)V
    .locals 10

    instance-of v8, p2, Lcom/htc/widget/BinGridView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v8}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v8}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v3

    iget-object v8, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v8}, Lcom/htc/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    iget-object v8, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    sub-int v9, v5, v3

    invoke-virtual {v8, v9}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v8, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v8}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iget-object v8, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v8}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v9, v1, v5

    mul-int/2addr v9, v4

    add-int v0, v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getWidth()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v9, v4, 0x2

    sub-int v2, v8, v9

    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setDragBinGridViewToTrue()V

    sget v8, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-le v1, v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v8, v2}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->removeTipBubble()V

    const/4 v8, 0x2

    new-array v7, v8, [I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v8, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    const/4 v9, 0x0

    aget v9, v7, v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    iget v8, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    const/4 v9, 0x1

    aget v9, v7, v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setPressed(Z)V

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetX:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetY:I

    if-nez p4, :cond_1

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mOriginator:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    iput-object p3, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->createDragView()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->invalidate()V

    return-void
.end method

.method public useDefaultTabName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/CarouselActivity;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
