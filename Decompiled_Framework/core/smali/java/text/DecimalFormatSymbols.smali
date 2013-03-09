.class public Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private transient currency:Ljava/util/Currency;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private transient exponentSeparator:Ljava/lang/String;

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private transient locale:Ljava/util/Locale;

.field private minusSign:C

.field private monetarySeparator:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:C

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "currencySymbol"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "decimalSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "digit"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "exponential"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "exponentialSeparator"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "infinity"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "intlCurrencySymbol"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minusSign"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "monetarySeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "NaN"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "patternSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "percent"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "perMill"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "zeroDigit"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "locale"

    const-class v4, Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iget-char v2, v1, Llibcore/icu/LocaleData;->zeroDigit:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    const/16 v2, 0x23

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    iget-char v2, v1, Llibcore/icu/LocaleData;->decimalSeparator:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v2, v1, Llibcore/icu/LocaleData;->groupingSeparator:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v2, v1, Llibcore/icu/LocaleData;->patternSeparator:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v2, v1, Llibcore/icu/LocaleData;->percent:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    iget-char v2, v1, Llibcore/icu/LocaleData;->perMill:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    iget-char v2, v1, Llibcore/icu/LocaleData;->monetarySeparator:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v2, v1, Llibcore/icu/LocaleData;->minusSign:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    iget-object v2, v1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v2, v1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v2, v1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, v1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v2, v1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableDecimalFormatSymbolsLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ljava/text/DecimalFormatSymbols;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, 0x2e

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "currencySymbol"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    const-string v3, "decimalSeparator"

    invoke-virtual {v1, v3, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    const-string v3, "digit"

    const/16 v4, 0x23

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    const-string v3, "groupingSeparator"

    const/16 v4, 0x2c

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    const-string v3, "infinity"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    const-string v3, "intlCurrencySymbol"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const-string v3, "minusSign"

    const/16 v4, 0x2d

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    const-string v3, "NaN"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    const-string v3, "patternSeparator"

    const/16 v4, 0x3b

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    const-string v3, "percent"

    const/16 v4, 0x25

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    const-string v3, "perMill"

    const/16 v4, 0x2030

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    const-string v3, "zeroDigit"

    const/16 v4, 0x30

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    const-string v3, "locale"

    invoke-virtual {v1, v3, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    :goto_0
    if-nez v2, :cond_1

    const-string v3, "E"

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    :goto_1
    :try_start_0
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v3

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    const-string v3, "monetarySeparator"

    invoke-virtual {v1, v3, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    const-string v3, "exponential"

    const/16 v4, 0x45

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "exponentialSeparator"

    const-string v4, "E"

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "currencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "decimalSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "digit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "exponential"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "exponentialSeparator"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "groupingSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "infinity"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "intlCurrencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "minusSign"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "monetarySeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "NaN"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "patternSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "percent"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "perMill"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "zeroDigit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    const-string v1, "locale"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
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
    instance-of v3, p1, Ljava/text/DecimalFormatSymbols;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v3, v4, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->digit:C

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    if-ne v3, v4, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v3, v4, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    if-ne v3, v4, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->percent:C

    if-ne v3, v4, :cond_3

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    iget-char v4, v0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDigit()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public getPerMill()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public getPercent()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public getZeroDigit()C
    .locals 1

    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    return-void
.end method

.method public setDigit(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_1
.end method

.method public setMinusSign(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-void
.end method

.method public setPatternSeparator(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    return-void
.end method

.method public setPerMill(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    return-void
.end method

.method public setPercent(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    return-void
.end method

.method public setZeroDigit(C)V
    .locals 0

    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",currencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",decimalSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",digit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exponentSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",groupingSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",infinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",intlCurrencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",minusSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",monetarySeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NaN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",patternSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",perMill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zeroDigit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
