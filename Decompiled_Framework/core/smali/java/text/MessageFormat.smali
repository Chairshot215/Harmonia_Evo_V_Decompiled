.class public Ljava/text/MessageFormat;
.super Ljava/text/Format;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/MessageFormat$Field;,
        Ljava/text/MessageFormat$FieldContainer;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private transient maxArgumentIndex:I

.field private maxOffset:I

.field private transient strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "argumentNumbers"

    const-class v4, [I

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formats"

    const-class v4, [Ljava/text/Format;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "locale"

    const-class v4, Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maxOffset"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "offsets"

    const-class v4, [I

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/MessageFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method private appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .locals 1

    const-string v0, ",number"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ",integer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ",currency"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ",percent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    check-cast p2, Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ",time"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v3, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ",date"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ",time,short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ",date,short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ",time,long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ",date,long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ",time,full"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ",date,full"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    const-string v0, ",date,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    const-string v1, "null"

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    new-instance v11, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Ljava/text/FieldPosition;-><init>(I)V

    const/4 v9, 0x0

    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v9, v1, :cond_6

    iget-object v1, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz p1, :cond_2

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v9

    array-length v3, p1

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v9

    aget-object v7, p1, v1

    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v1, v9

    if-eqz v8, :cond_0

    if-nez v7, :cond_1

    :cond_0
    instance-of v1, v7, Ljava/lang/Number;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v8

    :cond_1
    :goto_1
    instance-of v1, v8, Ljava/text/ChoiceFormat;

    if-eqz v1, :cond_5

    invoke-virtual {v8, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v10, Ljava/text/MessageFormat;

    invoke-direct {v10, v12}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v10, p1, p2, v11}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v1, v9

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v8, v7, v2, v0}, Ljava/text/MessageFormat;->handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v9

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v1, v9

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    instance-of v1, v7, Ljava/util/Date;

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v1, v9

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v7, p2, v11}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v1, v9

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v8, v7, v2, v0}, Ljava/text/MessageFormat;->handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V

    goto :goto_2

    :cond_6
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v1, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    return-object p2
.end method

.method private handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    new-instance v0, Ljava/text/MessageFormat$FieldContainer;

    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    if-ne v0, v1, :cond_0

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p4, p2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0
.end method

.method private handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/Format;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v7

    if-eq v6, v7, :cond_0

    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v4

    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v1

    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v3, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/text/MessageFormat$FieldContainer;

    add-int v7, p3, v4

    add-int v8, p3, v1

    invoke-direct {v6, v7, v8, v0, v5}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_0
.end method

.method private match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I
    .locals 11

    const/4 v10, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    const/4 v9, -0x1

    :goto_0
    if-ge v2, v8, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v7, p4

    :cond_1
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    const/4 v1, 0x1

    aget-object v3, p4, v7

    const/4 v4, 0x0

    aget-object v0, p4, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v9, v7

    :cond_2
    if-ne v9, v10, :cond_3

    move v9, v10

    :goto_1
    return v9

    :cond_3
    aget-object v0, p4, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    :goto_2
    if-ge v2, v8, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-ge v2, v8, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v0, 0x7d

    if-eq v6, v0, :cond_5

    if-nez p3, :cond_6

    const/16 v0, 0x2c

    if-ne v6, v0, :cond_6

    :cond_5
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_1
.end method

