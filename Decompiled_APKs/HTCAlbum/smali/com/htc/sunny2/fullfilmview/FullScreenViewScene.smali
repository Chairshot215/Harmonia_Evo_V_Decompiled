.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.super Ljava/lang/Object;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    }
.end annotation


# static fields
.field private static final ANIM_ALIGN:Ljava/lang/String; = "Align"

.field public static final ANIM_FULL_TO_FILM_ENTER_VELOCITY:F = 900.0f

.field private static final ANIM_TO_FILMSTRIP_DISTANCE_THRESHOLD:F = 20.0f

.field private static final ANIM_TO_FILMSTRIP_TIME_THRESHOLD:I = 0x5dc

.field private static final FRAMES_ALIGNING:I = 0x1

.field private static final FRAMES_COUNT:I = 0x3

.field private static final FRAMES_IDLE:I = 0x0

.field private static final LTAG:Ljava/lang/String; = "FSVScene"

.field private static final PANNING_ACTION_NAME:Ljava/lang/String; = "FullScreenPan"

.field private static final PAN_RECORDS_COUNT:I = 0x3


# instance fields
.field private centerFrameIndex:I

.field private currentItemIndex:I

.field private frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field private fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field private imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private isCurrentIndexSet:Z

.field private itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

.field private itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

.field private itemInterval:I

.field private itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

.field private itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

.field private itemsCount:I

.field private lastStatus:I

.field private mInTransition:Z

.field private mIsPanning:Z

.field protected mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

.field private mediaList:Lcom/htc/sunny2/IMediaList;

.field private panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

.field private panRecordIndexToAdd:I

.field private panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

.field private pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

.field private recordPanBegin:Z

.field private renderThread:Lcom/htc/sunny2/RenderThread;

.field protected scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

.field private scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private sunnyEnvironment:I

.field private viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

.field private viewportHeight:I

