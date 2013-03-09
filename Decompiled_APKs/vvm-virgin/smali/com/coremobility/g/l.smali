.class public final Lcom/coremobility/g/l;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)J
    .locals 11

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v1, 0x0

    const/4 v6, 0x4

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_4

    if-gt v7, v1, :cond_1

    if-gt v1, v8, :cond_1

    shl-long/2addr v2, v6

    add-int/lit8 v1, v1, -0x30

    int-to-long v4, v1

    add-long v1, v2, v4

    move-wide v9, v1

    move-wide v2, v9

    move v1, v0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v4, 0x41

    if-gt v4, v1, :cond_2

    const/16 v4, 0x46

    if-gt v1, v4, :cond_2

    shl-long/2addr v2, v6

    add-int/lit8 v1, v1, -0x41

    add-int/lit8 v1, v1, 0xa

    int-to-long v4, v1

    add-long v1, v2, v4

    move-wide v9, v1

    move-wide v2, v9

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v4, 0x61

    if-gt v4, v1, :cond_4

    const/16 v4, 0x66

    if-gt v1, v4, :cond_4

    shl-long/2addr v2, v6

    add-int/lit8 v1, v1, -0x61

    add-int/lit8 v1, v1, 0xa

    int-to-long v4, v1

    add-long v1, v2, v4

    move-wide v9, v1

    move-wide v2, v9

    move v1, v0

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_4

    if-gt v7, v1, :cond_4

    if-gt v1, v8, :cond_4

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    add-int/lit8 v1, v1, -0x30

    int-to-long v4, v1

    add-long/2addr v2, v4

    move v1, v0

    goto :goto_2

    :cond_4
    return-wide v2
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JZ)Ljava/lang/String;
    .locals 8

    const/16 v3, 0xa

    const/16 v0, 0x20

    new-array v5, v0, [B

    const/16 v0, 0x1f

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p2, :cond_2

    const/16 v1, 0x10

    move v2, v1

    :goto_0
    int-to-long v6, v2

    rem-long v6, p0, v6

    long-to-int v1, v6

    int-to-byte v1, v1

    int-to-long v6, v2

    div-long/2addr p0, v6

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x30

    int-to-byte v1, v1

    move v4, v1

    :goto_1
    add-int/lit8 v1, v0, -0x1

    aput-byte v4, v5, v0

    const-wide/16 v6, 0x0

    cmp-long v0, p0, v6

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    new-instance v1, Ljava/lang/String;

    rsub-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v5, v0, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    :cond_0
    add-int/lit8 v1, v1, 0x37

    int-to-byte v1, v1

    move v4, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
