.class public Lcom/google/android/maps/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MapView$LayoutParams;,
        Lcom/google/android/maps/MapView$Repainter;,
        Lcom/google/android/maps/MapView$ReticleDrawMode;
    }
.end annotation


# static fields
.field private static final KEY_CENTER_LATITUDE:Ljava/lang/String;

.field private static final KEY_CENTER_LONGITUDE:Ljava/lang/String;

.field private static final KEY_ZOOM_DISPLAYED:Ljava/lang/String;

.field private static final KEY_ZOOM_LEVEL:Ljava/lang/String;

.field private static final ZOOM_CONTROLS_TIMEOUT:J


# instance fields
.field private mBuiltInZoomControlsEnabled:Z

.field private mController:Lcom/google/android/maps/MapController;

.field private mConverter:Lcom/google/android/maps/PixelConverter;

.field private final mDrawer:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

.field private mFakeStreetViewEnabled:Z

.field private mGestureDetector:Lcom/google/android/maps/GestureDetector;

.field private final mGoogleLogo:Landroid/graphics/drawable/Drawable;

.field private final mGoogleLogoHeight:I

.field private final mGoogleLogoWidth:I

.field private mHandler:Landroid/os/Handler;

.field final mKey:Ljava/lang/String;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

.field private mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

.field private mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

.field final mRepainter:Lcom/google/android/maps/MapView$Repainter;

.field private mReticle:Landroid/graphics/drawable/Drawable;

.field private mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScroller:Landroid/widget/Scroller;

.field private mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/widget/ZoomControls;

