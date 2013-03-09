.class public final Ljava/lang/Short;
.super Ljava/lang/Number;
.source "Short.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:S = 0x7fffs

.field public static final MIN_VALUE:S = -0x8000s

.field public static final SIZE:I = 0x10

.field private static final SMALL_VALUES:[Ljava/lang/Short; = null

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x684d37133460da52L


# instance fields
.field private final value:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v1, [S

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Short;

    sput-object v1, Ljava/lang/Short;->SMALL_VALUES:[Ljava/lang/Short;

    const/16 v0, -0x80

    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/Short;->SMALL_VALUES:[Ljava/lang/Short;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Short;

    int-to-short v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Short;-><init>(S)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-short p1, p0, Ljava/lang/Short;->value:S

    return-void
.end method

.method public static compare(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Short;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-short v1, v0

    if-ne v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value out of range for short: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseShort(Ljava/lang/String;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    return v0
.end method

.method public static parseShort(Ljava/lang/String;I)S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v1, v0

    if-ne v1, v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value out of range for short: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static reverseBytes(S)S
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static toString(S)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(S)Ljava/lang/Short;
    .locals 2

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x80

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->SMALL_VALUES:[Ljava/lang/Short;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Short;)I
    .locals 4

    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-long v0, v0

    iget-short v2, p1, Ljava/lang/Short;->value:S

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Short;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Short;

    iget-short v0, p1, Ljava/lang/Short;->value:S

    iget-short v1, p0, Ljava/lang/Short;->value:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Ljava/lang/Short;->value:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
