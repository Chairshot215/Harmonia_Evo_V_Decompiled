.class public Lgnu/text/RomanIntegerFormat;
.super Ljava/text/NumberFormat;
.source "RomanIntegerFormat.java"


# static fields
.field static final codes:Ljava/lang/String; = "IVXLCDM"

.field private static newRoman:Lgnu/text/RomanIntegerFormat;

.field private static oldRoman:Lgnu/text/RomanIntegerFormat;


# instance fields
.field public oldStyle:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "oldStyle"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 13
    iput-boolean p1, p0, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    .line 14
    return-void
.end method

.method public static format(I)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/text/RomanIntegerFormat;->format(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(IZ)Ljava/lang/String;
    .locals 8
    .parameter "num"
    .parameter "oldStyle"

    .prologue
    .line 40
    if-lez p0, :cond_0

    const/16 v5, 0x1387

    if-lt p0, v5, :cond_1

    .line 41
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    :goto_0
    return-object v5

    .line 42
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x14

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 43
    .local v3, sbuf:Ljava/lang/StringBuffer;
    const/4 v1, 0x3

    .line 44
    .local v1, power:I
    const/16 v4, 0x3e8

    .line 45
    .local v4, unit:I
    :goto_1
    if-ltz v1, :cond_7

    .line 47
    div-int v0, p0, v4

    .line 48
    .local v0, digit:I
    mul-int v5, v0, v4

    sub-int/2addr p0, v5

    .line 49
    if-nez v0, :cond_3

    .line 45
    :cond_2
    :goto_2
    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 51
    :cond_3
    if-nez p1, :cond_5

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_5

    .line 53
    :cond_4
    const-string v5, "IVXLCDM"

    mul-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    const-string v5, "IVXLCDM"

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v7, v0, 0x1

    div-int/lit8 v7, v7, 0x5

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 57
    :cond_5
    move v2, v0

    .line 58
    .local v2, rest:I
    const/4 v5, 0x5

    if-lt v2, v5, :cond_6

    .line 60
    const-string v5, "IVXLCDM"

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v2, v2, -0x5

    .line 63
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 65
    const-string v5, "IVXLCDM"

    mul-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 68
    .end local v0           #digit:I
    .end local v2           #rest:I
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getInstance(Z)Lgnu/text/RomanIntegerFormat;
    .locals 2
    .parameter "oldStyle"

    .prologue
    .line 22
    if-eqz p0, :cond_1

    .line 24
    sget-object v0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lgnu/text/RomanIntegerFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/text/RomanIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    .line 26
    :cond_0
    sget-object v0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    .line 32
    :goto_0
    return-object v0

    .line 30
    :cond_1
    sget-object v0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    if-nez v0, :cond_2

    .line 31
    new-instance v0, Lgnu/text/RomanIntegerFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/text/RomanIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    .line 32
    :cond_2
    sget-object v0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    goto :goto_0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 100
    double-to-long v0, p1

    .line 101
    .local v0, inum:J
    long-to-double v2, v0

    cmpl-double v2, v2, p1

    if-nez v2, :cond_0

    .line 102
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/RomanIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 104
    :goto_0
    return-object v2

    .line 103
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, p3

    .line 104
    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 79
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_1

    iget-boolean v6, p0, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    if-eqz v6, :cond_0

    const/16 v6, 0x1387

    :goto_0
    int-to-long v6, v6

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    .line 80
    long-to-int v6, p1

    iget-boolean v7, p0, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    invoke-static {v6, v7}, Lgnu/text/RomanIntegerFormat;->format(IZ)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, str:Ljava/lang/String;
    :goto_1
    if-eqz p4, :cond_3

    .line 86
    const-wide/16 v4, 0x1

    .line 87
    .local v4, tval:J
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 88
    .local v1, len:I
    move v0, v1

    .local v0, i:I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    .line 89
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x9

    add-long v4, v6, v8

    goto :goto_2

    .line 79
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #str:Ljava/lang/String;
    .end local v4           #tval:J
    :cond_0
    const/16 v6, 0xf9f

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #str:Ljava/lang/String;
    goto :goto_1

    .line 91
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v4       #tval:J
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    .local v3, tbuf:Ljava/lang/StringBuffer;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5, v3, p4}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 94
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #tbuf:Ljava/lang/StringBuffer;
    .end local v4           #tval:J
    :cond_3
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    return-object p3
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/Error;

    const-string v1, "RomanIntegerFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
