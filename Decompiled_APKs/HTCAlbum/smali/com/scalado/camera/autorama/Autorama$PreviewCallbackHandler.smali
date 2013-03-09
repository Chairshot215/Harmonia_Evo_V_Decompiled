.class Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V
    .locals 10
    .parameter "image"
    .parameter "camera"

    .prologue
    const/high16 v9, 0x42c8

    .line 948
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;
    invoke-static {v4, p1}, Lcom/scalado/camera/autorama/Autorama;->access$2902(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    .line 950
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$2500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v4

    sget-object v5, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    if-eq v4, v5, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$800(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v4

    if-nez v4, :cond_2

    .line 955
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v7, v7, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3000(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x64

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x64

    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v8, v8, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3000(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x64

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$802(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 958
    :cond_2
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$3100(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v4

    if-nez v4, :cond_3

    .line 959
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v5, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$3102(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/ViewfinderTracker;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 961
    :cond_3
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$3100(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4, v5}, Lcom/scalado/camera/autorama/Autorama;->access$3202(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)Lcom/scalado/caps/autorama/Transform;

    .line 963
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$3200(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Vector;->getX()I

    move-result v2

    .line 964
    .local v2, translationX:I
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$3200(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Vector;->getY()I

    move-result v3

    .line 965
    .local v3, translationY:I
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    int-to-float v5, v2

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$800(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    .line 966
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    int-to-float v5, v3

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama;->access$800(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 967
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 968
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v5, v5, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget v6, v6, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    invoke-interface {v4, v5, v6, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onTracking(FFLcom/scalado/base/Image;)V

    .line 971
    :cond_4
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v4, v4, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2300(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 972
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$3200(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, v5, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3300(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/scalado/caps/autorama/Transform;->getDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    .line 974
    .local v1, newDirection:Lcom/scalado/caps/autorama/Direction;
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    if-eq v1, v4, :cond_5

    .line 975
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4, v1}, Lcom/scalado/camera/autorama/Autorama;->access$602(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)Lcom/scalado/caps/autorama/Direction;

    .line 976
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 977
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V

    .line 981
    .end local v1           #newDirection:Lcom/scalado/caps/autorama/Direction;
    :cond_5
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_0

    .line 982
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$3200(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3000(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/scalado/caps/autorama/Transform;->isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 985
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v4

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_7

    .line 986
    :cond_6
    int-to-float v4, v3

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 991
    .local v0, deviation:F
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v9

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, v5, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3400(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    .line 992
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->capture()V
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$2800(Lcom/scalado/camera/autorama/Autorama;)V

    goto/16 :goto_0

    .line 989
    .end local v0           #deviation:F
    :cond_7
    int-to-float v4, v2

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .restart local v0       #deviation:F
    goto :goto_1

    .line 995
    :cond_8
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capture refused due to deviation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-float v6, v0, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v6, v6, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3400(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
