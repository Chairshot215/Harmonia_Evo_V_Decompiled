.class public final Llibcore/internal/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private final pool:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    return-void
.end method

.method private static contentEquals(Ljava/lang/String;[CII)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get([CII)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    add-int v5, p2, p3

    if-ge v1, v5, :cond_0

    mul-int/lit8 v5, v0, 0x1f

    aget-char v6, p1, v1

    add-int v0, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v5, v0, 0x14

    ushr-int/lit8 v6, v0, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    and-int v2, v0, v5

    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    aget-object v3, v5, v2

    if-eqz v3, :cond_1

    invoke-static {v3, p1, p2, p3}, Llibcore/internal/StringPool;->contentEquals(Ljava/lang/String;[CII)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return-object v3

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    aput-object v4, v5, v2

    move-object v3, v4

    goto :goto_1
.end method
