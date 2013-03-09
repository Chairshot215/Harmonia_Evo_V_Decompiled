.class public Lgnu/kawa/functions/ParseFormat;
.super Lgnu/mapping/Procedure1;
.source "ParseFormat.java"


# static fields
.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000

.field public static final SEEN_HASH:I = 0x10

.field public static final SEEN_MINUS:I = 0x1

.field public static final SEEN_PLUS:I = 0x2

.field public static final SEEN_SPACE:I = 0x4

.field public static final SEEN_ZERO:I = 0x8

.field public static final parseFormat:Lgnu/kawa/functions/ParseFormat;


# instance fields
.field emacsStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/ParseFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ParseFormat;-><init>(Z)V

    sput-object v0, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "emacsStyle"

    .prologue
    .line 17
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 18
    iput-boolean p1, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 19
    return-void
.end method

.method public static asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;
    .locals 7
    .parameter "arg"
    .parameter "style"

    .prologue
    .line 234
    :try_start_0
    instance-of v4, p0, Lgnu/text/ReportFormat;

    if-eqz v4, :cond_0

    .line 235
    check-cast p0, Lgnu/text/ReportFormat;

    .end local p0
    move-object v4, p0

    .line 254
    :goto_0
    return-object v4

    .line 236
    .restart local p0
    :cond_0
    const/16 v4, 0x7e

    if-ne p1, v4, :cond_1

    .line 237
    new-instance v4, Lgnu/kawa/functions/LispFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 258
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 260
    .local v1, ex:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing format ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    :try_start_1
    instance-of v4, p0, Lgnu/lists/FString;

    if-eqz v4, :cond_2

    .line 243
    move-object v0, p0

    check-cast v0, Lgnu/lists/FString;

    move-object v3, v0

    .line 244
    .local v3, str:Lgnu/lists/FString;
    new-instance v2, Lgnu/mapping/CharArrayInPort;

    iget-object v4, v3, Lgnu/lists/FString;->data:[C

    iget v5, v3, Lgnu/lists/FString;->size:I

    invoke-direct {v2, v4, v5}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 250
    .end local v3           #str:Lgnu/lists/FString;
    .local v2, iport:Lgnu/mapping/InPort;
    :goto_1
    :try_start_2
    invoke-static {v2, p1}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 254
    :try_start_3
    invoke-virtual {v2}, Lgnu/mapping/InPort;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 262
    .end local v2           #iport:Lgnu/mapping/InPort;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 264
    .local v1, ex:Ljava/text/ParseException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid format ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    .end local v1           #ex:Ljava/text/ParseException;
    :cond_2
    :try_start_4
    new-instance v2, Lgnu/mapping/CharArrayInPort;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    .restart local v2       #iport:Lgnu/mapping/InPort;
    goto :goto_1

    .line 254
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lgnu/mapping/InPort;->close()V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 266
    .end local v2           #iport:Lgnu/mapping/InPort;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 268
    .local v1, ex:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "End while parsing format"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    .locals 19
    .parameter "fmt"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v15, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 37
    .local v15, fbuf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 38
    .local v3, position:I
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .local v16, formats:Ljava/util/Vector;
    move v5, v3

    .line 42
    .end local v3           #position:I
    .local v5, position:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 43
    .local v3, ch:I
    if-ltz v3, :cond_1

    .line 45
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 48
    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 52
    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 54
    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 59
    .local v4, len:I
    if-lez v4, :cond_2

    .line 61
    new-array v6, v4, [C

    .line 62
    .local v6, text:[C
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v15, v7, v4, v6, v8}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 63
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    .end local v4           #len:I
    new-instance v4, Lgnu/text/LiteralFormat;

    invoke-direct {v4, v6}, Lgnu/text/LiteralFormat;-><init>([C)V

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    .end local v6           #text:[C
    :cond_2
    if-gez v3, :cond_3

    .line 213
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result p1

    .line 214
    .local p1, fcount:I
    const/16 p0, 0x1

    move/from16 v0, p1

    move/from16 v1, p0

    if-ne v0, v1, :cond_17

    .line 216
    .end local p0
    const/16 p0, 0x0

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .line 217
    .local p0, f:Ljava/lang/Object;
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/text/ReportFormat;

    move v3, v0

    .end local v3           #ch:I
    if-eqz v3, :cond_17

    .line 218
    check-cast p0, Lgnu/text/ReportFormat;

    .line 222
    .end local p0           #f:Ljava/lang/Object;
    .end local p1           #fcount:I
    :goto_1
    return-object p0

    .line 69
    .restart local v3       #ch:I
    .local p0, fmt:Lgnu/text/LineBufferedReader;
    .local p1, magic:C
    :cond_3
    const/16 v4, 0x24

    if-ne v3, v4, :cond_1c

    .line 71
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 72
    int-to-char v4, v3

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .end local v5           #position:I
    move-result v4

    .line 73
    .local v4, position:I
    if-gez v4, :cond_1b

    .line 74
    new-instance p0, Ljava/text/ParseException;

    .end local p0           #fmt:Lgnu/text/LineBufferedReader;
    const-string p1, "missing number (position) after \'%$\'"

    .end local p1           #magic:C
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v3           #ch:I
    throw p0

    .line 82
    .restart local v3       #ch:I
    .local v4, digit:I
    .restart local v5       #position:I
    .restart local p0       #fmt:Lgnu/text/LineBufferedReader;
    .restart local p1       #magic:C
    :cond_4
    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    .end local v5           #position:I
    .local v4, position:I
    move v5, v4

    .line 78
    .end local v4           #position:I
    .restart local v5       #position:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 79
    int-to-char v4, v3

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 80
    .local v4, digit:I
    if-gez v4, :cond_4

    .line 84
    add-int/lit8 v4, v5, -0x1

    .end local v5           #position:I
    .local v4, position:I
    move/from16 v17, v4

    .line 87
    .end local v4           #position:I
    .local v17, position:I
    :goto_3
    const/4 v4, 0x0

    .local v4, flags:I
    move v6, v4

    .line 90
    .end local v4           #flags:I
    .local v6, flags:I
    :goto_4
    int-to-char v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 101
    const/high16 v10, -0x4000

    .line 102
    .local v10, width:I
    int-to-char v4, v3

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 103
    .local v4, digit:I
    if-ltz v4, :cond_6

    .line 105
    move v10, v4

    .line 108
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 109
    int-to-char v4, v3

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .end local v4           #digit:I
    move-result v4

    .line 110
    .restart local v4       #digit:I
    if-gez v4, :cond_5

    move v5, v4

    .line 118
    .end local v4           #digit:I
    .local v5, digit:I
    :goto_6
    const/high16 v4, -0x4000

    .line 119
    .local v4, precision:I
    const/16 v7, 0x2e

    if-ne v3, v7, :cond_19

    .line 121
    const/16 v4, 0x2a

    if-ne v3, v4, :cond_7

    .line 122
    .end local v4           #precision:I
    const/high16 v4, -0x6000

    .restart local v4       #precision:I
    move/from16 v18, v5

    .end local v5           #digit:I
    .local v18, digit:I
    move v5, v3

    .end local v3           #ch:I
    .local v5, ch:I
    move/from16 v3, v18

    .line 137
    .end local v18           #digit:I
    .local v3, digit:I
    :goto_7
    sparse-switch v5, :sswitch_data_1

    .line 191
    new-instance p0, Ljava/text/ParseException;

    .end local p0           #fmt:Lgnu/text/LineBufferedReader;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #magic:C
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown format character \'"

    .end local v3           #digit:I
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\'"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 92
    .end local v4           #precision:I
    .end local v5           #ch:I
    .end local v10           #width:I
    .local v3, ch:I
    .restart local p0       #fmt:Lgnu/text/LineBufferedReader;
    .restart local p1       #magic:C
    :sswitch_0
    or-int/lit8 v3, v6, 0x1

    .end local v6           #flags:I
    .local v3, flags:I
    move v4, v3

    .line 88
    .end local v3           #flags:I
    .local v4, flags:I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .local v3, ch:I
    move v6, v4

    .end local v4           #flags:I
    .restart local v6       #flags:I
    goto :goto_4

    .line 93
    :sswitch_1
    or-int/lit8 v3, v6, 0x2

    .end local v6           #flags:I
    .local v3, flags:I
    move v4, v3

    .end local v3           #flags:I
    .restart local v4       #flags:I
    goto :goto_8

    .line 94
    .end local v4           #flags:I
    .local v3, ch:I
    .restart local v6       #flags:I
    :sswitch_2
    or-int/lit8 v3, v6, 0x4

    .end local v6           #flags:I
    .local v3, flags:I
    move v4, v3

    .end local v3           #flags:I
    .restart local v4       #flags:I
    goto :goto_8

    .line 95
    .end local v4           #flags:I
    .local v3, ch:I
    .restart local v6       #flags:I
    :sswitch_3
    or-int/lit8 v3, v6, 0x8

    .end local v6           #flags:I
    .local v3, flags:I
    move v4, v3

    .end local v3           #flags:I
    .restart local v4       #flags:I
    goto :goto_8

    .line 96
    .end local v4           #flags:I
    .local v3, ch:I
    .restart local v6       #flags:I
    :sswitch_4
    or-int/lit8 v3, v6, 0x10

    .end local v6           #flags:I
    .local v3, flags:I
    move v4, v3

    .end local v3           #flags:I
    .restart local v4       #flags:I
    goto :goto_8

    .line 112
    .local v3, ch:I
    .local v4, digit:I
    .restart local v6       #flags:I
    .restart local v10       #width:I
    :cond_5
    mul-int/lit8 v5, v10, 0xa

    add-int v10, v5, v4

    goto :goto_5

    .line 115
    :cond_6
    const/16 v5, 0x2a

    if-ne v3, v5, :cond_1a

    .line 116
    const/high16 v10, -0x6000

    move v5, v4

    .end local v4           #digit:I
    .local v5, digit:I
    goto :goto_6

    .line 125
    :cond_7
    const/4 v4, 0x0

    .line 128
    .local v4, precision:I
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 129
    int-to-char v5, v3

    const/16 v7, 0xa

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    .end local v5           #digit:I
    move-result v5

    .line 130
    .restart local v5       #digit:I
    if-gez v5, :cond_8

    move/from16 v18, v5

    .end local v5           #digit:I
    .restart local v18       #digit:I
    move v5, v3

    .end local v3           #ch:I
    .local v5, ch:I
    move/from16 v3, v18

    .line 131
    .end local v18           #digit:I
    .local v3, digit:I
    goto :goto_7

    .line 132
    .local v3, ch:I
    .local v5, digit:I
    :cond_8
    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v5

    goto :goto_9

    .line 141
    .local v3, digit:I
    .local v5, ch:I
    :sswitch_5
    new-instance v3, Lgnu/kawa/functions/ObjectFormat;

    .end local v3           #digit:I
    const/16 v7, 0x53

    if-ne v5, v7, :cond_9

    const/4 v5, 0x1

    .end local v5           #ch:I
    :goto_a
    invoke-direct {v3, v5, v4}, Lgnu/kawa/functions/ObjectFormat;-><init>(ZI)V

    .local v3, format:Ljava/text/Format;
    move-object v4, v3

    .end local v3           #format:Ljava/text/Format;
    .local v4, format:Ljava/text/Format;
    move v3, v6

    .line 193
    .end local v6           #flags:I
    .local v3, flags:I
    :goto_b
    if-lez v10, :cond_18

    .line 195
    and-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_14

    const/16 v5, 0x30

    move v11, v5

    .line 197
    .local v11, padChar:C
    :goto_c
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_15

    .line 198
    .end local v3           #flags:I
    const/16 v3, 0x64

    .local v3, where:I
    move v5, v3

    .line 203
    .end local v3           #where:I
    .local v5, where:I
    :goto_d
    new-instance v3, Lgnu/text/PadFormat;

    invoke-direct {v3, v4, v10, v11, v5}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    .line 209
    .end local v4           #format:Ljava/text/Format;
    .end local v5           #where:I
    .end local v11           #padChar:C
    .local v3, format:Ljava/text/Format;
    :goto_e
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v3, v17, 0x1

    .end local v17           #position:I
    .local v3, position:I
    move v5, v3

    .line 211
    .end local v3           #position:I
    .local v5, position:I
    goto/16 :goto_0

    .line 141
    .local v4, precision:I
    .local v5, ch:I
    .restart local v6       #flags:I
    .restart local v17       #position:I
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .line 150
    .local v3, digit:I
    :sswitch_6
    const/4 v8, 0x0

    .line 151
    .local v8, fflags:I
    const/16 v3, 0x64

    if-eq v5, v3, :cond_a

    .end local v3           #digit:I
    const/16 v3, 0x69

    if-ne v5, v3, :cond_10

    .line 152
    :cond_a
    const/16 v3, 0xa

    .line 160
    .local v3, base:I
    :cond_b
    :goto_f
    const/4 v5, 0x0

    .line 161
    .local v5, seenColon:Z
    const/4 v5, 0x0

    .line 162
    .local v5, seenAt:Z
    and-int/lit8 v5, v6, 0x9

    const/16 v7, 0x8

    if-ne v5, v7, :cond_12

    .end local v5           #seenAt:Z
    const/16 v5, 0x30

    move v11, v5

    .line 164
    .restart local v11       #padChar:C
    :goto_10
    and-int/lit8 v5, v6, 0x10

    if-eqz v5, :cond_c

    .line 165
    or-int/lit8 v8, v8, 0x8

    .line 166
    :cond_c
    and-int/lit8 v5, v6, 0x2

    if-eqz v5, :cond_d

    .line 167
    or-int/lit8 v8, v8, 0x2

    .line 168
    :cond_d
    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_e

    .line 169
    or-int/lit8 v8, v8, 0x10

    .line 170
    :cond_e
    and-int/lit8 v5, v6, 0x4

    if-eqz v5, :cond_f

    .line 171
    or-int/lit8 v8, v8, 0x4

    .line 172
    :cond_f
    const/high16 v5, -0x4000

    if-eq v4, v5, :cond_13

    .line 174
    and-int/lit8 v9, v6, -0x9

    .line 175
    .end local v6           #flags:I
    .local v9, flags:I
    or-int/lit8 v8, v8, 0x40

    .line 176
    const/16 v5, 0x30

    const/high16 v6, -0x4000

    const/high16 v7, -0x4000

    invoke-static/range {v3 .. v8}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v3

    .local v3, format:Ljava/text/Format;
    move-object v4, v3

    .end local v3           #format:Ljava/text/Format;
    .local v4, format:Ljava/text/Format;
    move v3, v9

    .end local v9           #flags:I
    .local v3, flags:I
    goto :goto_b

    .line 153
    .end local v3           #flags:I
    .end local v11           #padChar:C
    .local v4, precision:I
    .local v5, ch:I
    .restart local v6       #flags:I
    :cond_10
    const/16 v3, 0x6f

    if-ne v5, v3, :cond_11

    .line 154
    const/16 v3, 0x8

    .local v3, base:I
    goto :goto_f

    .line 157
    .end local v3           #base:I
    :cond_11
    const/16 v3, 0x10

    .line 158
    .restart local v3       #base:I
    const/16 v7, 0x58

    if-ne v5, v7, :cond_b

    const/16 v8, 0x20

    goto :goto_f

    .line 162
    .end local v5           #ch:I
    :cond_12
    const/16 v5, 0x20

    move v11, v5

    goto :goto_10

    .line 181
    .restart local v11       #padChar:C
    :cond_13
    const/high16 v12, -0x4000

    const/high16 v13, -0x4000

    move v9, v3

    move v14, v8

    invoke-static/range {v9 .. v14}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v3

    .local v3, format:Ljava/text/Format;
    move-object v4, v3

    .end local v3           #format:Ljava/text/Format;
    .local v4, format:Ljava/text/Format;
    move v3, v6

    .line 184
    .end local v6           #flags:I
    .local v3, flags:I
    goto/16 :goto_b

    .line 188
    .end local v8           #fflags:I
    .end local v11           #padChar:C
    .local v3, digit:I
    .local v4, precision:I
    .restart local v5       #ch:I
    .restart local v6       #flags:I
    :sswitch_7
    new-instance v3, Lgnu/kawa/functions/ObjectFormat;

    .end local v3           #digit:I
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    .end local v4           #precision:I
    .local v3, format:Ljava/text/Format;
    move-object v4, v3

    .end local v3           #format:Ljava/text/Format;
    .local v4, format:Ljava/text/Format;
    move v3, v6

    .line 189
    .end local v6           #flags:I
    .local v3, flags:I
    goto/16 :goto_b

    .line 195
    .end local v5           #ch:I
    :cond_14
    const/16 v5, 0x20

    move v11, v5

    goto/16 :goto_c

    .line 199
    .end local v3           #flags:I
    .restart local v11       #padChar:C
    :cond_15
    const/16 v3, 0x30

    if-ne v11, v3, :cond_16

    .line 200
    const/4 v3, -0x1

    .local v3, where:I
    move v5, v3

    .end local v3           #where:I
    .local v5, where:I
    goto/16 :goto_d

    .line 202
    .end local v5           #where:I
    :cond_16
    const/4 v3, 0x0

    .restart local v3       #where:I
    move v5, v3

    .end local v3           #where:I
    .restart local v5       #where:I
    goto/16 :goto_d

    .line 220
    .end local v4           #format:Ljava/text/Format;
    .end local v10           #width:I
    .end local v11           #padChar:C
    .end local v17           #position:I
    .end local p0           #fmt:Lgnu/text/LineBufferedReader;
    .local v5, position:I
    .local p1, fcount:I
    :cond_17
    move/from16 v0, p1

    new-array v0, v0, [Ljava/text/Format;

    move-object/from16 p0, v0

    .line 221
    .local p0, farray:[Ljava/text/Format;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 222
    new-instance p1, Lgnu/text/CompoundFormat;

    .end local p1           #fcount:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    move-object/from16 p0, p1

    goto/16 :goto_1

    .end local v5           #position:I
    .local v3, flags:I
    .restart local v4       #format:Ljava/text/Format;
    .restart local v10       #width:I
    .restart local v17       #position:I
    .local p0, fmt:Lgnu/text/LineBufferedReader;
    .local p1, magic:C
    :cond_18
    move-object v3, v4

    .end local v4           #format:Ljava/text/Format;
    .local v3, format:Ljava/text/Format;
    goto/16 :goto_e

    .local v3, ch:I
    .local v4, precision:I
    .local v5, digit:I
    .restart local v6       #flags:I
    :cond_19
    move/from16 v18, v5

    .end local v5           #digit:I
    .restart local v18       #digit:I
    move v5, v3

    .end local v3           #ch:I
    .local v5, ch:I
    move/from16 v3, v18

    .end local v18           #digit:I
    .local v3, digit:I
    goto/16 :goto_7

    .end local v5           #ch:I
    .local v3, ch:I
    .local v4, digit:I
    :cond_1a
    move v5, v4

    .end local v4           #digit:I
    .local v5, digit:I
    goto/16 :goto_6

    .end local v5           #digit:I
    .end local v6           #flags:I
    .end local v10           #width:I
    .end local v17           #position:I
    .local v4, position:I
    :cond_1b
    move v5, v4

    .end local v4           #position:I
    .local v5, position:I
    goto/16 :goto_2

    :cond_1c
    move/from16 v17, v5

    .end local v5           #position:I
    .restart local v17       #position:I
    goto/16 :goto_3

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x23 -> :sswitch_4
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x30 -> :sswitch_3
    .end sparse-switch

    .line 137
    :sswitch_data_1
    .sparse-switch
        0x53 -> :sswitch_5
        0x58 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6f -> :sswitch_6
        0x73 -> :sswitch_5
        0x78 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg"

    .prologue
    .line 227
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    :goto_0
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x7e

    goto :goto_0
.end method

.method public parseFormat(Lgnu/text/LineBufferedReader;)Lgnu/text/ReportFormat;
    .locals 1
    .parameter "fmt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    :goto_0
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x7e

    goto :goto_0
.end method
