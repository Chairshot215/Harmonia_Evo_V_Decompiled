.class public Lcom/htc/sunny2/fullfilmview/FullFilmView;
.super Lcom/htc/sunny2/view/SView;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;
.implements Lcom/htc/sunny2/Preparator$UpdateListener;
.implements Lcom/htc/sunny2/view/GestureDetector$OnGestureListener;
.implements Lcom/htc/sunny2/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/htc/sunny2/view/ISViewDataChangeHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    }
.end annotation


# static fields
.field static final LTAG:Ljava/lang/String; = "FullFilmView"

.field static final VIEW_STATE_ANIM_TO_FILMSTRIP:I = 0x2

.field static final VIEW_STATE_ANIM_TO_FULLSCREEN:I = 0x3

.field static final VIEW_STATE_FILMSTRIP:I = 0x1

.field static final VIEW_STATE_FULLSCREEN:I


# instance fields
.field private MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;",
            ">;"
        }
    .end annotation
.end field

.field private SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isOnlineTagEditor:Z

.field private isUploadEditor:Z

.field private itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

.field private itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

.field private mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

.field mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

.field private mEnableFullscreen:Z

.field private mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

.field mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

.field mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

.field private mGLViewHeight:I

.field private mGLViewWidth:I

.field private mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

.field private mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private mIsAfterEdit:Z

.field protected mListItemCount:I

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field protected mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

.field mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

.field private mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

.field private mRenderThread:Lcom/htc/sunny2/RenderThread;

.field protected mRootNode:Lcom/htc/sunny2/SceneNode;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollState:I

.field private mThumbPreparator:Lcom/htc/sunny2/Preparator;

.field private mViewState:I

.field private mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

.field private final mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

.field private mZoomGesture:Z

.field private supportMultitouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 252
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "filmstripViewItem"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 184
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 185
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 186
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 189
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 191
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    .line 192
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 193
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 194
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 196
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 197
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 201
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 203
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 205
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 213
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 216
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 217
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 219
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 221
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    .line 1095
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "SetSelection"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 1129
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1456
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    .line 258
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 260
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 261
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "fullScreenViewItem"
    .parameter "filmstripViewItem"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 184
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 185
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 186
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 189
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 191
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    .line 192
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 193
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 194
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 196
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 197
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 201
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 203
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 205
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 213
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 216
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 217
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 219
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 221
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    .line 1095
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "SetSelection"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;

    .line 1129
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1456
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    .line 270
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 272
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 273
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setOnFullScreenViewAlignEndListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;)V

    .line 275
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 276
    iput-object p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 278
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 279
    return-void
.end method

.method private ObtainMediaItemRefresh(II)Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 2121
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    .line 2122
    .local v0, object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    if-nez v0, :cond_0

    .line 2123
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    .end local v0           #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V

    .line 2126
    .restart local v0       #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    :goto_0
    return-object v0

    .line 2125
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->reset(II)V

    goto :goto_0
.end method

.method private ObtainSetSelection(I)Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    .locals 2
    .parameter "position"

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    .line 1098
    .local v0, object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    if-nez v0, :cond_0

    .line 1099
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    .end local v0           #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1102
    .restart local v0       #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    :goto_0
    return-object v0

    .line 1101
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->reset(I)V

    goto :goto_0
.end method