.method private parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-ge v5, v3, :cond_0

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x7d

    if-eq v1, v8, :cond_1

    const/16 v8, 0x2c

    if-eq v1, v8, :cond_1

    move v5, v6

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Missing element format"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v8, 0x7d

    if-ne v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "time"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "date"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "number"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "choice"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown element format"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v7, :pswitch_data_0

    const/16 v8, 0x7d

    const/16 v9, 0x7b

    :try_start_0
    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v8, Ljava/text/ChoiceFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v8, 0x2

    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_0

    :cond_4
    const/4 v8, 0x2

    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto :goto_0

    :cond_5
    const/4 v8, 0x1

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "full"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "long"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "medium"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "short"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_6

    const/16 v8, 0x7d

    const/16 v9, 0x7b

    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_0

    :cond_6
    packed-switch v2, :pswitch_data_1

    :goto_2
    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v8}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x2

    goto :goto_2

    :pswitch_4
    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v2, v8}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_5
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_8

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x1

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "currency"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "percent"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "integer"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, p2, v8, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_9

    const/16 v8, 0x7d

    const/16 v9, 0x7b

    invoke-static {p1, p2, v0, v8, v9}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    new-instance v8, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/text/DecimalFormatSymbols;

    iget-object v11, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v8, v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    goto/16 :goto_0

    :cond_9
    packed-switch v4, :pswitch_data_2

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_6
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_7
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v6, "argumentNumbers"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    check-cast v6, [I

    iput-object v6, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    const-string v6, "formats"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/text/Format;

    check-cast v6, [Ljava/text/Format;

    iput-object v6, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    const-string v6, "locale"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    iput-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    const-string v6, "maxOffset"

    invoke-virtual {v0, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    const-string v6, "offsets"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v4, v6

    check-cast v4, [I

    const-string v6, "pattern"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    :goto_0
    new-array v6, v3, [Ljava/lang/String;

    iput-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v6, :cond_3

    iget-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget v7, v4, v1

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    aget v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v3, v7

    goto :goto_0

    :cond_1
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    aget v7, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_2

    :goto_2
    add-int/2addr v3, v6

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_4

    iget-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    :cond_4
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v7, "argumentNumbers"

    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    const-string v7, "formats"

    invoke-virtual {v1, v7, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "locale"

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "maxOffset"

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const/4 v3, 0x0

    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v5, v7, 0x1

    new-array v4, v5, [I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v7, :cond_0

    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    aput v3, v4, v2

    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v7, "offsets"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "pattern"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/text/ParsePosition;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v6, v0, [I

    const/4 v12, -0x1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v9, :cond_7

    const/16 v17, 0x7b

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v7, v2}, Ljava/text/Format;->upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    if-lt v14, v9, :cond_1

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Invalid argument number"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    move v14, v15

    :cond_1
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v17, 0x7d

    move/from16 v0, v17

    if-eq v8, v0, :cond_4

    const/16 v17, 0x2c

    move/from16 v0, v17

    if-eq v8, v0, :cond_4

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    const/16 v17, 0x39

    move/from16 v0, v17

    if-le v8, v0, :cond_2

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Invalid argument number"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_2
    mul-int/lit8 v17, v3, 0xa

    add-int/lit8 v18, v8, -0x30

    add-int v3, v17, v18

    if-ltz v3, :cond_3

    if-lt v15, v9, :cond_0

    :cond_3
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Invalid argument number"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_4
    add-int/lit8 v14, v15, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;->parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_5

    array-length v0, v6

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [I

    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v6, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v13

    :cond_5
    add-int/lit8 v5, v4, 0x1

    aput v3, v6, v4

    if-le v3, v12, :cond_8

    move v12, v3

    move v4, v5

    :cond_6
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    new-array v0, v4, [Ljava/text/Format;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/text/Format;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    move-object/from16 v0, p0

    iput v12, v0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    return-void

    :cond_8
    move v4, v5

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/MessageFormat;

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v3

    new-array v0, v3, [Ljava/text/Format;

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v3

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    aput-object v3, v0, v2

    goto :goto_0

    :cond_1
    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    move v3, v2

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v4, p1, Ljava/text/MessageFormat;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/text/MessageFormat;

    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v5, v0, Ljava/text/MessageFormat;->maxOffset:I

    if-ne v4, v5, :cond_0

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v4, :cond_2

    iget-object v4, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v4, v1

    iget-object v5, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    iget-object v5, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget-object v5, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v5, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 9

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    new-instance v5, Ljava/text/FieldPosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, p1, v1, v5, v3}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/MessageFormat$FieldContainer;

    iget-object v5, v2, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v6, v2, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    iget v7, v2, Ljava/text/MessageFormat$FieldContainer;->start:I

    iget v8, v2, Ljava/text/MessageFormat$FieldContainer;->end:I

    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    return-object v5
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 1

    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v0}, [Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/Format;

    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 4

    iget v2, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/text/Format;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Parse failure"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 12

    const/4 v11, -0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    sget-object v6, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    :goto_0
    return-object v6

    :cond_0
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    iget v9, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    add-int/lit8 v9, v9, 0x1

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    iget v9, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v9, :cond_6

    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v7, v9, v1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v0, v9, v1

    if-nez v0, :cond_4

    add-int/lit8 v9, v1, 0x1

    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_3

    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v11, :cond_2

    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move v4, v3

    :goto_2
    iget-object v9, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v9, v9, v1

    aput-object v5, v6, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v0, p1, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    if-eq v9, v11, :cond_5

    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v8

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    goto :goto_2

    :cond_6
    iget v9, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_8

    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v10, v10, 0x1

    aget-object v7, v9, v10

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v6, v8

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    :cond_8
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    goto/16 :goto_0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 1

    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 4

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v1, v2

    array-length v2, p1

    if-ge v2, v1, :cond_0

    array-length v1, p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 8

    const/4 v7, 0x0

    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v3, :cond_2

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v0, v3, v1

    instance-of v3, v0, Ljava/text/DecimalFormat;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-instance v4, Ljava/text/DecimalFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v6, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v4, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v7, v3, v1

    goto :goto_1

    :cond_1
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-instance v4, Ljava/text/SimpleDateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v3, v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v7, v3, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 13

    const/16 v12, 0x7d

    const/16 v11, 0x7b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_0
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v4, v10, :cond_a

    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v10, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v10, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v10, v4

    const/4 v8, 0x0

    instance-of v10, v3, Ljava/text/ChoiceFormat;

    if-eqz v10, :cond_4

    const-string v10, ",choice,"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v3, Ljava/text/ChoiceFormat;

    invoke-virtual {v3}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v8

    :cond_0
    :goto_1
    if-eqz v8, :cond_9

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v2, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v7, :cond_9

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v10, 0x27

    if-ne v1, v10, :cond_1

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :cond_1
    :goto_3
    if-nez v9, :cond_3

    if-ne v1, v11, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    if-ne v1, v12, :cond_3

    if-lez v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    :cond_3
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    goto :goto_2

    :cond_4
    instance-of v10, v3, Ljava/text/DecimalFormat;

    if-eqz v10, :cond_5

    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    instance-of v10, v3, Ljava/text/SimpleDateFormat;

    if-eqz v10, :cond_6

    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unknown format"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    const-string v10, "\'}"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_b

    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method
