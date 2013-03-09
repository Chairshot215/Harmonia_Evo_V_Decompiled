.class public Lcom/htc/app/ma/MaMainActivity;
.super Landroid/app/ActivityGroup;
.source "MaMainActivity.java"

# interfaces
.implements Lcom/htc/app/ma/IMaStateOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/ma/MaMainActivity$LayeredView;
    }
.end annotation


# static fields
.field public static final ANIM_FLAG_NONE:I = 0x0

.field public static final ANIM_FLAG_ROTATION:I = 0x10

.field public static final ANIM_FLAG_SHIFT:I = 0x1

.field private static final DEFAULT_PADDING:I = 0xc

.field public static final PORT_MODE_2_PANE:I = 0x1

.field public static final PORT_MODE_SINGLE_PANE:I


# instance fields
.field private LAND_PADDING_10:[[I

.field private LAND_PADDING_7:[[I

.field private PORT_PADDING_10:[[I

.field private PORT_PADDING_2PMODE_10:[[I

.field private PORT_PADDING_2PMODE_7:[[I

.field private PORT_PADDING_7:[[I

.field private isDimDrawn:Z

.field private lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

.field private m1stPanelIntent:Landroid/content/Intent;

.field private m2PanePortPadding:[[I

.field private mAnimationFlag:I

.field private mCachedNextView:Landroid/view/View;

.field private mCanInvalidateMenu:Z

.field private mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

.field private mContainer:Landroid/view/ViewGroup;

.field private mDraggingBoundaryLeft:I

.field private mDraggingBoundaryRight:I

.field private mDraggingTDAreaLeft:I

.field private mDraggingTDAreaRight:I

.field private mDraggingTDTime:J

.field private mDraggingTDX:I

.field private mFullScreenChild:I

.field private mIdCounter:I

.field private mIs2ndPanelMode:Z

.field private mIsAddingBlockViewWhenRotate:Z

.field private mIsEnableFrameDragging:Z

.field private mIsEnableUxRule2:Z

.field private mIsPortrait:Z

.field private mIsTouched:Z

.field private mL2PShowedFrame:I

.field private mLandPadding:[[I

.field private mLandParams:[Landroid/view/ViewGroup$LayoutParams;

.field private mLeftWidthWhenTD:I

.field private mPortPadding:[[I

.field private mPortParams:[Landroid/view/ViewGroup$LayoutParams;

.field private mRightWidthWhenTD:I

.field protected mRotateAnimHelper:Lcom/htc/app/ma/MaRotateAnimationHelper;

.field private mSftAnimAgent:Lcom/htc/widget/PageHandler;

.field private mStartActivityCounts:[I

.field private mStartedActivityCnt:I

.field private final mStateAgent:Lcom/htc/app/ma/MaStateAgent;

.field private mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthBackup:[I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/ActivityGroup;-><init>(Z)V

    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_7:[[I

    new-array v0, v6, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_2PMODE_7:[[I

    new-array v0, v6, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->LAND_PADDING_7:[[I

    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_10:[[I

    new-array v0, v6, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_2PMODE_10:[[I

    new-array v0, v6, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->LAND_PADDING_10:[[I

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_7:[[I

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_2PMODE_7:[[I

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->m2PanePortPadding:[[I

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->LAND_PADDING_7:[[I

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    iput v3, p0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    new-instance v0, Lcom/htc/app/ma/MaStateAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaStateAgent;-><init>(Lcom/htc/app/ma/IMaStateOwner;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    new-instance v0, Lcom/htc/app/ma/MaRotateAnimationHelper;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaRotateAnimationHelper;-><init>(Lcom/htc/app/ma/MaMainActivity;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mRotateAnimHelper:Lcom/htc/app/ma/MaRotateAnimationHelper;

    iput-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableUxRule2:Z

    iput-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableFrameDragging:Z

    const/16 v0, 0x16

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDAreaLeft:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDAreaRight:I

    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingBoundaryLeft:I

    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingBoundaryRight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLeftWidthWhenTD:I

    iput v2, p0, Lcom/htc/app/ma/MaMainActivity;->mRightWidthWhenTD:I

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsAddingBlockViewWhenRotate:Z

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    iput-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    iput-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mCanInvalidateMenu:Z

    invoke-virtual {p0, v6, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    invoke-virtual {p0, v4, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    return-void

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeTailToCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeHeadToStack()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftNext()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/app/ma/MaMainActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addItemToMenu(Landroid/view/Menu;Landroid/view/MenuItem;II)V
    .locals 4

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v2, p3, p4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    instance-of v2, v1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void
.end method

.method private addViewToHead(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addViewToHead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/htc/app/ma/MaMainActivity;->getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, v3}, Lcom/htc/app/ma/MaMainActivity;->setChildPadding(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v3, v2}, Lcom/htc/widget/PageHandler;->addPage(Landroid/view/View;IZ)V

    :goto_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams()V

    goto :goto_0
.end method

.method private addViewToTail(Landroid/view/View;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addViewToTail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/htc/app/ma/MaMainActivity;->getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/app/ma/MaMainActivity;->setChildPadding(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v2, p1}, Lcom/htc/widget/PageHandler;->addPage(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams(I)V

    goto :goto_0
.end method

.method private checkAndSetLayoutParams(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    array-length v3, p2

    new-array v3, v3, [Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v3, p3

    new-array v3, v3, [Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    aget-object v3, p2, v0

    instance-of v3, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneFrameLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v3, p3

    if-ge v0, v3, :cond_3

    aget-object v3, p3, v0

    instance-of v3, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p3, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneFrameLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    array-length v3, p2

    new-array v3, v3, [Landroid/widget/LinearLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v3, p3

    new-array v3, v3, [Landroid/widget/LinearLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x0

    :goto_3
    array-length v3, p2

    if-ge v0, v3, :cond_5

    aget-object v3, p2, v0

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneLinearLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_4
    array-length v3, p3

    if-ge v0, v3, :cond_6

    aget-object v3, p3, v0

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p3, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneLinearLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    instance-of v3, p1, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    array-length v3, p2

    new-array v3, v3, [Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v3, p3

    new-array v3, v3, [Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x0

    :goto_5
    array-length v3, p2

    if-ge v0, v3, :cond_8

    aget-object v3, p2, v0

    instance-of v3, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneRelativeLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_6
    array-length v3, p3

    if-ge v0, v3, :cond_9

    aget-object v3, p3, v0

    instance-of v3, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v4, p3, v0

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->cloneRelativeLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method

.method private cloneFrameLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private cloneLinearLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private cloneRelativeLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-boolean v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget v4, v2, v0

    if-eqz v4, :cond_0

    aget v4, v2, v0

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private closeAllMenu()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->closeOptionsMenu()V

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->closeContextMenu()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeContextMenu()V

    instance-of v3, v2, Landroid/app/ActivityGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/app/ActivityGroup;

    invoke-virtual {v2}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private closeSoftInput()V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private createMenuReady(Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->withHtcActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createShiftAnimationAgent(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/PageHandler;
    .locals 2

    instance-of v1, p1, Lcom/htc/widget/MultiPageLayout;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/PageHandler;

    check-cast p1, Lcom/htc/widget/MultiPageLayout;

    invoke-direct {v0, p1}, Lcom/htc/widget/PageHandler;-><init>(Lcom/htc/widget/MultiPageLayout;)V

    new-instance v1, Lcom/htc/app/ma/MaMainActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/app/ma/MaMainActivity$1;-><init>(Lcom/htc/app/ma/MaMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PageHandler;->setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V

    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/PageHandler;->setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private finishActivityInternal(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishLocalActivity(Ljava/lang/String;)Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    if-ne v0, v4, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_3

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4, v1}, Lcom/htc/app/ma/MaMainActivity;->replaceViewInFrame(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private finishLocalActivity(Ljava/lang/String;)Landroid/view/Window;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after destroy activity, local activity count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private generateNewId(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_p_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_l_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIdCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAfterShiftPadding(Z[Landroid/view/View;)[[I
    .locals 9

    const/4 v8, 0x4

    const/4 v6, 0x0

    if-nez p2, :cond_0

    check-cast v6, [[I

    :goto_0
    return-object v6

    :cond_0
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    if-nez v7, :cond_1

    check-cast v6, [[I

    move-object v4, v6

    :goto_1
    iget-boolean v6, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v3, v6

    :goto_2
    if-eqz v4, :cond_5

    array-length v6, v4

    if-eq v6, v3, :cond_5

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LayoutParams.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", paddingArray.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    invoke-virtual {v6}, [[I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move-object v4, v6

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    if-nez v7, :cond_3

    check-cast v6, [[I

    move-object v4, v6

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    invoke-virtual {v6}, [[I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move-object v4, v6

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v3, v6

    goto :goto_2

    :cond_5
    if-nez v4, :cond_7

    filled-new-array {v3, v8}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_7

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_6

    aget-object v6, v4, v0

    const/16 v7, 0xc

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v3, :cond_9

    aget-object v6, p2, v0

    invoke-virtual {p0, v6}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1, p1}, Lcom/htc/app/ma/IMaActivity;->getCustomizedPadding(Z)[I

    move-result-object v5

    if-eqz v5, :cond_8

    aput-object v5, v4, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    move-object v6, v4

    goto/16 :goto_0
.end method

.method private getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    const/4 v1, 0x0

    array-length v3, v2

    if-ge p2, v3, :cond_2

    aget-object v1, v2, p2

    :goto_1
    const/4 v0, 0x0

    instance-of v3, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->cloneLinearLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    :cond_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    goto :goto_1

    :cond_3
    instance-of v3, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->cloneFrameLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    goto :goto_2

    :cond_4
    instance-of v3, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->cloneRelativeLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_2
.end method

.method private getViewAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initFrames()V
    .locals 3

    const-string v2, "initFrames"

    invoke-static {v2}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v2

    :goto_0
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    return-void
.end method

.method private isDoRotationAnimation()Z
    .locals 2

    iget v0, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDoShiftAnimation()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/htc/app/ma/IMaActivity;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/htc/app/ma/IMaActivity;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private performShiftAnimationToNext()V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    :goto_1
    new-array v3, v2, [Landroid/view/View;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-direct {p0, v5, v3}, Lcom/htc/app/ma/MaMainActivity;->getAfterShiftPadding(Z[Landroid/view/View;)[[I

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/widget/PageHandler;->setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v4}, Lcom/htc/widget/PageHandler;->animateToNextPage()V

    return-void
.end method

.method private performShiftAnimationToPrev()V
    .locals 6

    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    :goto_1
    new-array v3, v2, [Landroid/view/View;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-direct {p0, v5, v3}, Lcom/htc/app/ma/MaMainActivity;->getAfterShiftPadding(Z[Landroid/view/View;)[[I

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/widget/PageHandler;->setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v4}, Lcom/htc/widget/PageHandler;->animateBackPreviousPage()V

    return-void
.end method

.method private prepareMenuReady(Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->withHtcActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private processCallbackAfterShiftBack()V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, -0x2

    invoke-interface {v0, v7, v4}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    invoke-interface {v0, v6, v2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    :cond_0
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {p0, v5}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v3, v2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    invoke-interface {v1, v6, v3}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    :cond_1
    invoke-virtual {p0, v7, v5, v3}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private processCallbackAfterShiftNext()V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v1, 0x2

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    invoke-interface {v2, v7, v3}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    invoke-interface {v2, v6, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    :cond_0
    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v3, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v4, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    invoke-interface {v0, v6, v4}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v7, v3, v4}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private removeHeadToStack()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeViewAtHead()V

    return-void
.end method

.method private removeTailToCache()V
    .locals 3

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeViewAtTail()V

    return-void
.end method

.method private removeViewAtHead()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "removeViewAtHead"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PageHandler;->removePage(I)V

    :goto_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams()V

    goto :goto_0
.end method

.method private removeViewAtTail()V
    .locals 2

    const-string v1, "removeViewAtTail"

    invoke-static {v1}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v1, v0}, Lcom/htc/widget/PageHandler;->removePage(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0
.end method

.method private replaceViewInFrame(Landroid/view/View;I)V
    .locals 4

    const-string v2, "replaceViewInFrame"

    invoke-static {v2}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace view at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams(I)V

    invoke-direct {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition(I)V

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private resetFrames()V
    .locals 22

    const-string v19, "resetFrames"

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableUxRule2:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    const/16 v16, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v10, v0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add view to stack, v = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    move/from16 v16, v0

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v10, v0

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v4, v10, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add view to cache, v = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v13, v19, v11

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pop "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from stack to tail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_4

    :cond_7
    :goto_6
    if-ge v4, v9, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_8

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pop "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from cache to tail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    if-ge v4, v9, :cond_9

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to tail"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    add-int/lit8 v4, v4, 0x1

    :cond_9
    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v6

    if-eqz v6, :cond_9

    const/16 v19, 0x7

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    if-nez v8, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    const-string v19, "mCachedNextView is not null!!!!!!"

    invoke-static/range {v19 .. v19}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    goto :goto_7

    :cond_b
    invoke-interface {v6}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const/16 v18, 0x0

    :goto_8
    if-ge v4, v9, :cond_d

    new-instance v19, Landroid/view/View;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v6

    if-eqz v6, :cond_e

    const/16 v19, 0x7

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    const/16 v19, 0x6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    goto :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    const/4 v12, 0x2

    :goto_a
    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    const/16 v19, 0x6

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v12, v2}, Lcom/htc/app/ma/MaMainActivity;->setOnScreenChildrenState(IIZ)V

    return-void

    :cond_10
    const/4 v12, 0x1

    goto :goto_a
.end method

.method private restoreChildrenWidth()V
    .locals 3

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    aget v2, v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setChildPadding(Landroid/view/View;I)V
    .locals 7

    const/16 v4, 0xc

    const/4 v2, 0x0

    check-cast v2, [[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-interface {v0, v3}, Lcom/htc/app/ma/IMaActivity;->getCustomizedPadding(Z)[I

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    :goto_0
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge p2, v3, :cond_3

    aget-object v1, v2, p2

    :cond_1
    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    goto :goto_0

    :cond_3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    const/4 v6, 0x3

    aget v6, v1, v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

.method private setChildWidth(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/htc/app/ma/MaMainActivity;->getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setFrameParams()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setFrameParams(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/app/ma/MaMainActivity;->getLayoutParams(Landroid/view/View;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0, p1}, Lcom/htc/app/ma/MaMainActivity;->setChildPadding(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setFramePosition()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->setFramePosition(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setFramePosition(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->setPosition(I)V

    :cond_0
    return-void
.end method

.method private setMenuItemShowAsAction(Landroid/view/Menu;)V
    .locals 5

    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    :goto_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_1

    move v1, p3

    :goto_0
    const-string v4, "start child activity at %d, child count = %d, attach new = %s, %s, flags = %d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    const/4 v6, 0x4

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    if-eqz p5, :cond_2

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v4, v1, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, p2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->closeAllMenu()V

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    aget v5, v4, v1

    add-int/lit8 v2, v5, 0x1

    aput v2, v4, v1

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mCachedNextView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p4}, Lcom/htc/app/ma/MaMainActivity;->startLocalActivity(Landroid/content/Intent;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_5

    iput-boolean v8, p0, Lcom/htc/app/ma/MaMainActivity;->mCanInvalidateMenu:Z

    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    iput-boolean v9, p0, Lcom/htc/app/ma/MaMainActivity;->mCanInvalidateMenu:Z

    :cond_5
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mStartActivityCounts:[I

    aget v4, v4, v1

    if-ne v2, v4, :cond_7

    if-eqz p5, :cond_6

    invoke-direct {p0, v3}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/htc/app/ma/MaMainActivity;->replaceViewInFrame(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    const-string v4, "warning: recursive startActivity() found"

    invoke-static {v4}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startLocalActivity(Landroid/content/Intent;ILjava/lang/String;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x1

    if-nez p3, :cond_0

    invoke-direct {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->generateNewId(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v5

    invoke-virtual {v5, p3, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v5, v0, Lcom/htc/app/ma/IMaActivity;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v5, :cond_3

    const/4 v2, 0x2

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/htc/app/ma/IMaActivity;

    invoke-interface {v1, p3}, Lcom/htc/app/ma/IMaActivity;->setId(Ljava/lang/String;)V

    invoke-interface {v1, v4, v2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    const/4 v5, 0x6

    invoke-interface {v1, v5, v4}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    const/4 v4, 0x7

    invoke-interface {v1, v4, p2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after start activity ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), local activity count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/app/ma/MaMainActivity;->mStartedActivityCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    return-object v3

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private withHtcActionBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected backToPreviousFrameAndShift()V
    .locals 3

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->addViewToHead(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->performShiftAnimationToPrev()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeTailToCache()V

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftBack()V

    goto :goto_0
.end method

.method protected dimBackground(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/app/ma/MaMainActivity$LayeredView;

    invoke-direct {v1, p0, p0}, Lcom/htc/app/ma/MaMainActivity$LayeredView;-><init>(Lcom/htc/app/ma/MaMainActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    :cond_2
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    invoke-virtual {v1, p1}, Lcom/htc/app/ma/MaMainActivity$LayeredView;->setTransparentPosition(I)V

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchOnRotationAnimationBegin(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method dispatchOnRotationAnimationEnd(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/app/ma/MaMainActivity;->setState(II)V

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isAnimationRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    iget-boolean v9, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    iget-boolean v9, p0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableFrameDragging:Z

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDAreaRight:I

    add-int/2addr v9, v4

    if-gt v7, v9, :cond_4

    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDAreaLeft:I

    sub-int v9, v4, v9

    if-lt v7, v9, :cond_4

    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    iput v7, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    iput v4, p0, Lcom/htc/app/ma/MaMainActivity;->mLeftWidthWhenTD:I

    iput v6, p0, Lcom/htc/app/ma/MaMainActivity;->mRightWidthWhenTD:I

    iput-wide v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    if-ltz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    iget-wide v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    sub-long v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    sub-long v9, v0, v9

    const-wide/16 v11, 0x78

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    sub-int v2, v7, v9

    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mLeftWidthWhenTD:I

    iget v10, p0, Lcom/htc/app/ma/MaMainActivity;->mRightWidthWhenTD:I

    add-int v8, v9, v10

    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mLeftWidthWhenTD:I

    add-int v3, v9, v2

    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingBoundaryLeft:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingBoundaryRight:I

    sub-int v9, v8, v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v5, v8, v3

    const/4 v9, 0x0

    invoke-direct {p0, v9, v3}, Lcom/htc/app/ma/MaMainActivity;->setChildWidth(II)V

    const/4 v9, 0x1

    invoke-direct {p0, v9, v5}, Lcom/htc/app/ma/MaMainActivity;->setChildWidth(II)V

    iget-object v9, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iput v5, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput-wide v0, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDTime:J

    :cond_2
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_3
    iget v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    if-ltz v9, :cond_4

    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_4
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0
.end method

.method protected dropFramesExceptFirst()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->finishAllChildrenExceptFirst()V

    return-void
.end method

.method protected enableAddingBlockViewWhenRotate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/htc/app/ma/MaMainActivity;->mIsAddingBlockViewWhenRotate:Z

    return-void
.end method

.method protected finishActivityInChildFrame(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finishActivityInChildFrame(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    goto :goto_0
.end method

.method protected finishAllChildren()V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v2, v4

    goto :goto_2

    :cond_4
    iput-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    return-void
.end method

.method protected finishAllChildrenExceptFirst()V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/2addr v8, v9

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_1

    invoke-direct {p0, v2}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v7, :cond_3

    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/htc/app/ma/IMaActivity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    iget-boolean v8, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v4, v8

    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-ge v2, v4, :cond_5

    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/htc/app/ma/MaMainActivity;->addViewToTail(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v4, v8

    goto :goto_3

    :cond_5
    iget-boolean v8, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v8, :cond_7

    const/4 v5, 0x2

    :goto_5
    invoke-virtual {p0, v10}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v7, v5}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    const/4 v8, 0x6

    invoke-interface {v1, v8, v7}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    const/4 v7, 0x7

    invoke-interface {v1, v7, v10}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    :cond_6
    iput-boolean v10, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_7
    move v5, v7

    goto :goto_5
.end method

.method protected finishChild(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected getAnimationFlag()I
    .locals 1

    iget v0, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    return v0
.end method

.method public getFullScreen()I
    .locals 1

    iget v0, p0, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    return v0
.end method

.method public getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/ma/IMaActivity;

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/htc/app/ma/IMaActivity;

    goto :goto_0
.end method

.method public getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;
    .locals 2

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityByView(Landroid/view/View;)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    goto :goto_0
.end method

.method protected getOptionsMenuOrder([I)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaStateAgent;->getState(I)I

    move-result v0

    return v0
.end method

.method protected getViewStack()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/ma/MaMainActivity;->mCanInvalidateMenu:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/ActivityGroup;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method protected isAnimationRunning()Z
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getState(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getState(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getState(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getState(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPortrait()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method protected isPortrait(Landroid/content/res/Configuration;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jumpToSecondPanel(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    invoke-virtual {p0, p2, v1, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;I)V

    invoke-virtual {p0, p2, v2, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/app/ma/IMaActivity;->onMaActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "onBackPressed"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/ActivityGroup;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->backToPreviousFrameAndShift()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-virtual {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged: prev "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eq v5, v2, :cond_4

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->closeAllMenu()V

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->closeSoftInput()V

    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/app/ma/MaMainActivity;->mDraggingTDX:I

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->restoreChildrenWidth()V

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-virtual {v5}, Lcom/htc/widget/PageHandler;->rotationChanged()V

    :cond_0
    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    invoke-direct {p0, v5, v7, v8}, Lcom/htc/app/ma/MaMainActivity;->startLocalActivity(Landroid/content/Intent;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-boolean v7, p0, Lcom/htc/app/ma/MaMainActivity;->mIs2ndPanelMode:Z

    iput-object v8, p0, Lcom/htc/app/ma/MaMainActivity;->m1stPanelIntent:Landroid/content/Intent;

    :cond_2
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->resetFrames()V

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    iput-boolean v7, p0, Lcom/htc/app/ma/MaMainActivity;->mIsTouched:Z

    :cond_4
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaMainActivity;->createMenuReady(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onMaReceiveIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/htc/app/ma/IMaActivity;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 20

    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    invoke-direct/range {p0 .. p1}, Lcom/htc/app/ma/MaMainActivity;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct/range {p0 .. p1}, Lcom/htc/app/ma/MaMainActivity;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    new-array v11, v0, [I

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v7

    if-nez v7, :cond_0

    const/16 v18, -0x1

    :goto_1
    aput v18, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Lcom/htc/app/ma/IMaActivity;->getMenuOwnerId()I

    move-result v18

    goto :goto_1

    :cond_1
    move-object v4, v11

    array-length v9, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_2

    aget v5, v4, v6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "menu owner id = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/app/ma/MaMainActivity;->getOptionsMenuOrder([I)[I

    move-result-object v8

    if-nez v8, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/htc/app/ma/MaMainActivity;->prepareMenuReady(Landroid/view/Menu;)Z

    move-result v18

    :goto_3
    return v18

    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v18

    if-lez v18, :cond_4

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_4

    :cond_4
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/MenuItem;

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/view/MenuItem;->getItemId()I

    move-result v13

    invoke-interface {v12}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    const/16 v16, 0x0

    :goto_6
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget v18, v8, v16

    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_5
    if-nez v14, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v12, v13, v2}, Lcom/htc/app/ma/MaMainActivity;->addItemToMenu(Landroid/view/Menu;Landroid/view/MenuItem;II)V

    goto :goto_5

    :cond_6
    invoke-interface {v12}, Landroid/view/MenuItem;->getGroupId()I

    move-result v18

    invoke-interface {v12}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v16

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v15

    invoke-interface {v12}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    :goto_7
    invoke-interface {v14}, Landroid/view/SubMenu;->size()I

    move-result v18

    if-lez v18, :cond_4

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/SubMenu;->removeItem(I)V

    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    invoke-interface {v15}, Landroid/view/SubMenu;->size()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/htc/app/ma/MaMainActivity;->addItemToMenu(Landroid/view/Menu;Landroid/view/MenuItem;II)V

    goto :goto_7

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/htc/app/ma/MaMainActivity;->prepareMenuReady(Landroid/view/Menu;)Z

    move-result v18

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 1

    const-string v0, "main onResume"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v0, "container is not set yet"

    invoke-static {v0}, Lcom/htc/app/ma/MaLogger;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->isPortrait()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    return-void
.end method

.method public onStateChanged(III)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaStateAgent;->onStateChanged(III)V

    return-void
.end method

.method protected removeDim()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    if-nez v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->lView:Lcom/htc/app/ma/MaMainActivity$LayeredView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->isDimDrawn:Z

    goto :goto_0
.end method

.method protected sendIntentToChild(IILandroid/content/Intent;)V
    .locals 3

    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v2, :cond_1

    move v1, p2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lcom/htc/app/ma/IMaActivity;->onMaReceiveIntent(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method protected setAnimationFlag(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/ma/MaMainActivity;->mAnimationFlag:I

    return-void
.end method

.method protected setEnableUxRule2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/app/ma/MaMainActivity;->mIsEnableUxRule2:Z

    return-void
.end method

.method public setFakeScreenEnabled(Z)V
    .locals 0

    return-void
.end method

.method protected setFrames(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-void
.end method

.method protected setFrames(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    array-length v1, p2

    if-eqz v1, :cond_0

    array-length v1, p3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->checkAndSetLayoutParams(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Main container\'s type and layout params\' type do not match"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/app/ma/MaMainActivity;->createShiftAnimationAgent(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/PageHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mSftAnimAgent:Lcom/htc/widget/PageHandler;

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->withHtcActionBar()Z

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mWidthBackup:[I

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->initFrames()V

    goto :goto_0
.end method

.method protected setFullScreen(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/htc/app/ma/MaMainActivity;->mIsPortrait:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    if-ne v0, p1, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/htc/app/ma/MaMainActivity;->setChildWidth(II)V

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v2, v2, v0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/htc/app/ma/MaMainActivity;->setChildWidth(II)V

    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v2, v2, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    :cond_4
    iput p1, p0, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    goto :goto_0
.end method

.method protected setLandscapeToPortraitShowedFrame(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mLandParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v0, v0

    iget-object v1, p0, Lcom/htc/app/ma/MaMainActivity;->mPortParams:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    :cond_0
    return-void
.end method

.method protected setMainContainer(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/ma/MaMainActivity;->setMainContainer(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method protected setMainContainer(Landroid/view/ViewGroup;I)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/16 v4, 0x258

    const/16 v5, 0xfa

    const/16 v6, 0x15e

    const/16 v1, 0x1a6

    const/16 v2, 0x25a

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xab

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xac

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x7c

    if-ne v7, v8, :cond_1

    :cond_0
    const/16 v4, 0x320

    const/16 v5, 0x15e

    const/16 v6, 0x1c2

    const/16 v1, 0x1e3

    const/16 v2, 0x31d

    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_10:[[I

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->PORT_PADDING_2PMODE_10:[[I

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->m2PanePortPadding:[[I

    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->LAND_PADDING_10:[[I

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    :cond_1
    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_3

    new-array v3, v11, [Landroid/widget/LinearLayout$LayoutParams;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v3, v10

    :cond_2
    :goto_0
    new-array v0, v12, [Landroid/widget/LinearLayout$LayoutParams;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v0, v10

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v0, v11

    invoke-virtual {p0, p1, v3, v0}, Lcom/htc/app/ma/MaMainActivity;->setFrames(Landroid/view/ViewGroup;[Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    if-ne p2, v11, :cond_2

    new-array v3, v12, [Landroid/widget/LinearLayout$LayoutParams;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v3, v10

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    aput-object v7, v3, v11

    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->m2PanePortPadding:[[I

    iput-object v7, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    iput v10, p0, Lcom/htc/app/ma/MaMainActivity;->mL2PShowedFrame:I

    goto :goto_0
.end method

.method protected setOnScreenChildrenState(IIZ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/app/ma/MaMainActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    invoke-interface {v1, p1, v0}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/htc/app/ma/IMaActivity;->setState(II)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected setPadding([[I[[I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/ma/MaMainActivity;->mPortPadding:[[I

    iput-object p2, p0, Lcom/htc/app/ma/MaMainActivity;->mLandPadding:[[I

    return-void
.end method

.method protected setRemoveAllViewsWhenRotate(Z)V
    .locals 0

    return-void
.end method

.method public setState(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaStateAgent;->setState(II)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResultFromMaChild(Lcom/htc/app/ma/IMaActivity;Landroid/content/Intent;I)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/app/ma/MaMainActivity;->mChildWaitingForResult:Lcom/htc/app/ma/IMaActivity;

    invoke-super {p0, p2, p3}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected startActivityInChildFrame(Landroid/content/Intent;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    return-void
.end method

.method protected startActivityInChildFrame(Landroid/content/Intent;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    return-void
.end method

.method protected startActivityInChildFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    return-void
.end method

.method protected startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    return-void
.end method

.method protected startActivityInNextChildFrameAndShift(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/app/ma/MaMainActivity;->startActivityInNextChildFrameAndShift(Landroid/content/Intent;ILjava/lang/String;)V

    return-void
.end method

.method protected startActivityInNextChildFrameAndShift(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 6

    add-int/lit8 v2, p2, 0x1

    iget-object v0, p0, Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/ma/MaMainActivity;->startActivityInternal(Landroid/content/Intent;IILjava/lang/String;Z)V

    if-nez v5, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->isDoShiftAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->performShiftAnimationToNext()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->removeHeadToStack()V

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->processCallbackAfterShiftNext()V

    goto :goto_1
.end method

.method protected startLocalActivity(Landroid/content/Intent;)Landroid/view/View;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/app/ma/MaMainActivity;->startLocalActivity(Landroid/content/Intent;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected unsetFullScreen()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaMainActivity;->mFullScreenChild:I

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->restoreChildrenWidth()V

    invoke-direct {p0}, Lcom/htc/app/ma/MaMainActivity;->setFrameParams()V

    return-void
.end method
