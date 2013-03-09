.class public Lcom/coremobility/c/an;
.super Ljava/lang/Object;


# static fields
.field public static final p:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ab/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contacts/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nab/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vn/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(I)Z
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
