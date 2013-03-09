.class Lcom/htc/opensense/widget/Gesture$ZoomBehavior;
.super Lcom/htc/opensense/widget/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomBehavior"
.end annotation


# static fields
.field private static final Threhold:F = 2.01f


# instance fields
.field gesture:I

.field mLast2DownEvt:Lcom/htc/opensense/widget/Gesture$Event;

.field private mMoveX:F

.field private mMoveY:F

.field private mWeight:F

.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 2
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    .line 556
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->gesture:I

    .line 558
    new-instance v0, Lcom/htc/opensense/widget/Gesture$Event;

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/Gesture$Event;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    .line 560
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mWeight:F

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 0
    .parameter "evt"

    .prologue
    .line 581
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;->analysis(Lcom/htc/opensense/widget/Gesture$Event;)V

    .line 584
    return-void
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->gesture:I

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->gesture:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "Gesture_Zoom_In"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Gesture_Zoom_Out"

    goto :goto_0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    iget v0, v0, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    iget v1, v1, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    iget v0, v0, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mLast2DownEvt:Lcom/htc/opensense/widget/Gesture$Event;

    iget v1, v1, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getMovementX()F
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mMoveX:F

    return v0
.end method

.method public getMovementY()F
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mMoveY:F

    return v0
.end method

.method public weight()F
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->mWeight:F

    return v0
.end method
