.class Lcom/htc/opensense/widget/Gesture$DefaultBehavior;
.super Lcom/htc/opensense/widget/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultBehavior"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    const/4 v2, 0x1

    .line 711
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;->analysis(Lcom/htc/opensense/widget/Gesture$Event;)V

    .line 712
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    .line 713
    .local v0, fingers:I
    iget v1, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-ne v1, v2, :cond_1

    .line 714
    if-gtz v0, :cond_0

    .line 715
    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    invoke-interface {v1, p0}, Lcom/htc/opensense/widget/Gesture$GestureListener;->onUp(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z

    .line 721
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;->stopBubble()V

    .line 722
    return-void

    .line 716
    :cond_1
    iget v1, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-nez v1, :cond_0

    .line 717
    if-ne v0, v2, :cond_0

    .line 718
    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    invoke-interface {v1, p0}, Lcom/htc/opensense/widget/Gesture$GestureListener;->onDown(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    const-string v0, "Gesture_None"

    return-object v0
.end method
