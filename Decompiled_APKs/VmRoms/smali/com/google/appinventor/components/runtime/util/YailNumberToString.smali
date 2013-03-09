.class public final Lcom/google/appinventor/components/runtime/util/YailNumberToString;
.super Ljava/lang/Object;


# static fields
.field private static final BIGBOUND:D = 1000000.0

.field private static final SMALLBOUND:D = 1.0E-6

.field private static final decPattern:Ljava/lang/String; = "#####0.0####"

.field private static final formatterDec:Ljava/text/DecimalFormat; = null

.field private static final formatterSci:Ljava/text/DecimalFormat; = null

.field private static final sciPattern:Ljava/lang/String; = "0.####E0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#####0.0####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->formatterDec:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.####E0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->formatterSci:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(D)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->formatterDec:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->formatterSci:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
