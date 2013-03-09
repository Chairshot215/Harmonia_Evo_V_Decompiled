.class public Lcom/google/android/finsky/exploreactivity/NodeController;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;,
        Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;
    }
.end annotation


# static fields
.field private static final ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

.field public static final FIXED_CHILD_ANGLES:[F

.field private static final FIXED_GRANDCHILD_ANGLES:[F


# instance fields
.field private mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

.field private final mCenter:Lcom/jme3/math/Vector2f;

.field private mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

.field private final mCenterNodeCenter:Lcom/jme3/math/Vector2f;

.field private mCurrentNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

.field private final mFadeOutNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private mFadingIn:Z

.field private mFrameNum:I

.field private final mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

.field private final mNodeVector:Lcom/jme3/math/Vector2f;

.field private mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

.field private mPlaybackShouldStartTime:J

.field private mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

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

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mRequestsToCancel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mReturnNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private mRotation:F

.field private mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

.field private final mSize:Lcom/jme3/math/Vector2f;

.field private mSongListener:Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;

.field private mSongPlayingNow:Ljava/lang/String;

.field mStarHalf:Landroid/graphics/Bitmap;

.field mStarOff:Landroid/graphics/Bitmap;

.field mStarOn:Landroid/graphics/Bitmap;

.field final mUiComponents:Landroid/view/ViewGroup;

.field private mVolume:F

.field private final mWishlistEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_GRANDCHILD_ANGLES:[F

    .line 119
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$1;

    invoke-direct {v0}, Lcom/google/android/finsky/exploreactivity/NodeController$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController;->ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    return-void

    .line 80
    :array_0
    .array-data 0x4
        0x19t 0x3ct 0x3dt 0xbft
        0xc3t 0xb8t 0xb2t 0xbft
        0xa6t 0xb7t 0x1t 0xc0t
    .end array-data

    .line 88
    :array_1
    .array-data 0x4
        0xat 0x23t 0xb5t 0xbft
        0x7at 0xf2t 0xdct 0xbft
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/ExploreActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/android/volley/RequestQueue;)V
    .locals 7
    .parameter "activity"
    .parameter "dfeApi"
    .parameter "musicPreviewManager"
    .parameter "requestQueue"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    .line 130
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 133
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    .line 136
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    .line 142
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    .line 148
    new-instance v2, Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    new-instance v3, Lcom/google/android/finsky/exploreactivity/NodeController$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$2;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlaybackShouldStartTime:J

    .line 195
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, v5, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    .line 198
    iput v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 201
    iput v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    .line 221
    sget-object v2, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    .line 224
    iput-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    .line 230
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, v5, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNodeCenter:Lcom/jme3/math/Vector2f;

    .line 240
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFrameNum:I

    .line 250
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, v5, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mNodeVector:Lcom/jme3/math/Vector2f;

    .line 251
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    .line 263
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 264
    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    .line 265
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    .line 266
    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 268
    sget-object v2, Lcom/google/android/finsky/config/G;->wishlistEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mWishlistEnabled:Z

    .line 270
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 271
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0200b0

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOn:Landroid/graphics/Bitmap;

    .line 272
    const v2, 0x7f0200af

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOff:Landroid/graphics/Bitmap;

    .line 273
    const v2, 0x7f0200ae

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarHalf:Landroid/graphics/Bitmap;

    .line 275
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 277
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040074

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    .line 278
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 280
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/exploreactivity/NodeController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->convertDocList(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/exploreactivity/NodeController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/android/volley/RequestQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->disposeObjects(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    return-object v0
.end method

.method private animateNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;[FF)V
    .locals 12
    .parameter "centerNode"
    .parameter "childAngles"
    .parameter "deltaTime"

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v4

    .line 652
    .local v4, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 653
    .local v5, numNodes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 658
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v2

    .line 660
    .local v2, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    array-length v8, p2

    if-ge v1, v8, :cond_1

    .line 661
    aget v8, p2, v1

    iget v9, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    add-float v7, v8, v9

    .line 671
    .local v7, targetAngle:F
    :goto_1
    invoke-direct {p0, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v7

    .line 673
    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getAngle()F

    move-result v3

    .line 674
    .local v3, nodeAngle:F
    sub-float v0, v7, v3

    .line 677
    .local v0, delta:F
    const v8, 0x40490fdb

    cmpl-float v8, v0, v8

    if-lez v8, :cond_3

    .line 678
    const v8, 0x40490fdb

    sub-float v0, v8, v0

    .line 684
    :cond_0
    :goto_2
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-nez v8, :cond_4

    const/4 v6, 0x0

    .line 685
    .local v6, sign:F
    :goto_3
    mul-float v8, v0, v6

    float-to-double v8, v8

    const-wide v10, 0x3ff3333340000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x4080

    mul-float v0, v8, v9

    .line 686
    const v8, 0x41490fdb

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 687
    mul-float v8, p3, v6

    mul-float/2addr v0, v8

    .line 689
    add-float v8, v3, v0

    invoke-direct {p0, v8}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setAngle(F)V

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    .end local v0           #delta:F
    .end local v3           #nodeAngle:F
    .end local v6           #sign:F
    .end local v7           #targetAngle:F
    :cond_1
    sget-object v8, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 665
    const v7, 0x4034f4ab

    .restart local v7       #targetAngle:F
    goto :goto_1

    .line 667
    .end local v7           #targetAngle:F
    :cond_2
    const v8, 0x3fc90fdb

    iget v9, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    add-float v7, v8, v9

    .restart local v7       #targetAngle:F
    goto :goto_1

    .line 679
    .restart local v0       #delta:F
    .restart local v3       #nodeAngle:F
    :cond_3
    const v8, -0x3fb6f025

    cmpg-float v8, v0, v8

    if-gez v8, :cond_0

    .line 680
    const v8, -0x3fb6f025

    sub-float v0, v8, v0

    goto :goto_2

    .line 684
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v6, v0, v8

    goto :goto_3

    .line 691
    .end local v0           #delta:F
    .end local v2           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .end local v3           #nodeAngle:F
    .end local v7           #targetAngle:F
    :cond_5
    return-void
.end method

.method private animateNodes(F)V
    .locals 8
    .parameter "deltaTime"

    .prologue
    const/4 v7, 0x0

    .line 615
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    sget-object v5, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->animateNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;[FF)V

    .line 616
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v1

    .line 617
    .local v1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 618
    .local v2, numNodes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 619
    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 620
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_GRANDCHILD_ANGLES:[F

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->animateNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;[FF)V

    .line 618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 626
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    .line 627
    .local v3, oldVolume:F
    iget-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    if-eqz v4, :cond_4

    .line 628
    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    const/high16 v6, 0x3f00

    div-float v6, p1, v6

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    .line 632
    :goto_1
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    .line 633
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setVolume(FF)V

    .line 634
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    if-nez v4, :cond_2

    .line 635
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->pause()V

    .line 642
    .end local v3           #oldVolume:F
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v5, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlaybackShouldStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 645
    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->resetPlayback(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 647
    :cond_3
    return-void

    .line 630
    .restart local v3       #oldVolume:F
    :cond_4
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    const v5, 0x3dcccccd

    div-float v5, p1, v5

    sub-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    goto :goto_1
.end method

.method private calculateCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V
    .locals 2
    .parameter "node"
    .parameter "halfDiagonal"

    .prologue
    .line 933
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v0

    .line 934
    .local v0, center:Lcom/jme3/math/Vector2f;
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector2f;->distance(Lcom/jme3/math/Vector2f;)F

    move-result v1

    div-float/2addr v1, p2

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setDistanceToCenter(F)V

    .line 935
    return-void
.end method

.method private clearNodePositions(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .locals 4
    .parameter "node"

    .prologue
    const/high16 v3, 0x7fc0

    .line 590
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 591
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 592
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->clearNodePositions(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_0
    return-void
.end method

.method private convertDocList(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1091
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v2, outList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1093
    invoke-virtual {p1, v4}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v1

    .line 1094
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1095
    new-instance v4, Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 1099
    return-object v2
.end method

.method private disposeObjects(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 919
    if-nez p1, :cond_0

    .line 929
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->disposeObjects()V

    .line 924
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 925
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 926
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->disposeObjects(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 928
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->removeFromParent()Z

    goto :goto_0
.end method

.method private dumpNodeLeaf(Lcom/google/android/finsky/exploreactivity/DocumentNode;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    .line 1190
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1191
    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1193
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1194
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getRelations()Ljava/util/List;

    move-result-object v4

    .line 1197
    if-eqz v4, :cond_1

    move v1, v2

    .line 1198
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1200
    const-string v0, "  - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1205
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v1

    .line 1206
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1207
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->dumpNodeLeaf(Lcom/google/android/finsky/exploreactivity/DocumentNode;I)V

    .line 1206
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1209
    :cond_2
    return-void
.end method

.method private normalizeAngle(F)F
    .locals 2
    .parameter "angle"

    .prologue
    const v1, 0x40c90fdb

    .line 695
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 696
    sub-float/2addr p1, v1

    goto :goto_0

    .line 698
    :cond_0
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 699
    add-float/2addr p1, v1

    goto :goto_1

    .line 701
    :cond_1
    return p1
.end method

.method private prepareOnscreenNodes(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V
    .locals 8
    .parameter "node"
    .parameter "halfDiagonal"

    .prologue
    const/16 v7, 0xf

    .line 828
    const/4 v4, 0x0

    .line 829
    .local v4, onscreenNode:Z
    const/4 v2, 0x0

    .line 831
    .local v2, keepLoaded:Z
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-ne p1, v6, :cond_3

    .line 833
    sget-object v6, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v7, v6}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 834
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->createChildren(I)V

    .line 835
    const/4 v4, 0x1

    .line 866
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 867
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/exploreactivity/NodeController;->calculateCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V

    .line 871
    :cond_1
    if-nez v4, :cond_8

    if-nez v2, :cond_8

    .line 872
    iget-object v6, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getInProgressState()I

    move-result v6

    if-eqz v6, :cond_2

    .line 873
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_2
    iget-object v6, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getRelations()Ljava/util/List;

    move-result-object v5

    .line 878
    .local v5, relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    if-eqz v5, :cond_7

    .line 879
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 881
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 882
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v6, v6, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 836
    .end local v0           #children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    .end local v1           #i:I
    .end local v5           #relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    :cond_3
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    if-ne v6, p1, :cond_4

    .line 838
    sget-object v6, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v7, v6}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 839
    const/4 v2, 0x1

    goto :goto_0

    .line 840
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-ne v6, v7, :cond_6

    .line 846
    const/16 v6, 0xb

    sget-object v7, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 847
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6, p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodePos(Lcom/google/android/finsky/exploreactivity/DocumentNode;)I

    move-result v6

    sget-object v7, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 848
    const/4 v6, 0x4

    sget-object v7, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 849
    sget-object v6, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v6, v6

    invoke-virtual {p1, v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->createChildren(I)V

    .line 850
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 852
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 854
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-ne v6, v7, :cond_0

    .line 858
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v3

    .line 859
    .local v3, l1Child:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodePos(Lcom/google/android/finsky/exploreactivity/DocumentNode;)I

    move-result v6

    sget-object v7, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v7, v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodePos(Lcom/google/android/finsky/exploreactivity/DocumentNode;)I

    move-result v6

    sget-object v7, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_GRANDCHILD_ANGLES:[F

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 861
    const/4 v6, 0x3

    sget-object v7, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 862
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 886
    .end local v3           #l1Child:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .restart local v5       #relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->disposeObjects()V

    .line 889
    .end local v5           #relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 890
    .restart local v0       #children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 891
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v6, p2}, Lcom/google/android/finsky/exploreactivity/NodeController;->prepareOnscreenNodes(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 893
    :cond_9
    return-void
.end method

.method private processFadeOutNodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1121
    add-int/lit8 v0, v0, -0x1

    .line 1115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    return-object v1
.end method

.method private queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V
    .locals 8
    .parameter "url"
    .parameter "doc"
    .parameter "priority"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/exploreactivity/DocWrapper;",
            "Lcom/android/volley/Request$Priority;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/volley/Response$Listener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p4, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p5, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<*>;"
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$9;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v3

    sget-object v6, Lcom/google/android/finsky/exploreactivity/NodeController;->ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/NodeController$9;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Request$Priority;)V

    .line 1079
    .local v0, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    invoke-virtual {v0, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)V

    .line 1080
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1081
    return-void
.end method

.method private raise(Lcom/android/volley/Request$Priority;)Lcom/android/volley/Request$Priority;
    .locals 3
    .parameter "priority"

    .prologue
    .line 1085
    invoke-static {}, Lcom/android/volley/Request$Priority;->values()[Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 1086
    .local v0, values:[Lcom/android/volley/Request$Priority;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    .locals 3
    .parameter "playState"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    .line 338
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongListener:Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, title:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongListener:Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-interface {v1, v2, v0}, Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;->onPlayStateChanged(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;Ljava/lang/String;)V

    .line 343
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public chooseCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .locals 6
    .parameter "originalCenter"

    .prologue
    .line 512
    move-object v1, p1

    .line 514
    .local v1, newCenter:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector2f;->y:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 516
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 517
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 518
    .local v2, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDistanceToCenter()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDistanceToCenter()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 520
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #newCenter:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    check-cast v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 526
    .end local v0           #i:I
    .end local v2           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .restart local v1       #newCenter:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v4, v4, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 531
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v1

    .line 535
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-eq v3, v1, :cond_2

    .line 536
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->setCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 538
    :cond_2
    return-void

    .line 516
    .restart local v0       #i:I
    .restart local v2       #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public createDocumentNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .locals 6
    .parameter "parent"
    .parameter "doc"
    .parameter "drawingUtils"

    .prologue
    .line 353
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown backend type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/AppNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    .line 370
    :goto_0
    return-object v0

    .line 357
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 365
    new-instance v0, Lcom/google/android/finsky/exploreactivity/MusicArtistNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/MusicArtistNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 359
    :pswitch_2
    new-instance v0, Lcom/google/android/finsky/exploreactivity/MusicArtistNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/MusicArtistNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 361
    :pswitch_3
    new-instance v0, Lcom/google/android/finsky/exploreactivity/MusicAlbumNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/MusicAlbumNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 368
    :pswitch_4
    new-instance v0, Lcom/google/android/finsky/exploreactivity/BookNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/BookNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 370
    :pswitch_5
    new-instance v0, Lcom/google/android/finsky/exploreactivity/VideoNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/VideoNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 357
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized createRoot(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)V
    .locals 3
    .parameter "doc"
    .parameter "drawingUtils"

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$3;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/finsky/exploreactivity/NodeController;->createDocumentNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 297
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    .line 298
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->shouldShowPlaybackControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    const/16 v1, 0xf

    sget-object v2, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disposeObjects()V
    .locals 1

    .prologue
    .line 901
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$5;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 913
    return-void
.end method

.method public dumpControllerState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1180
    const-string v0, "NodeController state:"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    const-string v0, "Center node: %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    const-string v0, "Center %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector2f;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    const-string v0, "Node tree:"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->dumpNodeLeaf(Lcom/google/android/finsky/exploreactivity/DocumentNode;I)V

    .line 1185
    return-void
.end method

.method public fileReady(Lcom/google/android/finsky/exploreactivity/DocWrapper;Ljava/io/File;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1130
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v1, v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1133
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v2, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v2, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v1, v2, :cond_1

    .line 1134
    :cond_0
    const-string v1, "Starting playback of song %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->reset()V

    .line 1136
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1137
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1138
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1139
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->prepareAsync()V

    .line 1140
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_2
    :goto_0
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    const-string v1, "Exception trying to get sample: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getCenterNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    return-object v0
.end method

.method public getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;
    .locals 5
    .parameter "node"

    .prologue
    .line 759
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v0

    .line 760
    .local v0, center:Lcom/jme3/math/Vector2f;
    iget v3, v0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-object v0

    .line 774
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 776
    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNodeCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 777
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 779
    .local v1, currentNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v2

    .line 780
    .local v2, parent:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    if-eqz v2, :cond_3

    .line 781
    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getRelativePosition()Lcom/jme3/math/Vector2f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->subtractLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 783
    move-object v1, v2

    .line 787
    goto :goto_1

    .line 792
    .end local v1           #currentNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .end local v2           #parent:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 793
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mNodeVector:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getRelativePosition()Lcom/jme3/math/Vector2f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 794
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mNodeVector:Lcom/jme3/math/Vector2f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->addLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    return v0
.end method

.method public isSwipable()Z
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWishlistEnabled()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mWishlistEnabled:Z

    return v0
.end method

.method public loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 986
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v1

    .line 988
    xor-int/lit8 v0, v1, -0x1

    and-int/2addr v0, p2

    .line 989
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getInProgressState()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 990
    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    .line 991
    and-int/lit8 v0, v0, -0xd

    move v6, v0

    .line 993
    :goto_0
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->markInProgress(I)V

    .line 995
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController;->ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v0, p1, p3, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getThumbnailRequest(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    .line 998
    invoke-virtual {v0, p1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)V

    .line 999
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1002
    :cond_0
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_1

    .line 1003
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    new-instance v5, Lcom/google/android/finsky/exploreactivity/NodeController$6;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/google/android/finsky/exploreactivity/NodeController$6;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V

    .line 1018
    :cond_1
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_4

    .line 1019
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1063
    :cond_2
    :goto_1
    return-void

    .line 1022
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1025
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1026
    const-class v4, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    new-instance v5, Lcom/google/android/finsky/exploreactivity/NodeController$7;

    invoke-direct {v5, p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController$7;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocWrapper;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V

    .line 1043
    :cond_4
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_2

    .line 1046
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getRelatedItemUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/google/android/finsky/exploreactivity/NodeController;->raise(Lcom/android/volley/Request$Priority;)Lcom/android/volley/Request$Priority;

    move-result-object v3

    const-class v4, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    new-instance v5, Lcom/google/android/finsky/exploreactivity/NodeController$8;

    invoke-direct {v5, p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController$8;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocWrapper;)V

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V

    goto :goto_1

    .line 1023
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeListUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move v6, v0

    goto :goto_0
.end method

.method public loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V
    .locals 1
    .parameter "node"
    .parameter "state"
    .parameter "priority"

    .prologue
    .line 946
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    and-int/lit8 p2, p2, -0x2

    .line 948
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 949
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->recycleThumbnail()V

    .line 957
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V

    .line 958
    return-void

    .line 951
    :cond_1
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasThumbnail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    and-int/lit8 p2, p2, -0x2

    .line 955
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setNodeThumbnail()Z

    goto :goto_0
.end method

.method public processOnscreenNodes([Lcom/jme3/math/Vector2f;F)Ljava/util/List;
    .locals 9
    .parameter "boundsPolygon"
    .parameter "deltaTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jme3/math/Vector2f;",
            "F)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->clearNodePositions(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 401
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 402
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 403
    iput-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    .line 404
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 406
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    invoke-static {p1, v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getPolyCenter([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V

    .line 407
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    invoke-static {p1, v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getPolySize([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V

    .line 408
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v6, v5, Lcom/jme3/math/Vector2f;->y:F

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    const v8, 0x3ecccccd

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/jme3/math/Vector2f;->y:F

    .line 409
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v6, v5, Lcom/jme3/math/Vector2f;->x:F

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->x:F

    const v8, 0x3e2e147b

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/jme3/math/Vector2f;->x:F

    .line 411
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v6, v6, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v6, v6, Lcom/jme3/math/Vector2f;->y:F

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    const/high16 v6, 0x4000

    div-float v1, v5, v6

    .line 418
    .local v1, halfDiagonal:F
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    monitor-enter v6

    .line 419
    :try_start_0
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v5, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->prepareOnscreenNodes(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V

    .line 420
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 422
    new-instance v5, Lcom/google/android/finsky/exploreactivity/NodeController$4;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$4;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 436
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/finsky/exploreactivity/NodeController;->animateNodes(F)V

    .line 439
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 440
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 441
    .local v3, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 443
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 447
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->fade(Z)V

    .line 439
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    .end local v2           #i:I
    .end local v3           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 453
    .restart local v2       #i:I
    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 454
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 456
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->fade(Z)V

    .line 453
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 462
    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 465
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->processFadeOutNodes()Ljava/util/List;

    move-result-object v0

    .line 466
    .local v0, fadeOutNodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 467
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 470
    :cond_6
    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 471
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 475
    :cond_7
    const/4 v2, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 476
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 479
    :cond_8
    sget-boolean v5, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFrameNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFrameNum:I

    rem-int/lit16 v5, v5, 0x1f4

    if-nez v5, :cond_9

    .line 480
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->dumpControllerState()V

    .line 484
    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    return-object v5
.end method

.method public resetPlayback(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    .locals 1
    .parameter "newPlayState"

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->pause()V

    .line 330
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 331
    return-void
.end method

.method public rotate(F)V
    .locals 8
    .parameter "delta"

    .prologue
    const/4 v7, 0x0

    const v6, 0x3f060a92

    .line 720
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    add-float/2addr v4, p1

    invoke-direct {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 722
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v2

    .line 723
    .local v2, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 724
    .local v3, size:I
    if-nez v3, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 731
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v1

    .line 732
    .local v1, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getAngle()F

    move-result v4

    add-float/2addr v4, p1

    invoke-direct {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setAngle(F)V

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 736
    .end local v1           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_2
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    const v4, 0x40c90fdb

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 737
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    const v5, 0x40490fdb

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 738
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    sub-float/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 739
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->rotateChildren(I)V

    .line 740
    const-string v4, "Applied child rotation of +1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 742
    :cond_3
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    add-float/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 743
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->rotateChildren(I)V

    .line 744
    const-string v4, "Applied child rotation of -1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public runOnGlThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 1219
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1214
    return-void
.end method

.method public setCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .locals 9
    .parameter "newCenter"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 546
    const-string v2, "New center: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNodeCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 548
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 549
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 550
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exploreNavigateTo?doc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "exploreNavigateTo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "cidi"

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v3, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v3, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v2, v3, :cond_3

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->startPlayback()V

    .line 563
    :goto_0
    const/4 v1, 0x1

    .line 564
    .local v1, depth:I
    move-object v0, p1

    .line 565
    .local v0, currentNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v0

    .line 567
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 568
    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 569
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->clearParentNode()V

    .line 573
    :cond_2
    return-void

    .line 559
    .end local v0           #currentNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .end local v1           #depth:I
    :cond_3
    sget-object v2, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->resetPlayback(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    goto :goto_0
.end method

.method public setSongListener(Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;)V
    .locals 0
    .parameter "songListener"

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongListener:Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;

    .line 1105
    return-void
.end method

.method public shouldShowPlaybackControls()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startPlayback()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 309
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v1, v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 310
    .local v0, song:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v2, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v1, v2, :cond_0

    .line 314
    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlaybackShouldStartTime:J

    .line 317
    :cond_0
    const-string v1, "Fetching preview of %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v2, v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v1, v2, p0, v5}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->fetchPreview(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;Z)V

    .line 320
    :cond_1
    return-void
.end method

.method public togglePlayback()V
    .locals 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v0, v1, :cond_0

    .line 802
    sget-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 816
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setVolume(FF)V

    .line 809
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->start()V

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->startPlayback()V

    goto :goto_0
.end method

.method public toggleWishlist(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 1157
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$10;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController$10;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 1171
    .local v0, listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;
    new-instance v1, Lcom/google/android/finsky/exploreactivity/NodeController$11;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/finsky/exploreactivity/NodeController$11;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1176
    return-void
.end method
