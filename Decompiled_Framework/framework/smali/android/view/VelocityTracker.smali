.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Estimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/VelocityTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllEventFromPhysicalSource:Z

.field private mIsPooled:Z

.field private mNext:Landroid/view/VelocityTracker;

.field private mPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/VelocityTracker$1;

    invoke-direct {v0}, Landroid/view/VelocityTracker$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/VelocityTracker;->mAllEventFromPhysicalSource:Z

    invoke-static {}, Landroid/view/VelocityTracker;->nativeInitialize()I

    move-result v0

    iput v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VelocityTracker$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/VelocityTracker;-><init>()V

    return-void
.end method

.method private getPolynomialDegree()I
    .locals 1

    iget-boolean v0, p0, Landroid/view/VelocityTracker;->mAllEventFromPhysicalSource:Z

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getScaleFactor()F
    .locals 1

    iget-boolean v0, p0, Landroid/view/VelocityTracker;->mAllEventFromPhysicalSource:Z

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x3fb33333

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static native nativeAddMovement(ILandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeComputeCurrentVelocity(IIFFI)V
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeGetEstimator(IIIILandroid/view/VelocityTracker$Estimator;)Z
.end method

.method private static native nativeGetXVelocity(II)F
.end method

.method private static native nativeGetYVelocity(II)F
.end method

.method private static native nativeInitialize()I
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .locals 1

    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/VelocityTracker;->mAllEventFromPhysicalSource:Z

    :cond_1
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/VelocityTracker;->mAllEventFromPhysicalSource:Z

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeClear(I)V

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 4

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const v1, 0x7f7fffff

    invoke-direct {p0}, Landroid/view/VelocityTracker;->getScaleFactor()F

    move-result v2

    invoke-direct {p0}, Landroid/view/VelocityTracker;->getPolynomialDegree()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(IIFFI)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 3

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-direct {p0}, Landroid/view/VelocityTracker;->getScaleFactor()F

    move-result v1

    invoke-direct {p0}, Landroid/view/VelocityTracker;->getPolynomialDegree()I

    move-result v2

    invoke-static {v0, p1, p2, v1, v2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(IIFFI)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeDispose(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/VelocityTracker;->mPtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEstimator(IIILandroid/view/VelocityTracker$Estimator;)Z
    .locals 2

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outEstimator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/VelocityTracker;->nativeGetEstimator(IIIILandroid/view/VelocityTracker$Estimator;)Z

    move-result v0

    return v0
.end method

.method public getNextPoolable()Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getNextPoolable()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method public getXVelocity()F
    .locals 2

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(II)F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .locals 1

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(II)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .locals 2

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(II)F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .locals 1

    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(II)F

    move-result v0

    return v0
.end method

.method public isPooled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/VelocityTracker;->mIsPooled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    return-void
.end method

.method public setNextPoolable(Landroid/view/VelocityTracker;)V
    .locals 0

    iput-object p1, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->setNextPoolable(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method public setPooled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/VelocityTracker;->mIsPooled:Z

    return-void
.end method