.field private viewportWidth:I

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 6
    .parameter "fullFilmView3D"

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 224
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    .line 229
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 231
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 233
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 234
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 235
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 237
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 238
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 239
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    .line 243
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 244
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 246
    new-array v1, v5, [Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 247
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 249
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 251
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 253
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 254
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 256
    new-array v1, v5, [Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    .line 257
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    .line 258
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    .line 260
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    .line 262
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    .line 263
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    .line 264
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    .line 266
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    .line 267
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 268
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 269
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    .line 275
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 276
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    .line 278
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 280
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v2, v3, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    aput-object v2, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 285
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    invoke-direct {v2, p0, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;)V

    aput-object v2, v1, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_1
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    const-string v2, "PinchZoomAnimator"

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    .line 289
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    const-string v2, "ItemClickInfoGetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    .line 290
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    const-string v2, "ItemInfoGetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    .line 291
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    const-string v2, "TtemPaintLayerTransparencySetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    .line 293
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    const-string v2, "FullScreenPan"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/IMediaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V

    return-void
.end method

.method static synthetic access$1602(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doFramesOffset(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    return v0
.end method

.method private doCurrentFrameHoming()V
    .locals 3

    .prologue
    .line 1138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1140
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v0, v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    if-eqz v1, :cond_2

    .line 1148
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;->onFullScreenViewAlignEnd()V

    .line 1151
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v1, :cond_3

    .line 1153
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    if-eqz v1, :cond_3

    .line 1156
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onEnterImageIRT(I)V

    .line 1164
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 1165
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sendInfoToImagePanAndZoomListener()V

    .line 1166
    return-void
.end method

.method private doCurrentFrameLeaving()V
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 1176
    return-void
.end method

.method private doFramesOffset(F)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v3, 0x0

    .line 1182
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    .line 1183
    .local v0, centerFrameX:F
    add-float/2addr v0, p1

    .line 1190
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0, v3, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 1192
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    const-string v1, "FSVScene"

    const-string v2, "doFramesOffset() NG - layoutSceneAndBindItem"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_0
    return-void
.end method

.method private getFrameIndexFromItemIndex(I)I
    .locals 6
    .parameter "itemIndex"

    .prologue
    const/4 v5, 0x3

    const/4 v3, -0x1

    .line 1435
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v1, p1, v4

    .line 1436
    .local v1, indexDiffFromCenter:I
    const/4 v2, 0x1

    .line 1437
    .local v2, sideFramesCount:I
    if-gt v1, v2, :cond_0

    neg-int v4, v2

    if-ge v1, v4, :cond_2

    :cond_0
    move v0, v3

    .line 1454
    :cond_1
    :goto_0
    return v0

    .line 1442
    :cond_2
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v0, v4, v1

    .line 1443
    .local v0, frameIndex:I
    if-gez v0, :cond_5

    .line 1444
    add-int/lit8 v0, v0, 0x3

    .line 1448
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    if-lt v0, v5, :cond_1

    .line 1450
    :cond_4
    const-string v4, "FSVScene"

    const-string v5, "getFrameIndexFromItemIndex NG - index error"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 1451
    goto :goto_0

    .line 1445
    :cond_5
    if-lt v0, v5, :cond_3

    .line 1446
    add-int/lit8 v0, v0, -0x3

    goto :goto_1
.end method

.method private getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 2

    .prologue
    .line 1374
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v0, v1, -0x1

    .line 1375
    .local v0, lastPanRecordIndex:I
    if-gez v0, :cond_0

    .line 1377
    const/4 v0, 0x2

    .line 1379
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getLastPanVelocity()F
    .locals 2

    .prologue
    .line 1425
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v0, v1, -0x1

    .line 1426
    .local v0, lastPan:I
    if-gez v0, :cond_0

    .line 1427
    const/4 v0, 0x2

    .line 1430
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    return v1
.end method

.method private layoutSceneAndBindItem()Z
    .locals 12

    .prologue
    .line 1042
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    if-nez v9, :cond_1

    .line 1044
    :cond_0
    const-string v9, "FSVScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - render not setup"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const/4 v9, 0x0

    .line 1133
    :goto_0
    return v9

    .line 1047
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v9}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v9

    if-nez v9, :cond_2

    .line 1049
    const-string v9, "FSVScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - scene not setup"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const/4 v9, 0x0

    goto :goto_0

    .line 1052
    :cond_2
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    if-nez v9, :cond_4

    .line 1054
    :cond_3
    const-string v9, "FSVScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - zero viewport"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const/4 v9, 0x0

    goto :goto_0

    .line 1057
    :cond_4
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v9, :cond_5

    .line 1059
    const-string v9, "FSVScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - zero mediaList"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const/4 v9, 0x0

    goto :goto_0

    .line 1062
    :cond_5
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_7

    .line 1064
    :cond_6
    const-string v9, "FSVScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutSceneAndBindItem() NG - error centerFrameIndex "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const/4 v9, 0x0

    goto :goto_0

    .line 1068
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    .line 1070
    .local v0, centerFrameX:F
    const/4 v8, 0x1

    .line 1072
    .local v8, sideFramesCount:I
    neg-int v4, v8

    .local v4, i:I
    :goto_1
    if-gt v4, v8, :cond_10

    .line 1076
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    add-int v5, v9, v4

    .line 1077
    .local v5, itemIndex:I
    if-ltz v5, :cond_b

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v5, v9, :cond_b

    const/4 v6, 0x1

    .line 1079
    .local v6, itemIndexValid:Z
    :goto_2
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v1, v9, v4

    .line 1080
    .local v1, frameIndex:I
    if-gez v1, :cond_8

    .line 1082
    add-int/lit8 v1, v1, 0x3

    .line 1084
    :cond_8
    const/4 v9, 0x3

    if-lt v1, v9, :cond_9

    .line 1086
    add-int/lit8 v1, v1, -0x3

    .line 1088
    :cond_9
    if-ltz v1, :cond_a

    const/4 v9, 0x3

    if-lt v1, v9, :cond_c

    .line 1090
    :cond_a
    const-string v9, "FSVScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutSceneAndBindItem() NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1077
    .end local v1           #frameIndex:I
    .end local v6           #itemIndexValid:Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 1094
    .restart local v1       #frameIndex:I
    .restart local v6       #itemIndexValid:Z
    :cond_c
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v2

    .line 1100
    .local v2, frameItemIndex:I
    if-eqz v6, :cond_f

    .line 1102
    if-eq v2, v5, :cond_e

    .line 1104
    const/4 v7, 0x0

    .line 1105
    .local v7, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v9, :cond_d

    .line 1107
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v9, v5}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v7

    .line 1112
    :cond_d
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9, v5, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    .line 1125
    .end local v7           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_e
    :goto_4
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v4

    int-to-float v9, v9

    add-float v3, v0, v9

    .line 1127
    .local v3, framePositionX:F
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    goto :goto_3

    .line 1117
    .end local v3           #framePositionX:F
    :cond_f
    const/4 v9, -0x1

    if-eq v2, v9, :cond_e

    .line 1119
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_4

    .line 1133
    .end local v1           #frameIndex:I
    .end local v2           #frameItemIndex:I
    .end local v5           #itemIndex:I
    .end local v6           #itemIndexValid:Z
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private recordPanBegin(IF)V
    .locals 3
    .parameter "currentItemIndex"
    .parameter "currentFramePosition"

    .prologue
    .line 1341
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v0, v1, v2

    .line 1346
    .local v0, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    .line 1347
    iput p1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    .line 1348
    iput p2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    .line 1349
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    .line 1350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    goto :goto_0
.end method

.method private recordPanEnd(IF)V
    .locals 7
    .parameter "currentItemIndex"
    .parameter "currentFramePosition"

    .prologue
    const/4 v6, 0x0

    .line 1355
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    if-nez v1, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v0, v1, v2

    .line 1359
    .local v0, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    sub-float v1, p2, v1

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    sub-int/2addr v2, p1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    .line 1361
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    .line 1363
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    .line 1365
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    .line 1366
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1368
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    goto :goto_0
.end method

.method private shouldAnimateToFilmstripView()Z
    .locals 12

    .prologue
    const/4 v11, -0x3

    const/4 v10, 0x3

    const/4 v5, 0x0

    .line 1384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1386
    .local v0, currentTime:J
    const/4 v2, 0x0

    .line 1388
    .local v2, directionNote:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v10, :cond_3

    .line 1390
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v4, v6, v3

    .line 1391
    .local v4, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/high16 v7, 0x41a0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iget v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/high16 v7, -0x3e60

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1420
    .end local v4           #record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_0
    :goto_1
    return v5

    .line 1394
    .restart local v4       #record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_1
    iget-wide v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    const-wide/16 v8, 0x5dc

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 1397
    iget-boolean v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    if-eqz v6, :cond_0

    .line 1400
    iget v6, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 1401
    add-int/lit8 v2, v2, 0x1

    .line 1388
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1403
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1406
    .end local v4           #record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_3
    if-eq v2, v10, :cond_4

    if-ne v2, v11, :cond_0

    .line 1411
    :cond_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-nez v6, :cond_5

    if-eq v2, v10, :cond_0

    :cond_5
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    if-eq v2, v11, :cond_0

    .line 1416
    :cond_6
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x4461

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 1420
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bindMediaList(Lcom/htc/sunny2/IMediaList;)Z
    .locals 4
    .parameter "mediaList"

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 570
    if-nez p1, :cond_0

    .line 585
    :goto_0
    return v0

    .line 575
    :cond_0
    const-string v1, "FSVScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindMediaList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 578
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 579
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 580
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 581
    const-string v0, "FSVScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][FullScreenViewScene][bindMediaList]isCurrentIndexSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIRT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 585
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearRenderingEnvironment()V
    .locals 3

    .prologue
    .line 311
    const-string v1, "FSVScene"

    const-string v2, "clearRenderingEnvironment()"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 314
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 316
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->clearRenderingEnvironment()V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method public clearScene(Lcom/htc/sunny2/SceneNode;)V
    .locals 5
    .parameter "parentSceneNode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 527
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    .line 530
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    .line 536
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 538
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 540
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 541
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunny2/SceneNode;)V

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v1, :cond_3

    .line 548
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 550
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v1}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 551
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 554
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    if-eqz v1, :cond_4

    .line 556
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->freeShareResources()V

    .line 557
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 560
    :cond_4
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 561
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 562
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 564
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 565
    return-void
