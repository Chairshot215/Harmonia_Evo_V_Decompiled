.class Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;
.super Lcom/google/android/maps/Overlay;
.source "LocationMapPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapAgentOverlay"
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationMapPicker;


# direct methods
.method public constructor <init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 1027
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->setGestureListener()V

    .line 1028
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mScroller:Landroid/widget/Scroller;

    .line 1029
    return-void
.end method

.method static synthetic access$4400(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1021
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mLastFlingX:I

    return v0
.end method

.method static synthetic access$4502(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1021
    iput p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mLastFlingX:I

    return p1
.end method

.method private setGestureListener()V
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;

    invoke-direct {v1, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->gestureDetector:Landroid/view/GestureDetector;

    .line 1064
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 4
    .parameter "e"
    .parameter "mapView"

    .prologue
    const/4 v2, 0x1

    .line 1067
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1069
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1071
    const-string v0, "LocationMapPicker"

    const-string v1, "Overlay ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_SCREEN_MODE:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2100(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->switchIconMode(I)V
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2200(Lcom/htc/android/locationpicker/LocationMapPicker;I)V

    .line 1075
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressBarLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1600(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$902(Lcom/htc/android/locationpicker/LocationMapPicker;Ljava/lang/String;)Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isMapMoving:Z
    invoke-static {v0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1402(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z

    .line 1101
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1079
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1081
    const-string v0, "LocationMapPicker"

    const-string v1, "Overlay ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string v0, "LocationMapPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMapFling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1200(Lcom/htc/android/locationpicker/LocationMapPicker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1200(Lcom/htc/android/locationpicker/LocationMapPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->updateFinalPosition()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$400(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    .line 1090
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    iget-object v0, v0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1093
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1095
    const-string v0, "LocationMapPicker"

    const-string v1, "Overlay ACTION_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mDebugMode:I
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$4300(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->updateFinalPosition()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$400(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    goto :goto_0
.end method
