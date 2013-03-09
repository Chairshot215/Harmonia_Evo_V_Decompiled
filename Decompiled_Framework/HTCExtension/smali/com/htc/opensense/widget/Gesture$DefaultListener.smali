.class public Lcom/htc/opensense/widget/Gesture$DefaultListener;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Lcom/htc/opensense/widget/Gesture$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$DefaultListener;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBothFingerUp(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/htc/opensense/widget/Gesture$ClickBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDrag(Lcom/htc/opensense/widget/Gesture$DragBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSecondFingerDown(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSecondFingerUp(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onUp(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onZoomIn(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onZoomOut(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