.end method

.method doCenterAlign()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1314
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    .line 1316
    .local v4, centerFramePositionX:F
    cmpl-float v0, v4, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    .line 1318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 1319
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;

    const-string v3, "Align"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;FF)V

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    cmpl-float v0, v4, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;->onFullScreenViewAlignEnd()V

    .line 1326
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_3

    .line 1328
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Align"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    .line 1332
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onEnterImageIRT(I)V

    .line 1334
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    goto :goto_0
.end method

.method public getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 3
    .parameter "itemInfo"

    .prologue
    const/4 v0, 0x0

    .line 768
    if-nez p1, :cond_1

    .line 781
    :cond_0
    :goto_0
    return v0

    .line 771
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v2, :cond_0

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 5
    .parameter "itemInfo"

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 741
    if-nez p1, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v0

    .line 744
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt v1, v2, :cond_2

    .line 746
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 750
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 752
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 756
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v1, v2, :cond_4

    .line 758
    const-string v1, "FSVScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentItemInfoIHT NG - index error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 762
    :cond_4
    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInOutAnimation(Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;)Lcom/htc/sunny2/RenderThreadAction;
    .locals 20
    .parameter "bundle"
    .parameter "listener"
    .parameter "viewRoot"

    .prologue
    .line 1739
    if-nez p1, :cond_2

    .line 1740
    const-string v3, "FSVScene"

    const-string v4, "Bundle is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 1742
    :cond_0
    if-eqz p3, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1743
    :cond_1
    const/4 v2, 0x0

    .line 1785
    :goto_0
    return-object v2

    .line 1746
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v9, v3, v4

    .line 1747
    .local v9, frame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    if-nez v9, :cond_5

    .line 1748
    const-string v3, "FSVScene"

    const-string v4, "[FullScreenViewScene][animationInIRT] Fullscreen frame is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 1750
    :cond_3
    if-eqz p3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1751
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1754
    :cond_5
    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v6

    .line 1755
    .local v6, item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    if-nez v6, :cond_8

    .line 1756
    const-string v3, "FSVScene"

    const-string v4, "[FullScreenViewScene][animationInIRT] Fullscreen item is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 1758
    :cond_6
    if-eqz p3, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1759
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 1762
    :cond_8
    const-string v3, "TO_WIDTH"

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v17

    .line 1763
    .local v17, toWidth:F
    const-string v3, "TO_HEIGHT"

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v16

    .line 1764
    .local v16, toHeight:F
    const-string v3, "FROM_WIDTH"

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v13

    .line 1765
    .local v13, fromWidth:F
    const-string v3, "FROM_HEIGHT"

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v12

    .line 1766
    .local v12, fromHeight:F
    const-string v3, "FROM_X"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1767
    .local v14, fromX:I
    const-string v3, "FROM_Y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1768
    .local v15, fromY:I
    const-string v3, "TO_X"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1769
    .local v18, toX:I
    const-string v3, "TO_Y"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 1770
    .local v19, toY:I
    const/4 v10, 0x0

    .line 1771
    .local v10, isIn:Z
    const-string v3, "ANIMATION_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1779
    :goto_1
    :pswitch_0
    const-string v3, "DURATION"

    const/16 v4, 0x12c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1780
    .local v11, duration:I
    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;

    const-string v5, "FullscreenviewScene"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;ZI)V

    .line 1781
    .local v2, animation:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v13, v12, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->setScale(FFFF)V

    .line 1782
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v14, v15, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->setTransition(IIII)V

    goto/16 :goto_0

    .line 1773
    .end local v2           #animation:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;
    .end local v11           #duration:I
    :pswitch_1
    const/4 v10, 0x1

    .line 1774
    goto :goto_1

    .line 1776
    :pswitch_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1771
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getItemClickInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;)Z
    .locals 5
    .parameter "itemClickInfo"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 702
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v0

    .line 707
    :cond_1
    iput v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    .line 708
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object p1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 710
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    goto :goto_0

    .line 715
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 717
    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1482
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 3

    .prologue
    .line 2009
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->hideDRMIndicator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2015
    :goto_0
    return-void

    .line 2011
    :catch_0
    move-exception v0

    .line 2013
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FSVScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][hideDRMIndicator] NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isInTransition()Z
    .locals 1

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    return v0
.end method