.field private mZoomHelper:Lcom/google/android/maps/ZoomHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zoomDisplayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".centerLatitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".centerLongitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zoomLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/maps/InternalR$attr;->mapViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    iput-object v1, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    iput-object v2, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    iput-object v2, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/google/android/maps/MapView$Repainter;

    invoke-direct {v1, p0}, Lcom/google/android/maps/MapView$Repainter;-><init>(Lcom/google/android/maps/MapView;)V

    iput-object v1, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    if-nez p4, :cond_0

    sget-object v1, Lcom/google/android/maps/InternalR$styleable;->MapView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$styleable;->MapView_apiKey:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You need to specify an API Key for each MapView.  See the MapView documentation for details."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p4, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapView;->setWillNotDraw(Z)V

    instance-of v1, p1, Lcom/google/android/maps/MapActivity;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/google/android/maps/MapActivity;

    invoke-virtual {v1, p0}, Lcom/google/android/maps/MapActivity;->setupMapView(Lcom/google/android/maps/MapView;)V

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/maps/InternalR$drawable;->maps_google_logo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogoWidth:I

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogoHeight:I

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MapViews can only be created inside instances of MapActivity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/google/android/maps/InternalR$attr;->mapViewStyle:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/MapController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    sget-wide v0, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/android/maps/MapView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/PixelConverter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/OverlayBundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/maps/MapView;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/maps/MapView;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/maps/MapView;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/maps/MapView;)Landroid/widget/ZoomControls;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/maps/MapView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/maps/MapView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private canZoomIn()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canZoomOut()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 3

    new-instance v0, Landroid/widget/ZoomButtonsController;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomSpeed(J)V

    new-instance v1, Lcom/google/android/maps/MapView$6;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/MapView$6;-><init>(Lcom/google/android/maps/MapView;Landroid/widget/ZoomButtonsController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    return-object v0
.end method

.method private createZoomControls()Landroid/widget/ZoomControls;
    .locals 3

    new-instance v0, Landroid/widget/ZoomControls;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    new-instance v1, Lcom/google/android/maps/MapView$4;

    invoke-direct {v1, p0}, Lcom/google/android/maps/MapView$4;-><init>(Lcom/google/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/maps/MapView$5;

    invoke-direct {v1, p0}, Lcom/google/android/maps/MapView$5;-><init>(Lcom/google/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private isLocationDisplayed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/google/android/maps/MapActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/google/android/maps/MapActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapActivity;->isLocationDisplayed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRouteDisplayed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/google/android/maps/MapActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/google/android/maps/MapActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapActivity;->isRouteDisplayed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateZoomControls()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public canCoverCenter()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Z)Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/maps/MapView$LayoutParams;

    return v0
.end method

.method cleanupMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->removeDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    iget-object v2, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    goto :goto_0
.end method

.method public displayZoomControls(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/maps/MapView;->mBuiltInZoomControlsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->show()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->requestFocus()Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method doZoom(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    move-result v0

    return v0
.end method

.method doZoom(ZII)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/google/android/maps/ZoomHelper;->doZoom(ZZII)Z

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method drawMap(Landroid/graphics/Canvas;Z)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->setCanvas(Landroid/graphics/Canvas;)V

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->isLocationDisplayed()Z

    move-result v3

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->isRouteDisplayed()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawMap(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZZZZ)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->generateDefaultLayoutParams()Lcom/google/android/maps/MapView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/maps/MapView$LayoutParams;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x2

    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, v2, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    const/16 v2, 0x11

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getController()Lcom/google/android/maps/MapController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    return-object v0
.end method

.method public getLatitudeSpan()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan()I

    move-result v0

    return v0
.end method

.method public getLongitudeSpan()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    const/4 v0, 0x2

    shr-int/lit8 v2, v2, 0x2

    :goto_0
    neg-int v5, v2

    invoke-virtual {v3, v5, v1, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v5

    invoke-virtual {v3, v2, v1, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    const v2, 0x15752a00

    add-int/2addr v1, v2

    :cond_0
    shl-int v0, v1, v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getMapCenter()Lcom/google/android/maps/GeoPoint;
    .locals 2

    new-instance v0, Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    move-result v0

    return v0
.end method

.method public final getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayBundle;->getOverlays()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Lcom/google/android/maps/Projection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    return-object v0
.end method

.method getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    return-object v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->createZoomControls()Landroid/widget/ZoomControls;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    new-instance v0, Lcom/google/android/maps/MapView$3;

    invoke-direct {v0, p0}, Lcom/google/android/maps/MapView$3;-><init>(Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSatellite()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isSatellite()Z

    move-result v0

    return v0
.end method

.method public isStreetView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/MapView;->mFakeStreetViewEnabled:Z

    return v0
.end method

.method public isTraffic()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->isShowTraffic()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/MapView;->onLayout(ZIIII)V

    :cond_0
    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getDrawingTime()J

    move-result-wide v7

    if-nez v6, :cond_5

    move v9, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/maps/ZoomHelper;->shouldDrawMap(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v9}, Lcom/google/android/maps/MapView;->drawMap(Landroid/graphics/Canvas;Z)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    or-int/2addr v6, v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    invoke-virtual {v0, p1, p0, v7, v8}, Lcom/google/android/maps/ZoomHelper;->onDraw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z

    move-result v0

    or-int/2addr v6, v0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0, p1, p0, v7, v8}, Lcom/google/android/maps/OverlayBundle;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z

    move-result v0

    or-int/2addr v6, v0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/maps/MapController;->stepAnimation(J)Z

    move-result v0

    or-int/2addr v6, v0

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->invalidate()V

    :cond_4
    return-void

    :cond_5
    move v9, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->stopPanning()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v1, p1, p2, p0}, Lcom/google/android/maps/OverlayBundle;->onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/android/maps/MapController;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v1, p1, p2, p0}, Lcom/google/android/maps/OverlayBundle;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/android/maps/MapController;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getChildCount()I

    move-result v4

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-virtual {p0, v6}, Lcom/google/android/maps/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/google/android/maps/MapView$LayoutParams;

    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    iget-object v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v12, v13, v8}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v12, v8, Landroid/graphics/Point;->x:I

    iget v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    add-int/2addr v12, v13

    iput v12, v8, Landroid/graphics/Point;->x:I

    iget v12, v8, Landroid/graphics/Point;->y:I

    iget v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    add-int/2addr v12, v13

    iput v12, v8, Landroid/graphics/Point;->y:I

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v10, v8, Landroid/graphics/Point;->x:I

    iget v11, v8, Landroid/graphics/Point;->y:I

    iget v0, v7, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    and-int/lit8 v12, v0, 0x7

    packed-switch v12, :pswitch_data_0

    :goto_2
    :pswitch_0
    and-int/lit8 v12, v0, 0x70

    sparse-switch v12, :sswitch_data_0

    :goto_3
    :sswitch_0
    iget v12, p0, Lcom/google/android/maps/MapView;->mPaddingLeft:I

    add-int v2, v12, v10

    iget v12, p0, Lcom/google/android/maps/MapView;->mPaddingTop:I

    add-int v3, v12, v11

    add-int v12, v2, v9

    add-int v13, v3, v5

    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    iput v12, v8, Landroid/graphics/Point;->x:I

    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    iput v12, v8, Landroid/graphics/Point;->y:I

    goto :goto_1

    :pswitch_1
    div-int/lit8 v12, v9, 0x2

    sub-int/2addr v10, v12

    goto :goto_2

    :pswitch_2
    add-int/lit8 v12, v9, -0x1

    sub-int/2addr v10, v12

    goto :goto_2

    :sswitch_1
    div-int/lit8 v12, v5, 0x2

    sub-int/2addr v11, v12

    goto :goto_3

    :sswitch_2
    add-int/lit8 v12, v5, -0x1

    sub-int/2addr v11, v12

    goto :goto_3

    :cond_2
    iget-object v12, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v12}, Lcom/google/android/maps/MapController;->clean()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/MapView;->measureChildren(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v2

    :goto_0
    invoke-static {v1, p1}, Lcom/google/android/maps/MapView;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/google/android/maps/MapView;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/MapView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/MapView;->mGoogleLogoHeight:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    iget v3, p0, Lcom/google/android/maps/MapView;->mGoogleLogoWidth:I

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resize(II)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->onMeasure()V

    return-void

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    if-eqz v0, :cond_3

    const v0, 0x7fffffff

    sget-object v2, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v0, :cond_2

    if-eq v3, v0, :cond_2

    iget-object v4, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    new-instance v5, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v5, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    :cond_2
    sget-object v2, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    :cond_3
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    iget-object v4, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v4, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resize(II)V

    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    div-int/lit8 v4, p1, 0x2

    iget-object v5, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    div-int/lit8 v4, p2, 0x2

    iget-object v5, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v2, v1, v4

    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int v0, v3, v4

    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v1, p1, p0}, Lcom/google/android/maps/OverlayBundle;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v3, 0x4120

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/maps/OverlayBundle;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/TrackballGestureDetector;->analyze(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    invoke-virtual {v0}, Lcom/google/android/maps/TrackballGestureDetector;->isScroll()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapController;->scrollByTrackball(II)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    invoke-virtual {v0}, Lcom/google/android/maps/TrackballGestureDetector;->isTap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget-object v2, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    invoke-virtual {v0, v1, p0}, Lcom/google/android/maps/OverlayBundle;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    goto :goto_1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->stopPanning()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public preLoad()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->preLoad(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    return-void
.end method

.method restoreMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setTileOverlayRenderer(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;)V

    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/maps/MapView;->mBuiltInZoomControlsEnabled:Z

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->createZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    :cond_0
    return-void
.end method

.method public setReticleDrawMode(Lcom/google/android/maps/MapView$ReticleDrawMode;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The ReticleDrawMode cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    return-void
.end method

.method public setSatellite(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isSatellite()Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapMode(I)V

    :goto_1
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapMode(I)V

    goto :goto_1
.end method

.method public setStreetView(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapView;->setTraffic(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/maps/MapView;->mFakeStreetViewEnabled:Z

    return-void
.end method

.method public setTraffic(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapView;->setStreetView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->setShowTraffic(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    return-void
.end method

.method setup(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    new-instance v0, Lcom/google/android/maps/PixelConverter;

    invoke-direct {v0, p1}, Lcom/google/android/maps/PixelConverter;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    new-instance v0, Lcom/google/android/maps/OverlayBundle;

    invoke-direct {v0}, Lcom/google/android/maps/OverlayBundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    new-instance v0, Lcom/google/android/maps/MapController;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-direct {v0, v1, p0}, Lcom/google/android/maps/MapController;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    new-instance v0, Lcom/google/android/maps/ZoomHelper;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/ZoomHelper;-><init>(Lcom/google/android/maps/MapView;Lcom/google/android/maps/MapController;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$drawable;->reticle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-virtual {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->setTrafficService(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V

    invoke-virtual {p0, p3}, Lcom/google/android/maps/MapView;->restoreMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/maps/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/MapView$1;

    invoke-direct {v2, p0}, Lcom/google/android/maps/MapView$1;-><init>(Lcom/google/android/maps/MapView;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/MapView$2;

    invoke-direct {v2, p0}, Lcom/google/android/maps/MapView$2;-><init>(Lcom/google/android/maps/MapView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/google/android/maps/TrackballGestureDetector;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/maps/TrackballGestureDetector;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    return-void
.end method
