.class public Lcom/google/android/finsky/exploreactivity/ExploreApplication;
.super Lcom/jme3/app/Application;
.source "ExploreApplication.java"

# interfaces
.implements Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;
.implements Lcom/jme3/input/controls/TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/ExploreApplication$4;
    }
.end annotation


# instance fields
.field private final collisionResults:Lcom/jme3/collision/CollisionResults;

.field private final delta:Lcom/jme3/math/Vector3f;

.field private mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

.field private mBackground:Lcom/jme3/scene/Geometry;

.field private final mCameraLocation:Lcom/jme3/math/Vector3f;

.field private mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

.field private mInRotation:Z

.field private mInScroll:Z

.field private mLastMoveX:F

.field private mLastMoveY:F

.field mLastUpdate:J

.field private final mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

.field private mOriginalCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

.field private final mParentLayout:Landroid/widget/RelativeLayout;

.field private mPlaybackControls:Landroid/widget/TextView;

.field private mPreviousNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private mRootNode:Lcom/jme3/scene/Node;

.field private final mScreenBounds:[Lcom/jme3/math/Vector2f;

.field mScreenHeight:F

.field private mScreenScaleFactor:F

.field mScreenWidth:F

.field private final mScrollThreshold:F

.field private mSeedDocument:Lcom/google/android/finsky/api/model/Document;

.field private mSwipe:Lcom/jme3/scene/Geometry;

.field private mSwipeFader:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

.field private mTouch:Lcom/jme3/math/Vector2f;

.field private mTouchWorld:Lcom/jme3/math/Vector2f;

.field private mWasInRotation:Z

.field private final mWorldBounds:[Lcom/jme3/math/Vector2f;

.field private final ray:Lcom/jme3/math/Ray;

.field private final screenCenter:Lcom/jme3/math/Vector2f;

.field private final screenSize:Lcom/jme3/math/Vector2f;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/ExploreActivity;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/api/model/Document;Landroid/widget/RelativeLayout;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 209
    invoke-direct {p0}, Lcom/jme3/app/Application;-><init>()V

    .line 129
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x447a

    invoke-direct {v0, v3, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mCameraLocation:Lcom/jme3/math/Vector3f;

    .line 138
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenBounds:[Lcom/jme3/math/Vector2f;

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    .line 150
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPreviousNodes:Ljava/util/List;

    .line 153
    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Root Node"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mOriginalCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastUpdate:J

    .line 178
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInScroll:Z

    .line 181
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInRotation:Z

    .line 184
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWasInRotation:Z

    .line 190
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    .line 191
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouchWorld:Lcom/jme3/math/Vector2f;

    .line 202
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    .line 203
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenSize:Lcom/jme3/math/Vector2f;

    .line 204
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenCenter:Lcom/jme3/math/Vector2f;

    .line 205
    new-instance v0, Lcom/jme3/math/Ray;

    invoke-direct {v0}, Lcom/jme3/math/Ray;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->ray:Lcom/jme3/math/Ray;

    .line 206
    new-instance v0, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v0}, Lcom/jme3/collision/CollisionResults;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->collisionResults:Lcom/jme3/collision/CollisionResults;

    .line 210
    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSeedDocument:Lcom/google/android/finsky/api/model/Document;

    .line 211
    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 212
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    .line 213
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->setSongListener(Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScrollThreshold:F

    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    const-class v2, Lcom/jme3/app/ResetStatsState;

    invoke-virtual {v1, v2}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/app/state/AppStateManager;->detach(Lcom/jme3/app/state/AppState;)Z

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Lcom/google/android/finsky/exploreactivity/NodeController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Lcom/google/android/finsky/exploreactivity/ExploreActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    return-object v0
.end method

.method private doNodeTap(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/jme3/collision/CollisionResult;)V
    .locals 3
    .parameter "node"
    .parameter "collision"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->getCenterNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->isWishlistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isWishlistTap(Lcom/jme3/collision/CollisionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->toggleWishlist(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 503
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->setCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    goto :goto_0
.end method

.method private expandHeap(I)I
    .locals 7
    .parameter "megabytes"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 644
    new-array v1, p1, [[B

    .line 645
    .local v1, memory:[[B
    const/4 v0, 0x0

    .line 647
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 648
    const/high16 v2, 0x10

    new-array v2, v2, [B

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_0
    const-string v2, "Reserved %d MB of heap"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    :goto_1
    return v0

    .line 650
    :catch_0
    move-exception v2

    .line 652
    const-string v2, "Reserved %d MB of heap"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    const-string v3, "Reserved %d MB of heap"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private updateCamera(Lcom/jme3/math/Vector3f;)V
    .locals 12
    .parameter "delta"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 566
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mCameraLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 569
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->cam:Lcom/jme3/renderer/Camera;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mCameraLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    .line 570
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->cam:Lcom/jme3/renderer/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/Camera;->setParallelProjection(Z)V

    .line 571
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->cam:Lcom/jme3/renderer/Camera;

    const/high16 v1, 0x4461

    const v2, 0x44898000

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mCameraLocation:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenWidth:F

    const v5, 0x3ea8f5c2

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mCameraLocation:Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenWidth:F

    const v6, 0x3f2b851f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mCameraLocation:Lcom/jme3/math/Vector3f;

    iget v5, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenHeight:F

    const v8, 0x3f666666

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mCameraLocation:Lcom/jme3/math/Vector3f;

    iget v6, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenHeight:F

    const v9, 0x3dcccccc

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/renderer/Camera;->setFrustum(FFFFFF)V

    .line 577
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenBounds:[Lcom/jme3/math/Vector2f;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->cam:Lcom/jme3/renderer/Camera;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenBounds:[Lcom/jme3/math/Vector2f;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    aget-object v3, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBasePlaneCoords(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V

    .line 577
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenSize:Lcom/jme3/math/Vector2f;

    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getPolySize([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V

    .line 582
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mBackground:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenSize:Lcom/jme3/math/Vector2f;

    iget v1, v1, Lcom/jme3/math/Vector2f;->x:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenSize:Lcom/jme3/math/Vector2f;

    iget v2, v2, Lcom/jme3/math/Vector2f;->y:F

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 583
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mBackground:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    aget-object v1, v1, v10

    iget v1, v1, Lcom/jme3/math/Vector2f;->x:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    aget-object v2, v2, v11

    iget v2, v2, Lcom/jme3/math/Vector2f;->y:F

    const/high16 v3, -0x4080

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 584
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipe:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    aget-object v1, v1, v10

    iget v1, v1, Lcom/jme3/math/Vector2f;->x:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    aget-object v2, v2, v11

    iget v2, v2, Lcom/jme3/math/Vector2f;->y:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenHeight:F

    const v4, 0x3dcccccd

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 586
    return-void
.end method


# virtual methods
.method public createViews()V
    .locals 4

    .prologue
    .line 389
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 390
    .local v0, context:Landroid/content/Context;
    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 392
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040075

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08013c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;

    .line 394
    return-void
.end method

.method public initialize()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 227
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v6}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->expandHeap(I)I

    move-result v6

    add-int/lit8 v3, v6, -0x2

    .line 230
    .local v3, bitmapPoolSize:I
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 231
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    .line 232
    .local v2, bitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/utils/BitmapLoader;->drain(I)V

    .line 233
    invoke-virtual {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->evictCache()V

    .line 235
    invoke-super {p0}, Lcom/jme3/app/Application;->initialize()V

    .line 236
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v6, v7}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    .line 238
    new-instance v6, Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->assetManager:Lcom/jme3/asset/AssetManager;

    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v8}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    mul-int/lit16 v9, v3, 0x400

    mul-int/lit16 v9, v9, 0x400

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;-><init>(Lcom/jme3/asset/AssetManager;Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    .line 240
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    new-instance v7, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSeedDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v7, v8}, Lcom/google/android/finsky/exploreactivity/DocWrapper;-><init>(Lcom/google/android/finsky/api/model/Document;)V

    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/exploreactivity/NodeController;->createRoot(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)V

    .line 242
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->inputManager:Lcom/jme3/input/InputManager;

    const-string v7, "Touch"

    new-array v8, v10, [Lcom/jme3/input/controls/Trigger;

    new-instance v9, Lcom/jme3/input/controls/TouchTrigger;

    invoke-direct {v9, v12}, Lcom/jme3/input/controls/TouchTrigger;-><init>(I)V

    aput-object v9, v8, v12

    invoke-virtual {v6, v7, v8}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    .line 243
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->inputManager:Lcom/jme3/input/InputManager;

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "Touch"

    aput-object v8, v7, v12

    invoke-virtual {v6, p0, v7}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    .line 245
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenBounds:[Lcom/jme3/math/Vector2f;

    aget-object v6, v6, v12

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v7}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v11, v7}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 246
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenBounds:[Lcom/jme3/math/Vector2f;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v7}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v8}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 247
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenBounds:[Lcom/jme3/math/Vector2f;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v7}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7, v11}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 248
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenBounds:[Lcom/jme3/math/Vector2f;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6, v11, v11}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 249
    const/high16 v6, 0x4120

    iput v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenWidth:F

    .line 250
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v6}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenWidth:F

    div-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenScaleFactor:F

    .line 251
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v6}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenScaleFactor:F

    div-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenHeight:F

    .line 253
    new-instance v6, Lcom/jme3/scene/Geometry;

    const-string v7, "background"

    sget-object v8, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v6, v7, v8}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mBackground:Lcom/jme3/scene/Geometry;

    .line 254
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v6, v6, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    const v7, 0x7f08013b

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 255
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mBackground:Lcom/jme3/scene/Geometry;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v8, v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 257
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mBackground:Lcom/jme3/scene/Geometry;

    invoke-virtual {v6}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v6

    sget-object v7, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v6, v7}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 258
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mBackground:Lcom/jme3/scene/Geometry;

    sget-object v7, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v6, v7}, Lcom/jme3/scene/Geometry;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 259
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mBackground:Lcom/jme3/scene/Geometry;

    invoke-virtual {v6, v7}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 261
    new-instance v6, Lcom/jme3/scene/Geometry;

    const-string v7, "swipe"

    sget-object v8, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v6, v7, v8}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipe:Lcom/jme3/scene/Geometry;

    .line 262
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v6, v6, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    const v7, 0x7f08013a

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 263
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v6, v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipe:Lcom/jme3/scene/Geometry;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v7, v0, v10}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 265
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipe:Lcom/jme3/scene/Geometry;

    invoke-virtual {v6}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v6

    sget-object v7, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v6, v7}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 266
    const/high16 v1, 0x3f90

    .line 267
    .local v1, bitmapHeight:F
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v4, v6, v1

    .line 269
    .local v4, bitmapWidth:F
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipe:Lcom/jme3/scene/Geometry;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v4, v1, v7}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 270
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipe:Lcom/jme3/scene/Geometry;

    invoke-virtual {v6, v7}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 271
    new-instance v6, Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    const/high16 v7, 0x4000

    const/high16 v8, 0x3e80

    const/high16 v9, 0x40a0

    new-array v10, v10, [Lcom/jme3/scene/Geometry;

    iget-object v11, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipe:Lcom/jme3/scene/Geometry;

    aput-object v11, v10, v12

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;-><init>(FFF[Lcom/jme3/scene/Geometry;)V

    iput-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipeFader:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    .line 274
    sget-object v6, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->updateCamera(Lcom/jme3/math/Vector3f;)V

    .line 276
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    sget-object v7, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v6, v7}, Lcom/jme3/scene/Node;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    .line 277
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    sget-object v7, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v6, v7}, Lcom/jme3/scene/Node;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->showPlaybackControls()V

    .line 280
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    .line 281
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->resetPlayback(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 512
    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;Ljava/lang/String;)V
    .locals 2
    .parameter "playState"
    .parameter "title"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    new-instance v1, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/exploreactivity/ExploreApplication$3;-><init>(Lcom/google/android/finsky/exploreactivity/ExploreApplication;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 633
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->disposeObjects()V

    .line 519
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->unloadCache()V

    .line 522
    :cond_0
    return-void
.end method

.method public onTouch(Ljava/lang/String;Lcom/jme3/input/event/TouchEvent;F)V
    .locals 10
    .parameter "s"
    .parameter "touchevent"
    .parameter "f"

    .prologue
    .line 413
    invoke-virtual {p2}, Lcom/jme3/input/event/TouchEvent;->getPointerId()I

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    invoke-virtual {p2}, Lcom/jme3/input/event/TouchEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/jme3/input/event/TouchEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 418
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->cam:Lcom/jme3/renderer/Camera;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouchWorld:Lcom/jme3/math/Vector2f;

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBasePlaneCoords(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V

    .line 419
    sget-object v5, Lcom/google/android/finsky/exploreactivity/ExploreApplication$4;->$SwitchMap$com$jme3$input$event$TouchEvent$Type:[I

    invoke-virtual {p2}, Lcom/jme3/input/event/TouchEvent;->getType()Lcom/jme3/input/event/TouchEvent$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/input/event/TouchEvent$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 421
    :pswitch_0
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouchWorld:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/jme3/math/Vector2f;->x:F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenWidth:F

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouchWorld:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iget v6, v6, Lcom/jme3/math/Vector2f;->y:F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenHeight:F

    const v8, 0x3ecccccd

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInRotation:Z

    .line 423
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveX:F

    .line 424
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveY:F

    .line 425
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getCenterNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mOriginalCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 426
    iget-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInRotation:Z

    iput-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWasInRotation:Z

    goto :goto_0

    .line 421
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 429
    :pswitch_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInScroll:Z

    .line 430
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInRotation:Z

    goto :goto_0

    .line 434
    :pswitch_2
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->ray:Lcom/jme3/math/Ray;

    invoke-virtual {v5}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouchWorld:Lcom/jme3/math/Vector2f;

    iget v6, v6, Lcom/jme3/math/Vector2f;->x:F

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouchWorld:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    const/high16 v8, 0x4120

    invoke-virtual {v5, v6, v7, v8}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 435
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->ray:Lcom/jme3/math/Ray;

    invoke-virtual {v5}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x4080

    invoke-virtual {v5, v6, v7, v8}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 436
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->collisionResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v5}, Lcom/jme3/collision/CollisionResults;->clear()V

    .line 437
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->ray:Lcom/jme3/math/Ray;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->collisionResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v5, v6, v7}, Lcom/jme3/scene/Node;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    .line 441
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->collisionResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v5}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v0

    .line 442
    .local v0, collision:Lcom/jme3/collision/CollisionResult;
    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getGeometry()Lcom/jme3/scene/Geometry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getParent()Lcom/jme3/scene/Node;

    move-result-object v3

    .line 444
    .local v3, g:Lcom/jme3/scene/Node;
    :cond_3
    instance-of v5, v3, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-eqz v5, :cond_4

    .line 445
    check-cast v3, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .end local v3           #g:Lcom/jme3/scene/Node;
    invoke-direct {p0, v3, v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->doNodeTap(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/jme3/collision/CollisionResult;)V

    .line 446
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipeFader:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->fade(Z)V

    goto/16 :goto_0

    .line 449
    .restart local v3       #g:Lcom/jme3/scene/Node;
    :cond_4
    invoke-virtual {v3}, Lcom/jme3/scene/Node;->getParent()Lcom/jme3/scene/Node;

    move-result-object v3

    .line 450
    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 453
    .end local v0           #collision:Lcom/jme3/collision/CollisionResult;
    .end local v3           #g:Lcom/jme3/scene/Node;
    :pswitch_3
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveX:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenScaleFactor:F

    div-float v1, v5, v6

    .line 454
    .local v1, deltaX:F
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenScaleFactor:F

    div-float v2, v5, v6

    .line 455
    .local v2, deltaY:F
    iget-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInRotation:Z

    if-eqz v5, :cond_5

    .line 456
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    const v6, 0x40490fdb

    mul-float/2addr v6, v2

    const/high16 v7, 0x4080

    div-float/2addr v6, v7

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/NodeController;->rotate(F)V

    .line 473
    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveX:F

    .line 474
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveY:F

    goto/16 :goto_0

    .line 460
    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipeFader:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->fade(Z)V

    .line 461
    iget-boolean v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInScroll:Z

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveX:F

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->x:F

    iget v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveX:F

    sub-float/2addr v7, v8

    mul-float/2addr v5, v7

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    iget v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveY:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mTouch:Lcom/jme3/math/Vector2f;

    iget v8, v8, Lcom/jme3/math/Vector2f;->y:F

    iget v9, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastMoveY:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iget v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScrollThreshold:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInScroll:Z

    .line 466
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mOriginalCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v5

    iget v4, v5, Lcom/jme3/math/Vector2f;->x:F

    .line 467
    .local v4, nodeX:F
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 468
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 470
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    neg-float v6, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    neg-float v7, v2

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 471
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, v5}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->updateCamera(Lcom/jme3/math/Vector3f;)V

    goto :goto_2

    .line 461
    .end local v4           #nodeX:F
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 478
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    :pswitch_4
    invoke-virtual {p2}, Lcom/jme3/input/event/TouchEvent;->getDeltaY()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWasInRotation:Z

    if-nez v5, :cond_0

    .line 479
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mOriginalCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mOriginalCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/NodeController;->setCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    goto/16 :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSeedDocument(Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "doc"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSeedDocument:Lcom/google/android/finsky/api/model/Document;

    .line 529
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    new-instance v1, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSeedDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v1, v2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;-><init>(Lcom/google/android/finsky/api/model/Document;)V

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->createRoot(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)V

    .line 532
    :cond_0
    return-void
.end method

.method public setSettings(Lcom/jme3/system/AppSettings;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 401
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/jme3/system/AppSettings;->setSamples(I)V

    .line 402
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/jme3/system/AppSettings;->setFrameRate(I)V

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/system/AppSettings;->setAudioRenderer(Ljava/lang/String;)V

    .line 405
    invoke-super {p0, p1}, Lcom/jme3/app/Application;->setSettings(Lcom/jme3/system/AppSettings;)V

    .line 406
    return-void
.end method

.method public showPlaybackControls()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    new-instance v1, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;-><init>(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method

.method public update()V
    .locals 19

    .prologue
    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 287
    .local v8, now:J
    const-wide/16 v15, 0x21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastUpdate:J

    move-wide/from16 v17, v0

    sub-long v17, v8, v17

    sub-long v12, v15, v17

    .line 288
    .local v12, sleepTime:J
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mLastUpdate:J

    .line 289
    const-wide/16 v15, 0x0

    cmp-long v15, v12, v15

    if-lez v15, :cond_0

    .line 290
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    .line 297
    :cond_0
    invoke-super/range {p0 .. p0}, Lcom/jme3/app/Application;->update()V

    .line 298
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->speed:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->paused:Z

    if-eqz v15, :cond_2

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v15}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->speed:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const v16, 0x3dcccccd

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 305
    .local v14, timeDelta:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v15, v14}, Lcom/jme3/app/state/AppStateManager;->update(F)V

    .line 313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v15}, Lcom/google/android/finsky/exploreactivity/NodeController;->getCenterNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v3

    .line 314
    .local v3, centerNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/google/android/finsky/exploreactivity/NodeController;->processOnscreenNodes([Lcom/jme3/math/Vector2f;F)Ljava/util/List;

    move-result-object v6

    .line 315
    .local v6, newNodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInScroll:Z

    if-eqz v15, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mOriginalCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/finsky/exploreactivity/NodeController;->chooseCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 318
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_8

    .line 319
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 320
    .local v7, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isOnscreen()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 321
    if-ne v7, v3, :cond_5

    const/4 v15, 0x1

    :goto_2
    invoke-virtual {v7, v14, v15}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->update(FZ)V

    .line 318
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 321
    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 322
    :cond_6
    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasThumbnail()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v15, v7}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 324
    if-ne v7, v3, :cond_7

    const/4 v15, 0x1

    :goto_4
    invoke-virtual {v7, v15}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->attach(Z)V

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    .line 327
    .end local v7           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_8
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_a

    .line 328
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 329
    .restart local v7       #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isOnscreen()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 330
    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->removeFromParent()Z

    .line 331
    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->detach()V

    .line 327
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 334
    .end local v7           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 335
    const/4 v4, 0x0

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_b

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 340
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInScroll:Z

    if-nez v15, :cond_10

    const/4 v5, 0x1

    .line 341
    .local v5, infoboxOn:Z
    :goto_7
    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isDescriptionOn()Z

    move-result v15

    if-eq v5, v15, :cond_c

    .line 342
    invoke-virtual {v3, v5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setDescriptionState(Z)V

    .line 346
    :cond_c
    const/4 v10, 0x0

    .line 347
    .local v10, recentering:Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInScroll:Z

    if-nez v15, :cond_d

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v15, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v2

    .line 349
    .local v2, center:Lcom/jme3/math/Vector2f;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mWorldBounds:[Lcom/jme3/math/Vector2f;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenCenter:Lcom/jme3/math/Vector2f;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getPolyCenter([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenCenter:Lcom/jme3/math/Vector2f;

    iget v0, v15, Lcom/jme3/math/Vector2f;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenWidth:F

    move/from16 v17, v0

    const v18, -0x41d1eb85

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/jme3/math/Vector2f;->x:F

    .line 351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenCenter:Lcom/jme3/math/Vector2f;

    iget v0, v15, Lcom/jme3/math/Vector2f;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mScreenHeight:F

    move/from16 v17, v0

    const v18, -0x41333333

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/jme3/math/Vector2f;->y:F

    .line 352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    iget v0, v2, Lcom/jme3/math/Vector2f;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenCenter:Lcom/jme3/math/Vector2f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/jme3/math/Vector2f;->x:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/jme3/math/Vector3f;->x:F

    .line 353
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    iget v0, v2, Lcom/jme3/math/Vector2f;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->screenCenter:Lcom/jme3/math/Vector2f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/jme3/math/Vector2f;->y:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/jme3/math/Vector3f;->y:F

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lcom/jme3/math/Vector3f;->z:F

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    invoke-virtual {v15}, Lcom/jme3/math/Vector3f;->length()F

    move-result v15

    const/high16 v16, 0x3f80

    cmpl-float v15, v15, v16

    if-lez v15, :cond_11

    const/4 v10, 0x1

    .line 356
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    invoke-virtual {v15, v14}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->delta:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->updateCamera(Lcom/jme3/math/Vector3f;)V

    .line 360
    .end local v2           #center:Lcom/jme3/math/Vector2f;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInRotation:Z

    if-nez v15, :cond_f

    .line 361
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v15}, Lcom/google/android/finsky/exploreactivity/NodeController;->getRotation()F

    move-result v11

    .line 364
    .local v11, rotation:F
    const v15, 0x40490fdb

    cmpl-float v15, v11, v15

    if-lez v15, :cond_e

    .line 365
    const v15, 0x40c90fdb

    sub-float/2addr v11, v15

    .line 367
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    neg-float v0, v11

    move/from16 v16, v0

    mul-float v16, v16, v14

    const/high16 v17, 0x3f80

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/finsky/exploreactivity/NodeController;->rotate(F)V

    .line 370
    .end local v11           #rotation:F
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipeFader:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mInScroll:Z

    if-nez v15, :cond_12

    if-nez v10, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v15}, Lcom/google/android/finsky/exploreactivity/NodeController;->isSwipable()Z

    move-result v15

    if-eqz v15, :cond_12

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->fade(Z)V

    .line 371
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mSwipeFader:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v15, v14}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->update(F)V

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v15, v14}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    .line 376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mRootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v15}, Lcom/jme3/scene/Node;->updateGeometricState()V

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/jme3/app/state/AppStateManager;->render(Lcom/jme3/renderer/RenderManager;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->context:Lcom/jme3/system/JmeContext;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/jme3/system/JmeContext;->isRenderable()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lcom/jme3/renderer/RenderManager;->render(FZ)V

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v15}, Lcom/jme3/app/state/AppStateManager;->postRender()V

    goto/16 :goto_0

    .line 340
    .end local v5           #infoboxOn:Z
    .end local v10           #recentering:Z
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 355
    .restart local v2       #center:Lcom/jme3/math/Vector2f;
    .restart local v5       #infoboxOn:Z
    .restart local v10       #recentering:Z
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 370
    .end local v2           #center:Lcom/jme3/math/Vector2f;
    :cond_12
    const/4 v15, 0x0

    goto :goto_9
.end method
