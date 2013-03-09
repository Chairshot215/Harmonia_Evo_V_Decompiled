.class public Lcom/htc/home/personalize/opensense/LayoutConstants;
.super Ljava/lang/Object;
.source "LayoutConstants.java"


# static fields
.field public static final DRM_MESSAGE_SIZE:I

.field public static final DRM_MESSAGE_SIZE_ARY:[I

.field private static RESOLUTION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6
    sput v1, Lcom/htc/home/personalize/opensense/LayoutConstants;->RESOLUTION:I

    .line 8
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 33
    sput v1, Lcom/htc/home/personalize/opensense/LayoutConstants;->RESOLUTION:I

    .line 38
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/home/personalize/opensense/LayoutConstants;->DRM_MESSAGE_SIZE_ARY:[I

    .line 39
    sget-object v0, Lcom/htc/home/personalize/opensense/LayoutConstants;->DRM_MESSAGE_SIZE_ARY:[I

    sget v1, Lcom/htc/home/personalize/opensense/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/home/personalize/opensense/LayoutConstants;->DRM_MESSAGE_SIZE:I

    return-void

    .line 14
    :sswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/opensense/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 23
    :sswitch_1
    const/4 v0, 0x2

    sput v0, Lcom/htc/home/personalize/opensense/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 28
    :sswitch_2
    const/4 v0, 0x3

    sput v0, Lcom/htc/home/personalize/opensense/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 8
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x19 -> :sswitch_1
        0x40 -> :sswitch_1
        0x60 -> :sswitch_0
        0x78 -> :sswitch_2
        0x91 -> :sswitch_1
    .end sparse-switch

    .line 38
    :array_0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
