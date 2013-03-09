.class Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LocationMapPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->setGestureListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/16 v6, 0x320

    const/4 v5, 0x0

    .line 1035
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->access$4400(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1036
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    const/16 v1, 0x190

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mLastFlingX:I
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->access$4502(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;I)I

    .line 1042
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->access$4400(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mLastFlingX:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->access$4500(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mLastFlingX:I
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->access$4500(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)I

    move-result v2

    neg-float v3, p3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    neg-float v4, p4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1045
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->access$4400(Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v9, v0

    .line 1048
    .local v9, duration:J
    const-string v0, "LocationMapPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling, druation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    iget-object v0, v0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    iget-object v0, v0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1052
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay$1;->this$1:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    iget-object v0, v0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1202(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z

    .line 1054
    return v5
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1059
    const-string v0, "LocationMapPicker"

    const-string v1, "onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v0, 0x0

    return v0
.end method