.method isZoomed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1696
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1698
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1700
    :cond_0
    return v0
.end method

.method public notifiedItemTextureExpired(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 694
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->notifiedItemTextureExpired(I)V

    goto :goto_0
.end method

.method public notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V
    .locals 2
    .parameter "itemIndex"
    .parameter "texture"

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 683
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 689
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->notifiedItemTextureReady(ILcom/htc/sunny2/Texture;)V

    goto :goto_0
.end method

.method public notifyMediaDataChangeIRTLock(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 1464
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1465
    .local v0, frameIndex:I
    if-gez v0, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    const/4 v1, 0x0

    .line 1472
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_0

    .line 1476
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1477
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    goto :goto_0
.end method

.method onChildFrameZoomBegin(F)V
    .locals 3
    .parameter "zoomFactor"

    .prologue
    .line 1669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 1670
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1672
    :cond_0
    return-void
.end method

.method onChildFrameZoomEnd(F)V
    .locals 4
    .parameter "zoomFactor"

    .prologue
    const/4 v3, 0x0

    .line 1681
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 1683
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V

    .line 1684
    return-void
.end method

.method onChildFrameZooming(F)V
    .locals 0
    .parameter "zoomFactor"

    .prologue
    .line 1677
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 990
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt v0, v1, :cond_1

    .line 992
    :cond_0
    const-string v0, "FSVScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap() NG - error idnex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :goto_0
    return v3

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setExtremeQualityItemIndex(I)Z

    .line 997
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onDoubleTap(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 792
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->cancelFling()V

    .line 798
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 799
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 801
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin(IF)V

    .line 803
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Align"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    .line 807
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 984
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 985
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 986
    return-void
.end method

.method public onLayout(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 666
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 667
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 669
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setFrameSize(FF)V

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 676
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V

    .line 678
    return-void
.end method

.method public onMediaItemRefreshIRT(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x3

    .line 1537
    move v1, p1

    .line 1538
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    .line 1540
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1541
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1543
    add-int/lit8 v0, v0, 0x3

    .line 1545
    :cond_0
    if-lt v0, v7, :cond_1

    .line 1547
    add-int/lit8 v0, v0, -0x3

    .line 1549
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v7, :cond_4

    .line 1551
    :cond_2
    const-string v4, "FSVScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layoutSceneAndBindItem() NG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :goto_1
    return-void

    .line 1538
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1555
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_6

    .line 1557
    const/4 v3, 0x0

    .line 1558
    .local v3, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_5

    .line 1560
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 1563
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    goto :goto_1

    .line 1567
    .end local v3           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_1
.end method

.method public onMediaItemRefreshSizeIRT(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x3

    .line 1574
    move v1, p1

    .line 1575
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    .line 1577
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1578
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1580
    add-int/lit8 v0, v0, 0x3

    .line 1582
    :cond_0
    if-lt v0, v7, :cond_1

    .line 1584
    add-int/lit8 v0, v0, -0x3

    .line 1586
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v7, :cond_4

    .line 1588
    :cond_2
    const-string v4, "FSVScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaItemRefreshSizeIRT() NG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    :goto_1
    return-void

    .line 1575
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1592
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_6

    .line 1594
    const/4 v3, 0x0

    .line 1595
    .local v3, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_5

    .line 1597
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    .line 1600
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->refreshMediaSize(ILcom/htc/sunny2/IMediaData;)V

    goto :goto_1

    .line 1604
    .end local v3           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_1
.end method

.method public onMediaItemSetConsumeRightExpiredIRT(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x3

    .line 1639
    move v1, p1

    .line 1640
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v3, :cond_3

    const/4 v2, 0x1

    .line 1642
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1643
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1645
    add-int/lit8 v0, v0, 0x3

    .line 1647
    :cond_0
    if-lt v0, v6, :cond_1

    .line 1649
    add-int/lit8 v0, v0, -0x3

    .line 1651
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v6, :cond_4

    .line 1653
    :cond_2
    const-string v3, "FSVScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaItemSetConsumeRightExpiredIRT() NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :goto_1
    return-void

    .line 1640
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1657
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ne v0, v3, :cond_5

    .line 1659
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setMediaItemConsumeRightExpired(I)V

    goto :goto_1

    .line 1663
    :cond_5
    const-string v3, "FSVScene"

    const-string v4, "onMediaItemSetConsumeRightExpiredIRT() NG, item index is invalid or item is not center frame"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMediaItemSetConsumeRightFlagIRT(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x3

    .line 1609
    move v1, p1

    .line 1610
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v3, :cond_3

    const/4 v2, 0x1

    .line 1612
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 1613
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1615
    add-int/lit8 v0, v0, 0x3

    .line 1617
    :cond_0
    if-lt v0, v6, :cond_1

    .line 1619
    add-int/lit8 v0, v0, -0x3

    .line 1621
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v6, :cond_4

    .line 1623
    :cond_2
    const-string v3, "FSVScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaItemConsumeRightIRT() NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    :goto_1
    return-void

    .line 1610
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1627
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ne v0, v3, :cond_5

    .line 1629
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setMediaItemConsumeRightFlag(I)V

    goto :goto_1

    .line 1633
    :cond_5
    const-string v3, "FSVScene"

    const-string v4, "onMediaItemConsumeRightIRT() NG, item index is invalid or item is not center frame"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setExtremeQualityItemIndex(I)Z

    .line 1028
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleIRT(Landroid/view/ScaleGestureDetector;)Z

    .line 1029
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    .line 1003
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v0, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return v3

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isItemZoomable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isOnBounceBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleBeginIRT(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V

    .line 1035
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-nez v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panBegin()V

    .line 955
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 956
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchMove(I)V

    .line 961
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchMove(I)V

    .line 963
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isOnBounceBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_4

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "FullScreenPan"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_4

    .line 972
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 976
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    invoke-interface {v0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;->onFullScreenViewScrollIRT(F)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 948
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 21
    .parameter "e"

    .prologue
    .line 811
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 813
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 818
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchUp(I)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchUp(I)V

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanEnd(IF)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    .line 826
    .local v3, centerFrameX:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 828
    .local v11, newCurrentItemIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v15, v0

    .line 829
    .local v15, span:F
    const/high16 v6, 0x4120

    .line 830
    .local v6, frameChangeThresholdWhenAligning:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    const/high16 v7, 0x4270

    .line 836
    .local v7, frameChangeThresholdWhenIdle:F
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v17

    move-object/from16 v0, v17

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    .line 837
    .local v12, panDistance:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    move-wide/from16 v19, v0

    sub-long v13, v17, v19

    .line 842
    .local v13, panTime:J
    const/4 v4, 0x0

    .line 843
    .local v4, criteria:F
    const/16 v16, 0x0

    .line 845
    .local v16, threshold:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const-wide/16 v17, 0x1f4

    cmp-long v17, v13, v17

    if-lez v17, :cond_5

    .line 849
    :cond_1
    const/16 v17, 0x0

    cmpl-float v17, v12, v17

    if-eqz v17, :cond_2

    .line 851
    move v4, v3

    .line 852
    move/from16 v16, v7

    .line 862
    :cond_2
    :goto_1
    cmpl-float v17, v4, v16

    if-lez v17, :cond_7

    .line 864
    :goto_2
    cmpl-float v17, v4, v16

    if-lez v17, :cond_3

    .line 866
    if-gtz v11, :cond_6

    .line 885
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    add-int v10, v17, v18

    .line 886
    .local v10, newCenterFrameIndex:I
    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v10, v0, :cond_8

    .line 888
    add-int/lit8 v10, v10, -0x3

    goto :goto_3

    .line 830
    .end local v4           #criteria:F
    .end local v7           #frameChangeThresholdWhenIdle:F
    .end local v10           #newCenterFrameIndex:I
    .end local v12           #panDistance:F
    .end local v13           #panTime:J
    .end local v16           #threshold:F
    :cond_4
    const/high16 v7, 0x41f0

    goto :goto_0

    .line 855
    .restart local v4       #criteria:F
    .restart local v7       #frameChangeThresholdWhenIdle:F
    .restart local v12       #panDistance:F
    .restart local v13       #panTime:J
    .restart local v16       #threshold:F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 858
    move v4, v12

    .line 859
    move/from16 v16, v6

    goto :goto_1

    .line 869
    :cond_6
    add-int/lit8 v11, v11, -0x1

    .line 870
    sub-float/2addr v4, v15

    goto :goto_2

    .line 873
    :cond_7
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v4, v17

    if-gez v17, :cond_3

    .line 875
    :goto_4
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v4, v17

    if-gez v17, :cond_3

    .line 877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    .line 880
    add-int/lit8 v11, v11, 0x1

    .line 881
    add-float/2addr v4, v15

    goto :goto_4

    .line 890
    .restart local v10       #newCenterFrameIndex:I
    :cond_8
    :goto_5
    if-gez v10, :cond_9

    .line 892
    add-int/lit8 v10, v10, 0x3

    goto :goto_5

    .line 896
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_d

    const/4 v5, 0x1

    .line 897
    .local v5, currentItemIndexChanged:Z
    :goto_6
    if-eqz v5, :cond_c

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 906
    :cond_a
    const/4 v9, 0x0

    .line 907
    .local v9, mediaData:Lcom/htc/sunny2/IMediaData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    .line 911
    if-eqz v9, :cond_b

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    .line 914
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 916
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 917
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 922
    .end local v9           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v17

    move-object/from16 v0, v17

    iput-boolean v5, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v19

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v20

    invoke-virtual/range {v17 .. v20}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    .line 944
    :goto_7
    return-void

    .line 896
    .end local v5           #currentItemIndexChanged:Z
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 930
    .restart local v5       #currentItemIndexChanged:Z
    :cond_e
    const/4 v8, 0x0

    .local v8, i:I
    :goto_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_10

    .line 932
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v8, v0, :cond_f

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 930
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 937
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    goto :goto_7
.end method

.method public rebindVisibleItems()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 1487
    const/4 v6, 0x1

    .line 1488
    .local v6, sideFramesCount:I
    neg-int v2, v6

    .local v2, i:I
    :goto_0
    if-gt v2, v6, :cond_8

    .line 1491
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    add-int v3, v7, v2

    .line 1492
    .local v3, itemIndex:I
    if-ltz v3, :cond_4

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v3, v7, :cond_4

    const/4 v4, 0x1

    .line 1494
    .local v4, itemIndexValid:Z
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v0, v7, v2

    .line 1495
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 1497
    add-int/lit8 v0, v0, 0x3

    .line 1499
    :cond_0
    if-lt v0, v10, :cond_1

    .line 1501
    add-int/lit8 v0, v0, -0x3

    .line 1503
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v10, :cond_5

    .line 1505
    :cond_2
    const-string v7, "FSVScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutSceneAndBindItem() NG "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1492
    .end local v0           #frameIndex:I
    .end local v4           #itemIndexValid:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1509
    .restart local v0       #frameIndex:I
    .restart local v4       #itemIndexValid:Z
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v1

    .line 1512
    .local v1, frameItemIndex:I
    if-eqz v4, :cond_7

    .line 1514
    if-eq v1, v3, :cond_3

    .line 1516
    const/4 v5, 0x0

    .line 1517
    .local v5, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v7, :cond_6

    .line 1519
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v7, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    .line 1522
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunny2/IMediaData;)Z

    goto :goto_2

    .line 1527
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_7
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 1529
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_2

    .line 1533
    .end local v0           #frameIndex:I
    .end local v1           #frameItemIndex:I
    .end local v3           #itemIndex:I
    .end local v4           #itemIndexValid:Z
    :cond_8
    return-void
.end method

.method public setCurrentItemIndex(I)Z
    .locals 4
    .parameter "currentItemIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 631
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 632
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 634
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 636
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 638
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 640
    return v3
.end method

.method public setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 3
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method public setOnFullScreenViewAlignEndListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    .line 1460
    return-void
.end method

.method public setPaintLayerBMPIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)Z
    .locals 3
    .parameter "itemPaintLayerInfo"

    .prologue
    const/4 v1, 0x0

    .line 1705
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v2, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return v1

    .line 1710
    :cond_1
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;

    const-string v2, "ItemPaintLayerBMPSetter"

    invoke-direct {v0, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1711
    .local v0, itemPaintLayerBMPSetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;
    iput-object p1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    .line 1713
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1717
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPaintLayerTransparencyIHT(II)Z
    .locals 3
    .parameter "index"
    .parameter "transparency"

    .prologue
    const/4 v0, 0x0

    .line 1722
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    if-nez v1, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return v0

    .line 1727
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput p1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->index:I

    .line 1728
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput p2, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->transparency:I

    .line 1730
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1734
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 652
    const-string v0, "FSVScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    .line 655
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 660
    :cond_0
    return-void
.end method

.method public setupImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 646
    return-void
.end method

.method public setupRenderingEnvironment(Lcom/htc/sunny2/RenderThread;I)V
    .locals 4
    .parameter "renderThread"
    .parameter "sunnyEnvironment"

    .prologue
    .line 298
    const-string v1, "FSVScene"

    const-string v2, "setupRenderingEnvironment()"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 301
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 303
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setupRenderingEnvironment(Lcom/htc/sunny2/RenderThread;I)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method

.method public setupScene(Lcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z
    .locals 10
    .parameter "parentSceneNode"
    .parameter "itemPrototype"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "itemInterval"

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 336
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 338
    :cond_0
    const-string v2, "FSVScene"

    const-string v3, "setupScene() NG - zero param"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_0
    return v1

    .line 344
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunny2/SceneNode;)V

    .line 348
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 349
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 350
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 352
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 356
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    iput v4, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    .line 357
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->allocateShareResources()V

    .line 361
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 362
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v3

    if-nez v3, :cond_2

    .line 364
    const-string v2, "FSVScene"

    const-string v3, "setupScene() NG - failed to create scene node"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunny2/SceneNode;)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 372
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 376
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_4

    .line 378
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunny2/SceneNode;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->addToScene(IILcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 380
    const-string v2, "FSVScene"

    const-string v3, "setupScene() NG - failed to create frame"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunny2/SceneNode;)V

    goto :goto_0

    .line 376
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_5

    .line 390
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8, v8, v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 395
    :cond_5
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 399
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 401
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 402
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 403
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    .line 468
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    move v1, v2

    .line 520
    goto/16 :goto_0
.end method

.method public showDRMIndicator(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 1997
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->showDRMIndicator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    :goto_0
    return-void

    .line 1999
    :catch_0
    move-exception v0

    .line 2001
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FSVScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][showDRMIndicator] NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindMediaList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 610
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v1, :cond_0

    .line 627
    :goto_0
    return-void

    .line 615
    :cond_0
    const-string v1, "FSVScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindMediaList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 622
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 623
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 624
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 625
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 626
    const-string v1, "FSVScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][FullScreenViewScene][unbindMediaList]isCurrentIndexSet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method unzoomCenter()V
    .locals 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1692
    :cond_0
    return-void
.end method
