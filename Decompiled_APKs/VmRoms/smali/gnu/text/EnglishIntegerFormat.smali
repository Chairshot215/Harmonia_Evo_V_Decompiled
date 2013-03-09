.class public Lgnu/text/EnglishIntegerFormat;
.super Ljava/text/NumberFormat;
.source "EnglishIntegerFormat.java"


# static fields
.field private static cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final ones:[Ljava/lang/String;

.field public static final onesth:[Ljava/lang/String;

.field private static ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final power1000s:[Ljava/lang/String;

.field public static final tens:[Ljava/lang/String;

.field public static final tensth:[Ljava/lang/String;


# instance fields
.field public ordinal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 34
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v4

    const-string v1, "one"

    aput-object v1, v0, v5

    const-string v1, "two"

    aput-object v1, v0, v6

    const-string v1, "three"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "four"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "five"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "six"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "seven"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eight"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nine"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ten"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "twelve"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "thirteen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fourteen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fifteen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sixteen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "seventeen"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "eighteen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "nineteen"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    .line 42
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v4

    const-string v1, "first"

    aput-object v1, v0, v5

    const-string v1, "second"

    aput-object v1, v0, v6

    const-string v1, "third"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "fourth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fifth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sixth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "seventh"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eighth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ninth"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tenth"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eleventh"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "twelveth"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "thirteenth"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fourteenth"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fifteenth"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sixteenth"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "seventeenth"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "eighteenth"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "nineteenth"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    .line 50
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    const-string v1, "twenty"

    aput-object v1, v0, v6

    const-string v1, "thirty"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "forty"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fifty"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sixty"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "seventy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eighty"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ninety"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    const-string v1, "twentieth"

    aput-object v1, v0, v6

    const-string v1, "thirtieth"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "fortieth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fiftieth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sixtieth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "seventieth"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eightieth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ninetieth"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v4

    const-string v1, " thousand"

    aput-object v1, v0, v5

    const-string v1, " million"

    aput-object v1, v0, v6

    const-string v1, " billion"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, " trillion"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " quadrillion"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " quintillion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " sextillion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " septillion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " octillion"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " nonillion"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " decillion"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, " undecillion"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " duodecillion"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " tredecillion"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " quattuordecillion"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " quindecillion"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " sexdecillion"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " septendecillion"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " octodecillion"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, " novemdecillion"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, " vigintillion"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "ordinal"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 15
    iput-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    .line 16
    return-void
.end method

.method public static getInstance(Z)Lgnu/text/EnglishIntegerFormat;
    .locals 2
    .parameter "ordinal"

    .prologue
    .line 20
    if-eqz p0, :cond_1

    .line 22
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lgnu/text/EnglishIntegerFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 24
    :cond_0
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 30
    :goto_0
    return-object v0

    .line 28
    :cond_1
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez v0, :cond_2

    .line 29
    new-instance v0, Lgnu/text/EnglishIntegerFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 30
    :cond_2
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    goto :goto_0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 179
    double-to-long v0, p1

    .line 180
    .local v0, inum:J
    long-to-double v2, v0

    cmpl-double v2, v2, p1

    if-nez v2, :cond_0

    .line 181
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 183
    :goto_0
    return-object v2

    .line 182
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, p3

    .line 183
    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    const-wide/16 v1, 0x0

    .line 159
    cmp-long v0, p1, v1

    if-nez v0, :cond_2

    .line 160
    iget-boolean v0, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    if-eqz v0, :cond_1

    const-string v0, "zeroth"

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :goto_1
    if-eqz p4, :cond_0

    .line 174
    :cond_0
    return-object p3

    .line 160
    :cond_1
    const-string v0, "zero"

    goto :goto_0

    .line 163
    :cond_2
    cmp-long v0, p1, v1

    if-gez v0, :cond_3

    .line 165
    const-string v0, "minus "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    neg-long p1, p1

    .line 168
    :cond_3
    const/4 v4, 0x0

    iget-boolean v5, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    goto :goto_1
.end method

.method format(Ljava/lang/StringBuffer;JIZ)V
    .locals 6
    .parameter "sbuf"
    .parameter "num"
    .parameter "exp1000"
    .parameter "ordinal"

    .prologue
    .line 108
    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 110
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    add-int/lit8 v4, p4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 111
    const-wide/16 v0, 0x3e8

    rem-long/2addr p2, v0

    .line 112
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 113
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 119
    long-to-int v0, p2

    if-eqz p5, :cond_3

    if-nez p4, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format999(Ljava/lang/StringBuffer;IZ)V

    .line 120
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    array-length v0, v0

    if-lt p4, v0, :cond_4

    .line 122
    const-string v0, " times ten to the "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    mul-int/lit8 v0, p4, 0x3

    int-to-long v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 124
    const-string v0, " power"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_1
    :goto_2
    return-void

    .line 114
    :cond_2
    if-eqz p5, :cond_0

    .line 115
    const-string v0, "th"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 119
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 126
    :cond_4
    if-lez p4, :cond_1

    .line 127
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method format999(Ljava/lang/StringBuffer;IZ)V
    .locals 4
    .parameter "sbuf"
    .parameter "num"
    .parameter "ordinal"

    .prologue
    const/16 v3, 0x20

    .line 77
    const/16 v2, 0x64

    if-lt p2, v2, :cond_1

    .line 79
    div-int/lit8 v0, p2, 0x64

    .line 80
    .local v0, num100s:I
    rem-int/lit8 p2, p2, 0x64

    .line 81
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 83
    sget-object v2, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    const-string v2, "hundred"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    if-lez p2, :cond_4

    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    .end local v0           #num100s:I
    :cond_1
    :goto_0
    const/16 v2, 0x14

    if-lt p2, v2, :cond_2

    .line 94
    div-int/lit8 v1, p2, 0xa

    .line 95
    .local v1, num10s:I
    rem-int/lit8 p2, p2, 0xa

    .line 96
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    sget-object v2, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    :goto_1
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    if-lez p2, :cond_2

    .line 98
    const/16 v2, 0x2d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    .end local v1           #num10s:I
    :cond_2
    if-lez p2, :cond_3

    .line 102
    if-eqz p3, :cond_6

    sget-object v2, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    :goto_2
    aget-object v2, v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_3
    return-void

    .line 89
    .restart local v0       #num100s:I
    :cond_4
    if-eqz p3, :cond_1

    .line 90
    const-string v2, "th"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 96
    .end local v0           #num100s:I
    .restart local v1       #num10s:I
    :cond_5
    sget-object v2, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    goto :goto_1

    .line 102
    .end local v1           #num10s:I
    :cond_6
    sget-object v2, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 188
    new-instance v0, Ljava/lang/Error;

    const-string v1, "EnglishIntegerFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 2
    .parameter "value"
    .parameter "out"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 155
    return-void

    .line 154
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .locals 2
    .parameter "value"
    .parameter "out"

    .prologue
    .line 133
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 134
    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .locals 3
    .parameter "value"
    .parameter "out"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-interface {p3, v0, v1, v2}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    .line 145
    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "value"
    .parameter "out"

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 150
    return-void
.end method
