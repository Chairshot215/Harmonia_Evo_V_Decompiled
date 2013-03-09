.class public Lcom/htc/laputa/engine/util/Error;
.super Ljava/lang/Object;
.source "Error.java"


# static fields
.field public static final E_AccessDenied:I = -0x7

.field public static final E_Activation:I = -0x2

.field public static final E_Cancel:I = -0x3

.field public static final E_Connection:I = -0x16

.field public static final E_ConnectionRequired:I = -0x19

.field public static final E_ContentStoreNotOpened:I = -0x21

.field public static final E_CouldNotStart:I = -0x1c

.field public static final E_Exist:I = -0x5

.field public static final E_FAIL:I = -0x1

.field public static final E_InUse:I = -0xa

.field public static final E_InternalAbort:I = -0x15

.field public static final E_InvalidInput:I = -0xf

.field public static final E_Invalidated:I = -0xd

.field public static final E_Io:I = -0x6

.field public static E_NOMAP:I = 0x0

.field public static final E_NetworkCouldntResolveHost:I = -0x1e

.field public static final E_NetworkCouldntResolveProxy:I = -0x1f

.field public static final E_NetworkCouldntResume:I = -0x20

.field public static final E_NetworkFailed:I = -0x17

.field public static final E_NetworkTimeout:I = -0x1d

.field public static final E_NoConnection:I = -0x18

.field public static final E_NoDiskSpace:I = -0x9

.field public static final E_NoMemory:I = -0xe

.field public static final E_NoOnboardMap:I = -0xc8

.field public static final E_NoOnlineMap:I = -0xc9

.field public static final E_NoRoute:I = -0x12

.field public static final E_NotFound:I = -0xb

.field public static final E_NotSupported:I = -0x4

.field public static final E_OutOfRange:I = -0xc

.field public static final E_ReadonlyDrive:I = -0x8

.field public static final E_RecvFailed:I = -0x1b

.field public static final E_ReducedResult:I = -0x10

.field public static final E_Required:I = -0x11

.field public static final E_ResourceMissing:I = -0x24

.field public static final E_RouteTooLong:I = -0x14

.field public static final E_SERVICECONNECTION:I = -0x3e8

.field public static final E_SendFailed:I = -0x1a

.field public static final E_Suspended:I = -0x22

.field public static final E_Timeout:I = -0x64

.field public static final E_UpToDate:I = -0x23

.field public static final E_WaypointAccess:I = -0x13

.field public static final S_OK:I

.field public static S_ONLINE_FAIL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput v0, Lcom/htc/laputa/engine/util/Error;->S_ONLINE_FAIL:I

    .line 69
    const/16 v0, -0x3e9

    sput v0, Lcom/htc/laputa/engine/util/Error;->E_NOMAP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSuccess(I)Z
    .locals 1
    .parameter "errcode"

    .prologue
    .line 78
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
