.class Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;
.super Lcom/htc/home/personalize/opensense/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultBehavior"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/Gesture;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    const/4 v2, 0x1

    .line 725
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 726
    iget v0, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mFingers:I

    .line 727
    .local v0, fingers:I
    iget v1, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-ne v1, v2, :cond_1

    .line 728
    if-gtz v0, :cond_0

    .line 729
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v1, v1, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    invoke-interface {v1, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureListener;->onUp(Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;)Z

    .line 735
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;->stopBubble()V

    .line 736
    return-void

    .line 730
    :cond_1
    iget v1, p1, Lcom/htc/home/personalize/opensense/Gesture$Event;->mAction:I

    if-nez v1, :cond_0

    .line 731
    if-ne v0, v2, :cond_0

    .line 732
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v1, v1, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    invoke-interface {v1, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureListener;->onDown(Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;)Z

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    const-string v0, "Gesture_None"

    return-object v0
.end method
