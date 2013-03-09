.class public Lcom/coremobility/e/ah;
.super Ljava/lang/Object;


# static fields
.field public static k:[Ljava/lang/String;

.field public static final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "V"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "N"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "M"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/e/ah;->k:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremobility/e/ah;->l:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