.method private RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 2131
    if-nez p1, :cond_0

    .line 2135
    :goto_0
    return-void

    .line 2133
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->free()V

    .line 2134
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 1105
    if-nez p1, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1107
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->free()V

    .line 1108
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/IMediaList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaList(Lcom/htc/sunny2/IMediaList;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/Preparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIRT(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/RenderThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private onMediaItemRefreshIRT(II)V
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 1719
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_4

    .line 1721
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 1759
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_4

    .line 1761
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    .line 1763
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemRefreshIRT(I)V

    .line 1765
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_3

    .line 1767
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onMediaItemRefreshIRT(I)V

    .line 1769
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/Preparator;->notifyDataItemChanged(II)V

    .line 1774
    :cond_4
    :goto_0
    return-void

    .line 1724
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v0, :cond_4

    .line 1726
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->checkImageUpdate(II)V

    .line 1728
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_5

    .line 1730
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemRefreshSizeIRT(I)V

    .line 1732
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_4

    .line 1734
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onMediaItemRefreshSizeIRT(I)V

    goto :goto_0

    .line 1739
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_4

    .line 1741
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_6

    .line 1743
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemSetConsumeRightFlagIRT(I)V

    .line 1745
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/Preparator;->notifyDataItemChanged(II)V

    goto :goto_0

    .line 1749
    :sswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_4

    .line 1751
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_7

    .line 1753
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemSetConsumeRightExpiredIRT(I)V

    .line 1755
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/Preparator;->notifyDataItemChanged(II)V

    goto :goto_0

    .line 1721
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private pointsToViewport(II)[I
    .locals 6
    .parameter "worldX"
    .parameter "worldY"

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 763
    .local v2, mOriginX:I
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 765
    .local v3, mOriginY:I
    sub-int v0, p1, v2

    .line 766
    .local v0, downX:I
    sub-int v1, v3, p2

    .line 768
    .local v1, downY:I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    return-object v4
.end method

.method private setMediaList(Lcom/htc/sunny2/IMediaList;I)V
    .locals 9
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v8, 0x0

    .line 661
    const-string v5, "FullFilmView"

    const-string v6, "[HTCAlbum][FullFilmView][setMediaList] + "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 664
    .local v4, oldList:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<Lcom/htc/sunny2/IMediaData;>;"
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 666
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v5, :cond_0

    .line 668
    if-nez v4, :cond_3

    .line 670
    const-string v5, "FullFilmView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FullFilmView][setMediaList]old list null, bind: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v5, v8, v6, v8}, Lcom/htc/sunny2/Preparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 687
    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v5, v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->hasSideBySideBitmapReadyListener()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v5

    if-ge p2, v5, :cond_0

    .line 689
    invoke-interface {p1, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 690
    .local v3, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v5, :cond_0

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v3           #mediaItem:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    const-wide/16 v1, 0x15e

    .line 693
    .local v1, idleDuration:J
    const-string v5, "FullFilmView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBindMediaListIRT: Request side by side image and decode idle. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v5, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setSideBySideItemIndex(I)Z

    .line 695
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v5, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->requestDecodeIdleAfterSideBySideImageDecoded(J)V

    .line 699
    .end local v1           #idleDuration:J
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v5, :cond_1

    .line 701
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V

    .line 702
    .local v0, getter:Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 703
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->rebindVisibleItems()V

    .line 705
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setMediaDataListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;)V

    .line 706
    if-ltz p2, :cond_1

    .line 708
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    .line 711
    .end local v0           #getter:Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;
    :cond_1
    const-string v5, "FullFilmView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FullFilmView][setMediaList]mEnableFullscreen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v5, :cond_2

    .line 714
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bindMediaList(Lcom/htc/sunny2/IMediaList;)Z

    .line 715
    if-ltz p2, :cond_5

    .line 717
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    .line 724
    :cond_2
    :goto_1
    const-string v5, "FullFilmView"

    const-string v6, "[HTCAlbum][FullFilmView][setMediaList] - "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void

    .line 675
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v5, :cond_4

    .line 677
    const-string v5, "FullFilmView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FullFilmView][setMediaList]old list not null, mMediaList not null, refresh: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v5, v8, v6, v8}, Lcom/htc/sunny2/Preparator;->refresh(ILcom/htc/sunny2/IMediaList;I)V

    goto/16 :goto_0

    .line 682
    :cond_4
    const-string v5, "FullFilmView"

    const-string v6, "[HTCAlbum][FullFilmView][setMediaList]old list not null, mMediaList null, unbind"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v5, v8}, Lcom/htc/sunny2/Preparator;->unbind(I)V

    goto/16 :goto_0

    .line 721
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    goto :goto_1
.end method


# virtual methods
.method changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    .locals 1
    .parameter "parent"
    .parameter "state"

    .prologue
    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V

    .line 1134
    return-void
.end method

.method changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V
    .locals 4
    .parameter "parent"
    .parameter "state"
    .parameter "force"

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-nez v1, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 1143
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 1144
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1148
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    if-eq v1, p2, :cond_0

    .line 1151
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v1, :cond_3

    .line 1157
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    invoke-interface {v1, p1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;->onScrollStateChanged(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v1, :cond_0

    .line 1189
    if-nez p2, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    goto :goto_0

    .line 1182
    :catch_0
    move-exception v0

    .line 1184
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changeScrollStateOnUiThread] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 618
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 622
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    return-void

    .line 624
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 628
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 626
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public createResource()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 369
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][createResource] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-super {p0}, Lcom/htc/sunny2/view/SView;->createResource()V

    .line 374
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    .line 375
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 376
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 378
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->loadResources(Landroid/content/Context;ILcom/htc/sunny2/SunnyContext;)V

    .line 381
    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;-><init>(ILcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    .line 382
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v0, :cond_5

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->enableChildShadow(Z)V

    .line 383
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSceneListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;)V

    .line 384
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setIsOnlineTagEditor(Z)V

    .line 385
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->attachToParent(Lcom/htc/sunny2/SceneNode;)V

    .line 387
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    .line 388
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 483
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v0, v7, v1, v7}, Lcom/htc/sunny2/Preparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 487
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V

    .line 490
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsUploadEditor(Z)V

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    if-nez v0, :cond_3

    .line 497
    new-instance v0, Lcom/htc/sunny2/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v0, v1, p0, v2}, Lcom/htc/sunny2/view/GestureDetector;-><init>(Landroid/content/Context;Lcom/htc/sunny2/view/GestureDetector$OnGestureListener;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    .line 498
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/GestureDetector;->setOnDoubleTapListener(Lcom/htc/sunny2/view/GestureDetector$OnDoubleTapListener;)V

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_4

    .line 502
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 504
    :cond_4
    new-instance v0, Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 506
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->setFilmstripViewScene(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;)V

    .line 508
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_6

    .line 510
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->setFullscreenViewScene(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    .line 511
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupRenderingEnvironment(Lcom/htc/sunny2/RenderThread;I)V

    .line 515
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    const/16 v3, 0x258

    const/16 v4, 0x190

    const/16 v5, 0x14

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupScene(Lcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z

    move-result v0

    if-nez v0, :cond_6

    .line 517
    const-string v0, "FullFilmView"

    const-string v1, "FSV setupScene NG"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_1
    return-void

    :cond_5
    move v0, v7

    .line 382
    goto/16 :goto_0

    .line 522
    :cond_6
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {p0, v7, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    .line 523
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][createResource] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v7, v6

    .line 522
    goto :goto_2
.end method

.method protected doItemClickOnUiThread(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/ViewItem;I)V
    .locals 4
    .parameter "parent"
    .parameter "item"
    .parameter "position"

    .prologue
    .line 1896
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    if-nez v1, :cond_1

    .line 1929
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 1903
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    invoke-interface {v1, p1, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1925
    :catch_0
    move-exception v0

    .line 1927
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[doItemClickOnUiThread] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 539
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunny2/SceneNode;)V

    .line 540
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearRenderingEnvironment()V

    .line 542
    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 543
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/GestureDetector;->release()V

    .line 547
    :cond_1
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    .line 549
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->removePreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 552
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->unbind(I)V

    .line 553
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->deInit()V

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachFromParent()V

    .line 557
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->releaseResources()V

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "FilmstripPan"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 561
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "scrollFilmstripUsingDistance"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 562
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "scrollFilmstripUsingVelocity"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 563
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deInit()V

    .line 565
    invoke-super {p0}, Lcom/htc/sunny2/view/SView;->freeResource()V

    .line 566
    return-void
.end method

.method fullScreenViewAnimateToFilmstripView(IFF)V
    .locals 4
    .parameter "currentItemIndex"
    .parameter "currentItemOffset"
    .parameter "velocity"

    .prologue
    .line 1007
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v2, :cond_0

    .line 1009
    const-string v2, "FullFilmView"

    const-string v3, "MODE_FULLSCREENVIEW"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :goto_0
    return-void

    .line 1014
    :cond_0
    const/high16 v2, 0x4461

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v0, v2, v3

    .line 1016
    .local v0, adjustV:F
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "child_index"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1018
    const-string v2, "child_offset"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1019
    const-string v2, "last_pan_velocity"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1020
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 1022
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    goto :goto_0
.end method

.method public getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    .locals 2

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 969
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1113
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    packed-switch v0, :pswitch_data_0

    .line 1121
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItemPosition()I

    move-result v0

    .line 1126
    :goto_0
    return v0

    .line 1116
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    .line 1126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSunnyEnvironment()I
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyContext;->getSunnyEnvironment()I

    move-result v0

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 2

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2207
    return-void
.end method

.method public hideFullFilmView()V
    .locals 2

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2176
    return-void
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1801
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_1

    .line 1809
    :cond_0
    :goto_0
    return v0

    .line 1805
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_0

    .line 1807
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFullScreenAndZoomed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1814
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_1

    .line 1827
    :cond_0
    :goto_0
    return v0

    .line 1817
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_0

    .line 1820
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 1822
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1824
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyMediaDataChange()V
    .locals 4

    .prologue
    .line 1473
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_0

    .line 1503
    :goto_0
    return-void

    .line 1475
    :cond_0
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][notifyMediaDataChange] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1480
    .local v1, oldPos:I
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 1482
    .local v0, count:I
    if-gez v1, :cond_3

    .line 1484
    const/4 v1, 0x0

    .line 1491
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    if-eqz v2, :cond_2

    .line 1493
    add-int/lit8 v1, v0, -0x1

    .line 1494
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 1497
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {p0, v2, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 1502
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][notifyMediaDataChange] - "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1486
    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_1

    .line 1488
    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method public notifyMediaDataChange(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    invoke-static {p1, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->obtain(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 1511
    :cond_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 2080
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][onDoubleTap] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 2085
    :cond_0
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][onDoubleTap] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2074
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 773
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 798
    :goto_0
    return v1

    .line 776
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransition()Z

    move-result v3

    if-nez v3, :cond_1

    .line 777
    invoke-virtual {p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 779
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v3, :cond_2

    .line 781
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDown(Landroid/view/MotionEvent;)V

    :goto_1
    move v1, v2

    .line 798
    goto :goto_0

    .line 785
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->pointsToViewport(II)[I

    move-result-object v0

    .line 786
    .local v0, downs:[I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    aget v1, v0, v1

    aget v4, v0, v2

    invoke-virtual {v3, v1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestDown(II)V

    .line 788
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    .line 790
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 791
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 792
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 793
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 795
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchDown(I)V

    goto :goto_1
.end method

.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 2030
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureExpired(I)V

    .line 2031
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 3
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    const/4 v2, 0x1

    .line 2002
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_1

    .line 2004
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 2005
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2007
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2025
    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    :goto_0
    return-void

    .line 2011
    .restart local v0       #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_0
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v1, :cond_2

    .line 2013
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 2024
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureReady(I)V

    goto :goto_0

    .line 2016
    .restart local v0       #mediaItem:Lcom/htc/sunny2/IMediaData;
    :cond_2
    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2018
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->getMediaQuality()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2019
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setIsCorrupt(Z)V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x3

    .line 841
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    neg-float v1, p3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    :cond_1
    const/4 v0, 0x0

    .line 860
    :goto_0
    return v0

    .line 848
    :cond_2
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_3

    .line 850
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 851
    invoke-virtual {p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 860
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 855
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onFling(F)V

    .line 856
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 857
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onFullScreenViewAlignEnd()V
    .locals 1

    .prologue
    .line 1453
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1454
    return-void
.end method

.method public onFullScreenViewScrollBeginIRT()V
    .locals 0

    .prologue
    .line 1783
    return-void
.end method

.method public onFullScreenViewScrollEndIRT()V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    .line 1797
    :cond_0
    return-void
.end method

.method public onFullScreenViewScrollIRT(F)V
    .locals 2
    .parameter "dx"

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    .line 1790
    :cond_0
    return-void
.end method

.method public onLayout(ZFFFII)V
    .locals 5
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x1

    .line 583
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I

    .line 584
    iput p6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewHeight:I

    .line 586
    if-lt p5, v2, :cond_0

    if-ge p6, v2, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SView;->onLayout(ZFFFII)V

    .line 595
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_2

    .line 597
    .local v0, centerScale:F
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v3

    .line 599
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->setMediaListIRT_Workaround()V

    .line 601
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, p5, p6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onLayout(II)V

    .line 603
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 604
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    .line 606
    :cond_3
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_4

    .line 607
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p5, p6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onLayout(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2043
    return-void
.end method

.method public onMediaItemRefreshIHT(II)V
    .locals 3
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_1

    .line 1707
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1711
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->ObtainMediaItemRefresh(II)Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1713
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 2
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 1985
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureReady(I)V

    .line 1988
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    .line 1990
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 1991
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_0

    .line 1993
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v0           #mediaItem:Lcom/htc/sunny2/IMediaData;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setIsCorrupt(Z)V

    .line 1997
    :cond_0
    return-void
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 569
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SView;->onRenderOrderChanged(Z)V

    .line 570
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 572
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->resumePreparator()V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->pausePreparator()V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScale(Landroid/view/ScaleGestureDetector;)Z

    .line 990
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 975
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 976
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 980
    :cond_0
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 1000
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 1001
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x0

    .line 836
    :goto_0
    return v0

    .line 807
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 810
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 811
    const/4 v0, 0x2

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 836
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchMove(I)V

    .line 818
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_3

    .line 820
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 828
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Preparator;->setDecodeDirection(I)V

    goto :goto_1
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    .line 908
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onUp(Landroid/view/MotionEvent;)V

    .line 909
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_0

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchUp(I)V

    .line 915
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSetCurrentIndex(I)V
    .locals 2
    .parameter "currentItemIndex"

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/htc/sunny2/Preparator;->setVisibleRange(III)V

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    .line 1449
    :cond_1
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2037
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 2048
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapConfirmed] + "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    if-nez v1, :cond_0

    .line 2051
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapConfirmed]mOnItemClickListener is null - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const/4 v1, 0x0

    .line 2066
    :goto_0
    return v1

    .line 2054
    :cond_0
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullFilmView][onSingleTapConfirmed]mEnableFullscreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullFilmView][onSingleTapConfirmed]mViewState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_1

    .line 2058
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2059
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2061
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iput-object p1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 2062
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    invoke-interface {v1, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V

    .line 2065
    .end local v0           #index:I
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapConfirmed] - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 865
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapUp] + "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v2, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapUp]In transition of filmstrip to full screen - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v1, 0x0

    .line 898
    :goto_0
    return v1

    .line 872
    :cond_0
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullFilmView][onSingleTapUp]mEnableFullscreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullFilmView][onSingleTapUp]mViewState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_2

    .line 876
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onSingleTapUp(Landroid/view/MotionEvent;)V

    .line 897
    :cond_1
    :goto_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapUp] - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const/4 v1, 0x1

    goto :goto_0

    .line 890
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp()V

    .line 892
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getClickedItemPosition()I

    move-result v0

    .line 893
    .local v0, position:I
    if-ltz v0, :cond_1

    .line 894
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getClickedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    invoke-virtual {p0, p0, v1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->doItemClickOnUiThread(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/ViewItem;I)V

    goto :goto_1
.end method

.method public onThumbnailTextureExpired(I)V
    .locals 1
    .parameter "contentIndex"

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureExpired(I)V

    .line 1399
    :cond_0
    return-void
.end method

.method public onThumbnailTextureReady(I)V
    .locals 6
    .parameter "contentIndex"

    .prologue
    const/4 v5, 0x1

    .line 1347
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 1348
    .local v0, preparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-nez v4, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 1356
    .local v1, texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v0, p1, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 1357
    .local v3, textureHQ:Lcom/htc/sunny2/Texture;
    const/4 v4, 0x2

    invoke-virtual {v0, p1, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 1358
    .local v2, textureEQ:Lcom/htc/sunny2/Texture;
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    if-eqz v4, :cond_4

    .line 1360
    if-eqz v3, :cond_3

    .line 1362
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v4, p1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunny2/Texture;)V

    .line 1373
    :goto_1
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v4, :cond_2

    .line 1375
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isZoomed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1377
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v4, p1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V

    .line 1389
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v4, :cond_0

    .line 1391
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-boolean v5, v4, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    goto :goto_0

    .line 1366
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v4, p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_1

    .line 1371
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v4, p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_1

    .line 1379
    :cond_5
    if-eqz v3, :cond_6

    .line 1381
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v4, p1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V

    goto :goto_2

    .line 1385
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v4, p1, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 2
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    .line 1937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1939
    .local v0, mActionCode:I
    packed-switch v0, :pswitch_data_0

    .line 1954
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    if-nez v1, :cond_1

    .line 1956
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1965
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    if-eqz v1, :cond_2

    .line 1967
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1978
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1942
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    .line 1944
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onScrollEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1948
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    goto :goto_0

    .line 1939
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 8
    .parameter "animSelf"
    .parameter "animOther"
    .parameter "listener"

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 2140
    move-object v4, p1

    .line 2141
    .local v4, fAnimSelf:Landroid/os/Bundle;
    move-object v5, p3

    .line 2142
    .local v5, fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;
    move-object v6, p0

    .line 2143
    .local v6, fSView:Lcom/htc/sunny2/view/SView;
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;

    const-string v3, "PlayAnimationIn"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;)V

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 2162
    .end local v4           #fAnimSelf:Landroid/os/Bundle;
    .end local v5           #fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;
    .end local v6           #fSView:Lcom/htc/sunny2/view/SView;
    :goto_0
    return-void

    .line 2160
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2161
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    goto :goto_0
.end method

.method public queryItemImageTexture(I)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "itemIndex"

    .prologue
    const/4 v0, 0x0

    .line 1410
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_0

    .line 1419
    :goto_0
    return-object v0

    .line 1415
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 1418
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryItemImageTexture(II)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "itemIndex"
    .parameter "quality"

    .prologue
    const/4 v0, 0x0

    .line 1425
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_0

    .line 1435
    :goto_0
    return-object v0

    .line 1431
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 1434
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumePreparator(Z)V
    .locals 1
    .parameter "resume"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->resumePreparator()V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/Preparator;->pausePreparator()V

    goto :goto_0
.end method

.method public setExtremeQualityItemIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1596
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_0

    .line 1607
    :goto_0
    return v0

    .line 1600
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setExtremeQualityItemIndex(I)Z

    .line 1604
    const/4 v0, 0x1

    goto :goto_0

    .line 1606
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFullscreenListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 354
    return-void
.end method

.method public setIsAfterEdit(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2166
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 2167
    return-void
.end method

.method public setIsOnlineTagEditor(Z)V
    .locals 0
    .parameter "isOnlineTagEditor"

    .prologue
    .line 1636
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 1637
    return-void
.end method

.method public setIsUploadEditor(Z)V
    .locals 0
    .parameter "isUploadEditor"

    .prologue
    .line 1631
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 1632
    return-void
.end method

.method public setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 646
    return-void
.end method

.method public setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V
    .locals 2
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->set(Lcom/htc/sunny2/IMediaList;I)V

    .line 652
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->requestLayout()V

    .line 654
    return-void

    .line 652
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;I)V

    .line 635
    return-void
.end method

.method public setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;I)V
    .locals 1
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 640
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->checkSetMediaListComplete_block()V

    .line 641
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 1586
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    .line 359
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V
    .locals 0
    .parameter "mOnScrollListener"

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 1591
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onFullScreenViewAlignEnd()V

    .line 1592
    return-void
