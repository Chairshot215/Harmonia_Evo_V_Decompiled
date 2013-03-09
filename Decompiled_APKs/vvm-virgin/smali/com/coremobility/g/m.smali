.class public final Lcom/coremobility/g/m;
.super Ljava/lang/Object;


# static fields
.field static final a:[B

.field static final b:[Ljava/lang/String;

.field private static c:Lcom/coremobility/g/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0xc

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/g/m;->c:Lcom/coremobility/g/m;

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremobility/g/m;->a:[B

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "May"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/g/m;->b:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/coremobility/g/m;
    .locals 3

    sget-object v0, Lcom/coremobility/g/m;->c:Lcom/coremobility/g/m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Creating CM_Time instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/g/m;

    invoke-direct {v0}, Lcom/coremobility/g/m;-><init>()V

    sput-object v0, Lcom/coremobility/g/m;->c:Lcom/coremobility/g/m;

    :cond_0
    sget-object v0, Lcom/coremobility/g/m;->c:Lcom/coremobility/g/m;

    return-object v0
.end method

.method public static b()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static c()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
