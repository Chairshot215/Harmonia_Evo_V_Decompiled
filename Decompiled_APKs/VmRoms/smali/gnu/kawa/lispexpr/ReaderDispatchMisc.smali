.class public Lgnu/kawa/lispexpr/ReaderDispatchMisc;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatchMisc.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;


# instance fields
.field protected code:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 33
    iput p1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 34
    return-void
.end method

.method public static getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-object v0
.end method

.method public static readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;
    .locals 10
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    .line 213
    iget v6, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 214
    .local v6, startPos:I
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v4

    .line 215
    .local v4, port:Lgnu/text/LineBufferedReader;
    const/4 v5, 0x0

    .line 216
    .local v5, saveReadState:C
    const/4 v2, 0x0

    .line 217
    .local v2, flags:I
    instance-of v7, v4, Lgnu/mapping/InPort;

    if-eqz v7, :cond_0

    .line 219
    move-object v0, v4

    check-cast v0, Lgnu/mapping/InPort;

    move-object v7, v0

    iget-char v5, v7, Lgnu/mapping/InPort;->readState:C

    .line 220
    move-object v0, v4

    check-cast v0, Lgnu/mapping/InPort;

    move-object v7, v0

    const/16 v8, 0x2f

    iput-char v8, v7, Lgnu/mapping/InPort;->readState:C

    .line 228
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 229
    .local v1, c:I
    if-gez v1, :cond_1

    .line 230
    const-string v7, "unexpected EOF in regex literal"

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 231
    :cond_1
    if-ne v1, p1, :cond_4

    .line 250
    new-instance v3, Ljava/lang/String;

    iget-object v7, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v8, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v8, v6

    invoke-direct {v3, v7, v6, v8}, Ljava/lang/String;-><init>([CII)V

    .line 254
    .local v3, pattern:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v1

    .line 255
    const/16 v7, 0x69

    if-eq v1, v7, :cond_2

    const/16 v7, 0x49

    if-ne v1, v7, :cond_9

    .line 256
    :cond_2
    or-int/lit8 v2, v2, 0x42

    .line 276
    :goto_2
    invoke-virtual {p0}, Lgnu/text/Lexer;->skip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 282
    .end local v1           #c:I
    .end local v3           #pattern:Ljava/lang/String;
    :catchall_0
    move-exception v7

    iput v6, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    instance-of v8, v4, Lgnu/mapping/InPort;

    if-eqz v8, :cond_3

    .line 284
    check-cast v4, Lgnu/mapping/InPort;

    .end local v4           #port:Lgnu/text/LineBufferedReader;
    iput-char v5, v4, Lgnu/mapping/InPort;->readState:C

    :cond_3
    throw v7

    .line 233
    .restart local v1       #c:I
    .restart local v4       #port:Lgnu/text/LineBufferedReader;
    :cond_4
    if-ne v1, v9, :cond_8

    .line 235
    :try_start_1
    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 236
    const/16 v7, 0x20

    if-eq v1, v7, :cond_5

    const/16 v7, 0x9

    if-eq v1, v7, :cond_5

    const/16 v7, 0xd

    if-eq v1, v7, :cond_5

    const/16 v7, 0xa

    if-ne v1, v7, :cond_6

    :cond_5
    instance-of v7, p0, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v7, :cond_6

    .line 239
    move-object v0, p0

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v7, v0

    invoke-virtual {v7, v1}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v1

    .line 240
    const/4 v7, -0x2

    if-eq v1, v7, :cond_0

    .line 243
    :cond_6
    if-gez v1, :cond_7

    .line 244
    const-string v7, "unexpected EOF in regex literal"

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 245
    :cond_7
    if-eq v1, p1, :cond_8

    .line 246
    const/16 v7, 0x5c

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 248
    :cond_8
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_0

    .line 257
    .restart local v3       #pattern:Ljava/lang/String;
    :cond_9
    const/16 v7, 0x73

    if-eq v1, v7, :cond_a

    const/16 v7, 0x53

    if-ne v1, v7, :cond_b

    .line 258
    :cond_a
    or-int/lit8 v2, v2, 0x20

    goto :goto_2

    .line 259
    :cond_b
    const/16 v7, 0x6d

    if-eq v1, v7, :cond_c

    const/16 v7, 0x4d

    if-ne v1, v7, :cond_d

    .line 260
    :cond_c
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 270
    :cond_d
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unrecognized regex option \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-char v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 278
    :cond_e
    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 282
    iput v6, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    instance-of v8, v4, Lgnu/mapping/InPort;

    if-eqz v8, :cond_f

    .line 284
    check-cast v4, Lgnu/mapping/InPort;

    .end local v4           #port:Lgnu/text/LineBufferedReader;
    iput-char v5, v4, Lgnu/mapping/InPort;->readState:C

    :cond_f
    return-object v7
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 25
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 39
    move-object/from16 v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object/from16 v19, v0

    .line 40
    .local v19, reader:Lgnu/kawa/lispexpr/LispReader;
    const/16 v20, 0x0

    .line 44
    .local v20, saveReadState:C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    move/from16 v22, v0

    if-ltz v22, :cond_0

    .line 45
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    move/from16 p2, v0

    .line 46
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 204
    const-string v22, "An invalid #-construct was read."

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 205
    sget-object v22, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v22

    .line 51
    :sswitch_0
    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v21, v0

    .line 52
    .local v21, startPos:I
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v22

    const/16 v23, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v24

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 53
    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v22, v0

    sub-int v9, v22, v21

    .line 54
    .local v9, length:I
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v22, v0

    move-object v0, v13

    move-object/from16 v1, v22

    move/from16 v2, v21

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 55
    .local v13, name:Ljava/lang/String;
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 56
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v22

    goto :goto_0

    .line 58
    .end local v9           #length:I
    .end local v13           #name:Ljava/lang/String;
    .end local v21           #startPos:I
    :sswitch_1
    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object v22

    goto :goto_0

    .line 60
    :sswitch_2
    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object v22

    goto :goto_0

    .line 62
    :sswitch_3
    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 64
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lgnu/text/Lexer;->peek()I

    move-result p2

    .line 65
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isDigit(C)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 66
    const/16 v22, 0x46

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object v22

    goto :goto_0

    .line 67
    :cond_1
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 70
    :sswitch_5
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object v22

    goto :goto_0

    .line 72
    :sswitch_6
    const/16 v22, 0x24

    move/from16 v0, p3

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 74
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "the radix "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is too big (max is 36)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 75
    const/16 p3, 0x24

    .line 77
    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_0

    .line 79
    :sswitch_7
    const/16 v22, 0x0

    const/16 v23, 0x10

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_0

    .line 81
    :sswitch_8
    const/16 v22, 0x0

    const/16 v23, 0xa

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_0

    .line 83
    :sswitch_9
    const/16 v22, 0x0

    const/16 v23, 0x8

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_0

    .line 85
    :sswitch_a
    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_0

    .line 88
    :sswitch_b
    const/16 v22, 0x23

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 89
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 90
    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_0

    .line 93
    :sswitch_c
    invoke-static/range {p1 .. p3}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;

    move-result-object v22

    goto/16 :goto_0

    .line 96
    :sswitch_d
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v17

    .line 97
    .local v17, port:Lgnu/text/LineBufferedReader;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 99
    move-object/from16 v0, v17

    check-cast v0, Lgnu/mapping/InPort;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    move/from16 v20, v0

    .line 100
    move-object/from16 v0, v17

    check-cast v0, Lgnu/mapping/InPort;

    move-object/from16 v18, v0

    const/16 v22, 0x7c

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 104
    :cond_3
    const/16 v22, 0x23

    const/16 v23, 0x7c

    :try_start_0
    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 109
    check-cast v17, Lgnu/mapping/InPort;

    .end local v17           #port:Lgnu/text/LineBufferedReader;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 111
    :cond_4
    sget-object v22, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_0

    .line 108
    .restart local v17       #port:Lgnu/text/LineBufferedReader;
    :catchall_0
    move-exception v22

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 109
    check-cast v17, Lgnu/mapping/InPort;

    .end local v17           #port:Lgnu/text/LineBufferedReader;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    :cond_5
    throw v22

    .line 113
    :sswitch_e
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v17

    .line 114
    .restart local v17       #port:Lgnu/text/LineBufferedReader;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 116
    move-object/from16 v0, v17

    check-cast v0, Lgnu/mapping/InPort;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    move/from16 v20, v0

    .line 117
    move-object/from16 v0, v17

    check-cast v0, Lgnu/mapping/InPort;

    move-object/from16 v18, v0

    const/16 v22, 0x3b

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 121
    :cond_6
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 126
    check-cast v17, Lgnu/mapping/InPort;

    .end local v17           #port:Lgnu/text/LineBufferedReader;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 128
    :cond_7
    sget-object v22, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_0

    .line 125
    .restart local v17       #port:Lgnu/text/LineBufferedReader;
    :catchall_1
    move-exception v22

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 126
    check-cast v17, Lgnu/mapping/InPort;

    .end local v17           #port:Lgnu/text/LineBufferedReader;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    :cond_8
    throw v22

    .line 130
    :sswitch_f
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v17

    .line 132
    .restart local v17       #port:Lgnu/text/LineBufferedReader;
    invoke-virtual/range {v17 .. v17}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v22

    const/16 v23, 0x28

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v11

    .local v11, list:Ljava/lang/Object;
    const/16 v22, 0x0

    move-object v0, v11

    move/from16 v1, v22

    invoke-static {v0, v1}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v9

    .restart local v9       #length:I
    if-lez v9, :cond_e

    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    .line 138
    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 139
    .restart local v13       #name:Ljava/lang/String;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 140
    .local v18, proc:Ljava/lang/Object;
    if-nez v18, :cond_9

    .line 141
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "unknown reader constructor "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 173
    .end local v9           #length:I
    .end local v11           #list:Ljava/lang/Object;
    .end local v13           #name:Ljava/lang/String;
    .end local v18           #proc:Ljava/lang/Object;
    :goto_1
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 142
    .restart local v9       #length:I
    .restart local v11       #list:Ljava/lang/Object;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v18       #proc:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v22, v0

    if-nez v22, :cond_a

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v22, v0

    if-nez v22, :cond_a

    .line 143
    const-string v22, "reader constructor must be procedure or type name"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_a
    add-int/lit8 v9, v9, -0x1

    .line 147
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const/16 v22, 0x1

    move/from16 v16, v22

    .line 148
    .local v16, parg:I
    :goto_2
    add-int v22, v16, v9

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 149
    .local v5, args:[Ljava/lang/Object;
    check-cast v11, Lgnu/lists/Pair;

    .end local v11           #list:Ljava/lang/Object;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 150
    .local v4, argList:Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v9, :cond_c

    .line 152
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object v15, v0

    .line 153
    .local v15, pair:Lgnu/lists/Pair;
    add-int v22, v16, v7

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v5, v22

    .line 154
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 150
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 147
    .end local v4           #argList:Ljava/lang/Object;
    .end local v5           #args:[Ljava/lang/Object;
    .end local v7           #i:I
    .end local v15           #pair:Lgnu/lists/Pair;
    .end local v16           #parg:I
    .restart local v11       #list:Ljava/lang/Object;
    :cond_b
    const/16 v22, 0x0

    move/from16 v16, v22

    goto :goto_2

    .line 158
    .end local v11           #list:Ljava/lang/Object;
    .restart local v4       #argList:Ljava/lang/Object;
    .restart local v5       #args:[Ljava/lang/Object;
    .restart local v7       #i:I
    .restart local v16       #parg:I
    :cond_c
    if-lez v16, :cond_d

    .line 160
    const/16 v22, 0x0

    :try_start_2
    aput-object v18, v5, v22

    .line 161
    sget-object v22, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_0

    .line 163
    :cond_d
    check-cast v18, Lgnu/mapping/Procedure;

    .end local v18           #proc:Ljava/lang/Object;
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v22

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v22

    move-object/from16 v6, v22

    .line 167
    .local v6, ex:Ljava/lang/Throwable;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "caught "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " applying reader constructor "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    .end local v4           #argList:Ljava/lang/Object;
    .end local v5           #args:[Ljava/lang/Object;
    .end local v6           #ex:Ljava/lang/Throwable;
    .end local v7           #i:I
    .end local v9           #length:I
    .end local v13           #name:Ljava/lang/String;
    .end local v16           #parg:I
    :cond_e
    const-string v22, "a non-empty list starting with a symbol must follow #,"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 175
    .end local v17           #port:Lgnu/text/LineBufferedReader;
    :sswitch_10
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v14

    .line 176
    .local v14, object:Ljava/lang/Object;
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/lispexpr/LispReader;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 178
    move-object/from16 v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v10, v0

    .line 179
    .local v10, lin:Lgnu/kawa/lispexpr/LispReader;
    iget-object v12, v10, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 180
    .local v12, map:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v12, :cond_f

    .line 182
    new-instance v12, Lgnu/kawa/util/GeneralHashTable;

    .end local v12           #map:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v12}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 183
    .restart local v12       #map:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iput-object v12, v10, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 185
    :cond_f
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/util/GeneralHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v10           #lin:Lgnu/kawa/lispexpr/LispReader;
    .end local v12           #map:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_10
    move-object/from16 v22, v14

    .line 187
    goto/16 :goto_0

    .line 189
    .end local v14           #object:Ljava/lang/Object;
    :sswitch_11
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/lispexpr/LispReader;

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 191
    move-object/from16 v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v10, v0

    .line 192
    .restart local v10       #lin:Lgnu/kawa/lispexpr/LispReader;
    iget-object v12, v10, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 193
    .restart local v12       #map:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v12, :cond_11

    .line 195
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 196
    .local v8, key:Ljava/lang/Integer;
    move-object v0, v12

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/util/GeneralHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 197
    .restart local v14       #object:Ljava/lang/Object;
    move-object v0, v14

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_11

    move-object/from16 v22, v14

    .line 198
    goto/16 :goto_0

    .line 201
    .end local v8           #key:Ljava/lang/Integer;
    .end local v10           #lin:Lgnu/kawa/lispexpr/LispReader;
    .end local v12           #map:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v14           #object:Ljava/lang/Object;
    :cond_11
    const-string v22, "an unrecognized #n# back-reference was read"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 202
    sget-object v22, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x23 -> :sswitch_11
        0x2c -> :sswitch_f
        0x2f -> :sswitch_c
        0x3a -> :sswitch_0
        0x3b -> :sswitch_e
        0x3d -> :sswitch_10
        0x42 -> :sswitch_a
        0x44 -> :sswitch_8
        0x45 -> :sswitch_b
        0x46 -> :sswitch_4
        0x49 -> :sswitch_b
        0x4f -> :sswitch_9
        0x52 -> :sswitch_6
        0x53 -> :sswitch_5
        0x54 -> :sswitch_3
        0x55 -> :sswitch_5
        0x58 -> :sswitch_7
        0x5c -> :sswitch_1
        0x7c -> :sswitch_d
    .end sparse-switch
.end method