.end method

.method public setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V
    .locals 2
    .parameter "index"
    .parameter "bmp"
    .parameter "originX"
    .parameter "originY"
    .parameter "sizeX"
    .parameter "sizeY"
    .parameter "rotate"
    .parameter "paintSetListener"

    .prologue
    .line 1868
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_0

    .line 1884
    :goto_0
    return-void

    .line 1873
    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 1874
    .local v0, itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;
    iput p1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->index:I

    .line 1875
    iput-object p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    .line 1876
    iput p3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    .line 1877
    iput p4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    .line 1878
    iput p5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    .line 1879
    iput p6, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    .line 1880
    iput p7, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->rotate:I

    .line 1881
    iput-object p8, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    .line 1883
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setPaintLayerBMPIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)Z

    goto :goto_0
.end method

.method public setPaintLayerTransparencyIHT(II)V
    .locals 1
    .parameter "index"
    .parameter "transparency"

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_0

    .line 1892
    :goto_0
    return-void

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setPaintLayerTransparencyIHT(II)Z

    goto :goto_0
.end method

.method public setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 2
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 756
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 757
    return-void
.end method

.method public setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V
    .locals 2
    .parameter "preparator"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/RenderThread;->pushPreparationIHT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 336
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    .line 338
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V

    .line 341
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsUploadEditor(Z)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1045
    :cond_0
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSelection NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :cond_1
    :goto_0
    return-void

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->ObtainSetSelection(I)Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1051
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSelection NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSideBySideItemIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1613
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    if-nez v1, :cond_0

    .line 1615
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex]mThumbPreparator is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    :goto_0
    return v0

    .line 1618
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1620
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex]mThumbPreparator.setSideBySideItemIndex..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunny2/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setSideBySideItemIndex(I)Z

    move-result v0

    goto :goto_0

    .line 1624
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewItem(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)V
    .locals 0
    .parameter "fullScreenViewItem"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 751
    return-void
.end method

.method public setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 1778
    return-void
.end method

.method public showDRMIndicator(Z)V
    .locals 2
    .parameter "bForce"

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2196
    return-void
.end method

.method public showFullFilmView()V
    .locals 2

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2184
    return-void
.end method

.method switchViewState(IZ)V
    .locals 4
    .parameter "state"
    .parameter "changeVisibility"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 304
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_4

    .line 306
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 307
    if-eqz p2, :cond_0

    .line 309
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setVisible(Z)V

    .line 310
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setVisibility(Z)V

    .line 321
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;->onViewStateChange(I)V

    .line 325
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 309
    goto :goto_0

    :cond_3
    move v1, v2

    .line 310
    goto :goto_1

    .line 315
    :cond_4
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 316
    if-eqz p2, :cond_0

    .line 318
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v3, v1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setVisibility(Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public unzoomCenter()V
    .locals 3

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1836
    const-string v0, "FullFilmView"

    const-string v1, "RenderThread is null or not ready"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1839
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;

    const-string v2, "unzoomCenter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1850
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unzoomCenter] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
