.class Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter "event"
    .parameter "pointerId"

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .locals 2
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
