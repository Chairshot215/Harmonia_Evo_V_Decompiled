.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field private static final SMALL_VALUES:[Ljava/lang/Long; = null

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v1, [J

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    const/16 v0, -0x80

    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Long;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Ljava/lang/Long;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-void
.end method

.method public static bitCount(J)I
    .locals 8

    const-wide v6, 0x3333333333333333L

    const v5, 0xf0f0f0f

    const/4 v1, 0x1

    ushr-long v1, p0, v1

    const-wide v3, 0x5555555555555555L

    and-long/2addr v1, v3

    sub-long/2addr p0, v1

    and-long v1, p0, v6

    const/4 v3, 0x2

    ushr-long v3, p0, v3

    and-long/2addr v3, v6

    add-long p0, v1, v3

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    long-to-int v2, p0

    add-int v0, v1, v2

    and-int v1, v0, v5

    ushr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v5

    add-int v0, v1, v2

    ushr-int/lit8 v1, v0, 0x8

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method public static compare(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_1

    move v4, v7

    :goto_0
    if-eqz v4, :cond_3

    if-ne v3, v7, :cond_2

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_3
    const/16 v0, 0xa

    const/16 v7, 0x30

    if-ne v1, v7, :cond_9

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_4

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_1
    return-object v7

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x78

    if-eq v1, v7, :cond_5

    const/16 v7, 0x58

    if-ne v1, v7, :cond_8

    :cond_5
    if-ne v2, v3, :cond_6

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x10

    :cond_7
    :goto_2
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1

    :cond_8
    const/16 v0, 0x8

    goto :goto_2

    :cond_9
    const/16 v7, 0x23

    if-ne v1, v7, :cond_7

    if-ne v2, v3, :cond_a

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    :cond_a
    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x10

    goto :goto_2
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static highestOneBit(J)J
    .locals 3

    const/4 v2, 0x1

    shr-long v0, p0, v2

    or-long/2addr p0, v0

    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    ushr-long v0, p0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid long: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lowestOneBit(J)J
    .locals 2

    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .locals 5

    const-wide/16 v3, 0x0

    cmp-long v2, p0, v3

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmp-long v2, p0, v3

    if-nez v2, :cond_1

    const/16 v2, 0x40

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v0, v2

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, 0x20

    long-to-int v0, p0

    :cond_2
    ushr-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x10

    shl-int/lit8 v0, v0, 0x10

    :cond_3
    ushr-int/lit8 v2, v0, 0x18

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x8

    shl-int/lit8 v0, v0, 0x8

    :cond_4
    ushr-int/lit8 v2, v0, 0x1c

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x4

    shl-int/lit8 v0, v0, 0x4

    :cond_5
    ushr-int/lit8 v2, v0, 0x1e

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x2

    shl-int/lit8 v0, v0, 0x2

    :cond_6
    ushr-int/lit8 v2, v0, 0x1f

    sub-int v2, v1, v2

    goto :goto_0
.end method

.method public static numberOfTrailingZeros(J)I
    .locals 3

    long-to-int v0, p0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    goto :goto_0
.end method

.method private static parse(Ljava/lang/String;IIZ)J
    .locals 15

    const-wide/high16 v11, -0x8000

    move/from16 v0, p2

    int-to-long v13, v0

    div-long v4, v11, v13

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    int-to-long v2, v11

    move/from16 v8, p1

    :goto_0
    int-to-long v11, v8

    cmp-long v11, v11, v2

    if-gez v11, :cond_3

    add-int/lit8 p1, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move/from16 v0, p2

    invoke-static {v11, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v11, -0x1

    if-ne v1, v11, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    :cond_0
    cmp-long v11, v4, v9

    if-lez v11, :cond_1

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    :cond_1
    move/from16 v0, p2

    int-to-long v11, v0

    mul-long/2addr v11, v9

    int-to-long v13, v1

    sub-long v6, v11, v13

    cmp-long v11, v6, v9

    if-lez v11, :cond_2

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    :cond_2
    move-wide v9, v6

    move/from16 v8, p1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    neg-long v9, v9

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gez v11, :cond_4

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    :cond_4
    return-wide v9
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v3, 0x2

    if-lt p1, v3, :cond_0

    const/16 v3, 0x24

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid radix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-nez p0, :cond_2

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_3

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    invoke-static {p0, v0, p1, v2}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v3

    return-wide v3
.end method

.method public static reverse(J)J
    .locals 9

    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    ushr-long v0, p0, v4

    const-wide v2, 0x5555555555555555L

    and-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    ushr-long v0, p0, v5

    const-wide v2, 0x3333333333333333L

    and-long/2addr v0, v2

    const-wide v2, 0x3333333333333333L

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    ushr-long v0, p0, v6

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long/2addr v0, v2

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    ushr-long v0, p0, v7

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v0, v2

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    or-long p0, v0, v2

    ushr-long v0, p0, v8

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v0, v2

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v8

    or-long p0, v0, v2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const/16 v2, 0x20

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytes(J)J
    .locals 9

    const-wide v2, 0xff00ff00ff00ffL

    const-wide v7, 0xffff0000ffffL

    const/16 v6, 0x20

    const/16 v5, 0x10

    const/16 v4, 0x8

    ushr-long v0, p0, v4

    and-long/2addr v0, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    ushr-long v0, p0, v5

    and-long/2addr v0, v7

    and-long v2, p0, v7

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    ushr-long v0, p0, v6

    shl-long v2, p0, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .locals 4

    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateRight(JI)J
    .locals 4

    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static signum(J)I
    .locals 3

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToOctalString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->longToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    long-to-int v1, p0

    add-int/lit16 v1, v1, 0x80

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .locals 4

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    iget-wide v0, p1, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
