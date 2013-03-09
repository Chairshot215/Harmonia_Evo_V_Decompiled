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

    .prologue
    .line 25
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
    .parameter "context"
    .parameter "handler"
    .parameter "messageId"

    .prologue
    const/4 v1, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    .line 27
    iput v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    .line 28
    iput v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    .line 29
    iput v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mMessageId:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    .line 36
    iput p3, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mMessageId:I

    .line 37
    return-void

    .line 19
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

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 74
    :cond_0
    iget v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    aget v1, v1, v2

    if-ne p1, v1, :cond_3

    .line 47
    iput v2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    .line 57
    :cond_2
    :goto_1
    iget v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    iget v2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    if-eq v1, v2, :cond_0

    .line 59
    iget v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    iput v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    .line 61
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mMessageId:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 64
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mMessageId:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 48
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    aget v1, v1, v3

    if-ne p1, v1, :cond_4

    .line 49
    iput v3, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    goto :goto_1

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-eq p1, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->SURFACE_ROTATIONS:[I

    aget v1, v1, v4

    if-ne p1, v1, :cond_2

    .line 54
    iput v4, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mTempOrientation:I

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->mOrientationMode:I

    .line 80
    return-void
.end method
