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

    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;->analysis(Lcom/htc/opensense/widget/Gesture$Event;)V

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    iget v1, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-ne v1, v2, :cond_1

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    invoke-interface {v1, p0}, Lcom/htc/opensense/widget/Gesture$GestureListener;->onUp(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;->stopBubble()V

    return-void

    :cond_1
    iget v1, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    invoke-interface {v1, p0}, Lcom/htc/opensense/widget/Gesture$GestureListener;->onDown(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z

    goto :goto_0
.end method

.method public gesture()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 1

    const-string v0, "Gesture_None"

    return-object v0
.end method
