.class public abstract Ljava/text/NumberFormat;
.super Ljava/text/Format;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/NumberFormat$Field;
    }
.end annotation


# static fields
.field public static final FRACTION_FIELD:I = 0x1

.field public static final INTEGER_FIELD:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x20094c40ec82f818L


# instance fields
.field private groupingUsed:Z

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingUsed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maxFractionDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maxIntegerDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minFractionDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minIntegerDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "parseIntegerOnly"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/NumberFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-boolean v2, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    const/16 v0, 0x28

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iput v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    const/4 v0, 0x3

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrencyInstance()Ljava/text/NumberFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/NumberFormat;
    .locals 1

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    invoke-static {p0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getIntegerInstance()Ljava/text/NumberFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 2

    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iget-object v1, v1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    return-object v0
.end method

.method public static final getNumberInstance()Ljava/text/NumberFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getPercentInstance()Ljava/text/NumberFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1

    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v5, 0x28

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v1, "groupingUsed"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    const-string v1, "parseIntegerOnly"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    const-string v1, "serialVersionOnStream"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "maxFractionDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    const-string v1, "maxIntegerDigits"

    invoke-virtual {v0, v1, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    const-string v1, "minFractionDigits"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    const-string v1, "minIntegerDigits"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    :goto_0
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v1, v2, :cond_2

    :cond_0
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "min digits greater than max digits"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "maximumFractionDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    const-string v1, "maximumIntegerDigits"

    invoke-virtual {v0, v1, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    const-string v1, "minimumFractionDigits"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    const-string v1, "minimumIntegerDigits"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ltz v1, :cond_3

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ltz v1, :cond_3

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ltz v1, :cond_3

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-gez v1, :cond_4

    :cond_3
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "min or max digits negative"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x7f

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "groupingUsed"

    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v3, "maxFractionDigits"

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    int-to-byte v1, v1

    :goto_0
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    const-string v1, "maximumFractionDigits"

    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "maximumIntegerDigits"

    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v3, "maxIntegerDigits"

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    int-to-byte v1, v1

    :goto_1
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    const-string v3, "minFractionDigits"

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v1, v2, :cond_3

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    int-to-byte v1, v1

    :goto_2
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    const-string v1, "minimumFractionDigits"

    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "minimumIntegerDigits"

    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "minIntegerDigits"

    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ge v3, v2, :cond_0

    iget v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    int-to-byte v2, v2

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    const-string v1, "parseIntegerOnly"

    iget-boolean v2, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/text/NumberFormat;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/NumberFormat;

    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iget-boolean v4, v0, Ljava/text/NumberFormat;->groupingUsed:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v4, v0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    instance-of v4, p1, Ljava/lang/Byte;

    if-nez v4, :cond_0

    instance-of v4, p1, Ljava/lang/Short;

    if-nez v4, :cond_0

    instance-of v4, p1, Ljava/lang/Integer;

    if-nez v4, :cond_0

    instance-of v4, p1, Ljava/lang/Long;

    if-nez v4, :cond_0

    instance-of v4, p1, Ljava/math/BigInteger;

    if-eqz v4, :cond_1

    move-object v4, p1

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isGroupingUsed()Z
    .locals 1

    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable number: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    return-object v0
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 3

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "position is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupingUsed(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    :cond_1
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    :cond_1
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    :cond_1
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    :cond_1
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
