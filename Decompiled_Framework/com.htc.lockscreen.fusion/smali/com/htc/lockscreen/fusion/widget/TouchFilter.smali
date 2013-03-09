.class public Lcom/htc/lockscreen/fusion/widget/TouchFilter;
.super Ljava/lang/Object;
.source "TouchFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;
    }
.end annotation


# static fields
.field private static final SENSITIVE:I = 0x1


# instance fields
.field private mAction:I

.field private mPressed:Z

.field private mTouchListener:Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;

.field private mX:I

.field private mY:I

.field private m_pointId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/16 v1, -0x3e8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->m_pointId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mPressed:Z

    iput v1, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mX:I

    iput v1, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mY:I

    iput v2, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mAction:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v7, -0x3e8

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v0, :cond_1

    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mAction:I

    iput v7, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mX:I

    iput v7, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mY:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->m_pointId:I

    iput-boolean v6, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mPressed:Z

    invoke-virtual {p0, v4, p1}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mPressed:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mPressed:Z

    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    if-ne v2, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->m_pointId:I

    if-ne v3, v5, :cond_0

    iput-boolean v4, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mPressed:Z

    invoke-virtual {p0, v6, p1}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public getPoint(I)Landroid/graphics/Point;
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0
.end method

.method public sendTouchEventToListener(ILandroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mTouchListener:Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->m_pointId:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->m_pointId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v3, v5

    iget v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mAction:I

    if-ne v5, p1, :cond_2

    iget v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mX:I

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v6, :cond_2

    iget v5, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mY:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v6, :cond_0

    :cond_2
    iput v2, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mX:I

    iput v3, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mY:I

    iput p1, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mAction:I

    iget v4, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->m_pointId:I

    invoke-interface {v1, p1, v4, v2, v3}, Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;->onTouchEvent(IIII)Z

    move-result v4

    goto :goto_0
.end method

.method public setCallback(Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->mTouchListener:Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
