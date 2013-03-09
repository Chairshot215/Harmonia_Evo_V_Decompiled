.class Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;
.super Lcom/google/android/maps/Overlay;
.source "LocationMapPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawPostionOverlay"
.end annotation


# instance fields
.field private iconX:I

.field private iconY:I

.field private pointX:I

.field private pointY:I

.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationMapPicker;


# direct methods
.method public constructor <init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 908
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 903
    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->pointX:I

    .line 904
    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->pointY:I

    .line 905
    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->iconX:I

    .line 906
    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->iconY:I

    .line 909
    return-void
.end method

.method private updaetXY()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->pointX:I

    .line 913
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->pointY:I

    .line 914
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3700(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->iconX:I

    .line 915
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3700(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->iconY:I

    .line 916
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 9
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->updaetXY()V

    .line 921
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 922
    .local v2, paint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 923
    const/high16 v5, 0x4000

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 924
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 929
    const/16 v5, 0xff

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 930
    iget v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->pointX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->pointY:I

    int-to-float v6, v6

    const/high16 v7, 0x4080

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 933
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 934
    iget v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->iconX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->iconY:I

    int-to-float v6, v6

    const/high16 v7, 0x4080

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 937
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3900(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/GeoPoint;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 938
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v6}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3900(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 939
    .local v3, pt:Landroid/graphics/Point;
    const/16 v5, 0x64

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 940
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const/high16 v7, 0x4080

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 943
    .end local v3           #pt:Landroid/graphics/Point;
    :cond_0
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$4000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/GeoPoint;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 944
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v6}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$4000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 945
    .restart local v3       #pt:Landroid/graphics/Point;
    const/16 v5, 0x64

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 946
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const/high16 v7, 0x4080

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 949
    .end local v3           #pt:Landroid/graphics/Point;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLatitude:D
    invoke-static {v6}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$600(Lcom/htc/android/locationpicker/LocationMapPicker;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLongitude:D
    invoke-static {v6}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$700(Lcom/htc/android/locationpicker/LocationMapPicker;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnZoom:I
    invoke-static {v6}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$800(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 950
    .local v4, text:Ljava/lang/String;
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 951
    const/high16 v5, 0x4190

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 952
    const/high16 v5, 0x4120

    const/high16 v6, 0x42a0

    invoke-virtual {p1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 954
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLatitude:D
    invoke-static {v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$600(Lcom/htc/android/locationpicker/LocationMapPicker;)D

    move-result-wide v5

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, latStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLongitude:D
    invoke-static {v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$700(Lcom/htc/android/locationpicker/LocationMapPicker;)D

    move-result-wide v5

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, lonStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 957
    const/high16 v5, 0x4120

    const/high16 v6, 0x42c8

    invoke-virtual {p1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 958
    return-void
.end method
