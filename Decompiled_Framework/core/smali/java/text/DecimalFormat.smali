.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field private static final NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient dform:Llibcore/icu/NativeDecimalFormat;

.field private final finalizerGuardian:Ljava/lang/Object;

.field private transient roundingMode:Ljava/math/RoundingMode;

.field private transient symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x8000

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "positivePrefix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "positiveSuffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negativePrefix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negativeSuffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "posPrefixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "posSuffixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negPrefixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negSuffixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "multiplier"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingSize"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingUsed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "decimalSeparatorAlwaysShown"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "parseBigDecimal"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "roundingMode"

    const-class v4, Ljava/math/RoundingMode;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "symbols"

    const-class v4, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useExponentialNotation"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minExponentDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat$1;

    invoke-direct {v1, p0}, Ljava/text/DecimalFormat$1;-><init>(Ljava/text/DecimalFormat;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->finalizerGuardian:Ljava/lang/Object;

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iget-object v1, v1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 1

    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat$1;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormat$1;-><init>(Ljava/text/DecimalFormat;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->finalizerGuardian:Ljava/lang/Object;

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat$1;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormat$1;-><init>(Ljava/text/DecimalFormat;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->finalizerGuardian:Ljava/lang/Object;

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/text/DecimalFormat;)Llibcore/icu/NativeDecimalFormat;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    return-object v0
.end method

.method private checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private initNative(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v1, Llibcore/icu/NativeDecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, p1, v2}, Llibcore/icu/NativeDecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v12, 0x154

    const/16 v11, 0x135

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v5, "symbols"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DecimalFormatSymbols;

    iput-object v5, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    const-string v5, ""

    invoke-direct {p0, v5}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "positivePrefix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "positiveSuffix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "negativePrefix"

    const-string v7, "-"

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v5, "negativeSuffix"

    const-string v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "multiplier"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setMultiplier(I)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "groupingSize"

    invoke-virtual {v0, v6, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setGroupingSize(I)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "groupingUsed"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setGroupingUsed(Z)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    const-string v6, "decimalSeparatorAlwaysShown"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    const-string v5, "roundingMode"

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/RoundingMode;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    const-string v5, "maximumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "minimumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "maximumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "minimumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v5, v2}, Llibcore/icu/NativeDecimalFormat;->setMaximumIntegerDigits(I)V

    iget-object v5, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v5}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-super {p0, v5}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    const-string v5, "parseBigDecimal"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    const-string v5, "serialVersionOnStream"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v10, :cond_0

    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "positivePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "positiveSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "negativePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "negativeSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "posPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "posSuffixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "negPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "negSuffixPattern"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "multiplier"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "groupingSize"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    const-string v1, "groupingUsed"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "decimalSeparatorAlwaysShown"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "parseBigDecimal"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isParseBigDecimal()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "roundingMode"

    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "symbols"

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "useExponentialNotation"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "minExponentDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    const-string v1, "maximumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "minimumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "maximumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "minimumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/NativeDecimalFormat;

    iput-object v1, v0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    iput-object v1, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/text/DecimalFormat;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormat;

    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_4

    iget-object v3, v0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    iget-object v4, v0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v3, v4}, Llibcore/icu/NativeDecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    invoke-direct {p0, p3, p4}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    if-ne v2, v3, :cond_1

    :try_start_0
    sget-object v2, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v2, v3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v2, v3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "rounding mode UNNECESSARY but rounding required"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    throw v2

    :cond_0
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    :cond_1
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2, p1, p2, p4}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-direct {p0, p3, p4}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1, p2, p4}, Llibcore/icu/NativeDecimalFormat;->formatLong(JLjava/text/FieldPosition;)[C

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-object p3
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    invoke-direct {p0, p2, p3}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    instance-of v2, p1, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p3}, Llibcore/icu/NativeDecimalFormat;->formatLong(JLjava/text/FieldPosition;)[C

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_1
    return-object p2

    :cond_0
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2, v0, p3}, Llibcore/icu/NativeDecimalFormat;->formatBigInteger(Ljava/math/BigInteger;Ljava/text/FieldPosition;)[C

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {v2, p1, p3}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p2

    goto :goto_1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    return-object v0
.end method

.method public getGroupingSize()I
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v0

    return v0
.end method

.method public getMultiplier()I
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v0

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v0

    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isParseBigDecimal()Z

    move-result v0

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isParseIntegerOnly()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 4

    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v1, p1, p2}, Llibcore/icu/NativeDecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setCurrency(Ljava/util/Currency;)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    :cond_0
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setGroupingSize(I)V

    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2

    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMaximumFractionDigits(I)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2

    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMaximumIntegerDigits(I)V

    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2

    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2

    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMinimumIntegerDigits(I)V

    return-void
.end method

.method public setMultiplier(I)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setMultiplier(I)V

    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setParseBigDecimal(Z)V

    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setParseIntegerOnly(Z)V

    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    if-eq p1, v2, :cond_1

    const-wide/high16 v2, 0x3ff0

    const-wide/high16 v4, 0x4024

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v0, v2, v4

    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v2, p1, v0, v1}, Llibcore/icu/NativeDecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;D)V

    :cond_1
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
