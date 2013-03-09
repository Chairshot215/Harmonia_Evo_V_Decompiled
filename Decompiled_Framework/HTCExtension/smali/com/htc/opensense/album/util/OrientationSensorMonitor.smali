.class public Lcom/htc/opensense/album/util/OrientationSensorMonitor;
.super Ljava/lang/Object;
.source "OrientationSensorMonitor.java"


# static fields
.field public static final ORIENTATION_ANGLE:[I = null

.field public static final ORIENTATION_MODE_DONTCARE:I = 0x4

.field public static final ORIENTATION_MODE_ILANDSCAPE:I = 0x3

.field public static final ORIENTATION_MODE_IPORTRAIT:I = 0x2

.field public static final ORIENTATION_MODE_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_MODE_PORTRAIT:I = 0x0

.field public static final ORIENTATION_MODE_UNKNOWN:I = -0x1


# instance fields
.field private final SURFACE_ROTATIONS:[I

.field private mHandler:Landroid/os/Handler;

.field private mMessageId:I

.field private mOrientationMode:I

.field private mTempOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->ORIENTATION_ANGLE:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xet 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    iput v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    iput v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    iput v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mMessageId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mMessageId:I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getCurrentOrientation()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :cond_0
    iget v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    aget v1, v1, v2

    if-ne p1, v1, :cond_3

    iput v2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    :cond_2
    :goto_1
    iget v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    iget v2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    iput v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mMessageId:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mMessageId:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    aget v1, v1, v3

    if-ne p1, v1, :cond_4

    iput v3, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    aget v1, v1, v4

    if-ne p1, v1, :cond_2

    iput v4, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    return-void
.end method
