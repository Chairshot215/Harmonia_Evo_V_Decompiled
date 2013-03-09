.class public Lcom/htc/dlnainterface/DLNASharedData;
.super Ljava/lang/Object;
.source "DLNASharedData.java"


# static fields
.field public static AUDIO_PLAYER:I = 0x0

.field public static HTC_MEDIA_LINK:I = 0x0

.field public static final JPEG_MEDIUM:Ljava/lang/String; = "JPEG_MED"

.field public static final JPEG_SMALL:Ljava/lang/String; = "JPEG_SM"

.field public static final JPEG_TINY:Ljava/lang/String; = "JPEG_TN"

.field public static final PNG_TINY:Ljava/lang/String; = "PNG_TN"

.field public static VIDEO_PLAYER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput v0, Lcom/htc/dlnainterface/DLNASharedData;->HTC_MEDIA_LINK:I

    .line 11
    const/4 v0, 0x3

    sput v0, Lcom/htc/dlnainterface/DLNASharedData;->VIDEO_PLAYER:I

    .line 13
    const/4 v0, 0x5

    sput v0, Lcom/htc/dlnainterface/DLNASharedData;->AUDIO_PLAYER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
