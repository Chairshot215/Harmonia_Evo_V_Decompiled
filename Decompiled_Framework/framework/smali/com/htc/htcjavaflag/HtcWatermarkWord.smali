.class public Lcom/htc/htcjavaflag/HtcWatermarkWord;
.super Ljava/lang/Object;
.source "HtcWatermarkWord.java"


# static fields
.field public static final Htc_BETA_RELEASE_flag:Z = false

.field public static final Htc_WATERMARK_MSG:[Ljava/lang/String; = null

.field public static final showAccount:Z = true

.field public static final showSerialNo:Z = true

.field public static final wordAlpha:I = 0x14

.field public static final wordRimAlpha:I = 0x64

.field public static final wordSizeScale:F = 0.08f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HTC Confidential"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Esmertec"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "14728"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
