.class public Lgnu/text/IntegerFormat;
.super Lgnu/text/ReportFormat;
.source "IntegerFormat.java"


# static fields
.field public static final MIN_DIGITS:I = 0x40

.field public static final PAD_RIGHT:I = 0x10

.field public static final SHOW_BASE:I = 0x8

.field public static final SHOW_GROUPS:I = 0x1

.field public static final SHOW_PLUS:I = 0x2

.field public static final SHOW_SPACE:I = 0x4

.field public static final UPPERCASE:I = 0x20


# instance fields
.field public base:I

.field public commaChar:I

.field public commaInterval:I

.field public flags:I

.field public minWidth:I

.field public padChar:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lgnu/text/IntegerFormat;->base:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lgnu/text/IntegerFormat;->minWidth:I

    .line 51
    const/16 v0, 0x20

    iput v0, p0, Lgnu/text/IntegerFormat;->padChar:I

    .line 52
    const/16 v0, 0x2c

    iput v0, p0, Lgnu/text/IntegerFormat;->commaChar:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lgnu/text/IntegerFormat;->commaInterval:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/IntegerFormat;->flags:I

    .line 55
    return-void
.end method


# virtual methods
.method public convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .parameter "x"
    .parameter "radix"

    .prologue
    .line 165
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 170
    .end local p1
    :goto_0
    return-object v0

    .line 167
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 168
    check-cast p1, Ljava/math/BigInteger;

    .end local p1
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    .restart local p1
    :cond_1
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 25
    .parameter "arg"
    .parameter "start"
    .parameter "dst"
    .parameter "fpos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v0, p1

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4
    check-cast p4, [Ljava/lang/Object;

    move-object/from16 v4, p4

    .line 69
    .local v4, args:[Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->minWidth:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v4

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v10

    .line 70
    .local v10, minWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->minWidth:I

    move/from16 v23, v0

    const/high16 v24, -0x6000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 71
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->padChar:I

    move/from16 v23, v0

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v4

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v14

    .line 72
    .local v14, padChar:C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->padChar:I

    move/from16 v23, v0

    const/high16 v24, -0x6000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 73
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->commaChar:I

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v4

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v6

    .line 74
    .local v6, commaChar:C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->commaChar:I

    move/from16 v23, v0

    const/high16 v24, -0x6000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 75
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v4

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    .line 76
    .local v7, commaInterval:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    move/from16 v23, v0

    const/high16 v24, -0x6000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 77
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    move/from16 v17, v23

    .line 78
    .local v17, printCommas:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x10

    if-eqz v23, :cond_6

    const/16 v23, 0x1

    move/from16 v16, v23

    .line 79
    .local v16, padRight:Z
    :goto_2
    const/16 v23, 0x30

    move v0, v14

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/16 v23, 0x1

    move/from16 v15, v23

    .line 80
    .local v15, padInternal:Z
    :goto_3
    if-eqz v4, :cond_9

    .line 82
    move-object v0, v4

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 84
    const-string v23, "#<missing format argument>"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move/from16 v23, p2

    .line 160
    :goto_4
    return v23

    .line 68
    .end local v4           #args:[Ljava/lang/Object;
    .end local v6           #commaChar:C
    .end local v7           #commaInterval:I
    .end local v10           #minWidth:I
    .end local v14           #padChar:C
    .end local v15           #padInternal:Z
    .end local v16           #padRight:Z
    .end local v17           #printCommas:Z
    .restart local p4
    :cond_4
    const/16 v23, 0x0

    move-object/from16 v4, v23

    goto/16 :goto_0

    .line 77
    .end local p4
    .restart local v4       #args:[Ljava/lang/Object;
    .restart local v6       #commaChar:C
    .restart local v7       #commaInterval:I
    .restart local v10       #minWidth:I
    .restart local v14       #padChar:C
    :cond_5
    const/16 v23, 0x0

    move/from16 v17, v23

    goto :goto_1

    .line 78
    .restart local v17       #printCommas:Z
    :cond_6
    const/16 v23, 0x0

    move/from16 v16, v23

    goto :goto_2

    .line 79
    .restart local v16       #padRight:Z
    :cond_7
    const/16 v23, 0x0

    move/from16 v15, v23

    goto :goto_3

    .line 87
    .restart local v15       #padInternal:Z
    :cond_8
    aget-object p1, v4, p2

    .line 89
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/text/IntegerFormat;->convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v18

    .line 90
    .local v18, sarg:Ljava/lang/String;
    if-eqz v18, :cond_1d

    .line 92
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 93
    .local v19, sarg0:C
    const/16 v23, 0x2d

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const/16 v23, 0x1

    move/from16 v12, v23

    .line 94
    .local v12, neg:Z
    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    .line 95
    .local v20, slen:I
    if-eqz v12, :cond_f

    const/16 v23, 0x1

    sub-int v23, v20, v23

    move/from16 v11, v23

    .line 96
    .local v11, ndigits:I
    :goto_6
    if-eqz v17, :cond_10

    const/16 v23, 0x1

    sub-int v23, v11, v23

    div-int v23, v23, v7

    move/from16 v13, v23

    .line 97
    .local v13, numCommas:I
    :goto_7
    add-int v21, v11, v13

    .line 98
    .local v21, unpadded_len:I
    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x6

    if-eqz v23, :cond_b

    .line 99
    :cond_a
    add-int/lit8 v21, v21, 0x1

    .line 101
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_c

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 104
    add-int/lit8 v21, v21, 0x2

    .line 108
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x40

    if-eqz v23, :cond_d

    .line 110
    move/from16 v21, v11

    .line 111
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    const/16 v23, 0x30

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    if-nez v10, :cond_d

    .line 112
    const/16 v20, 0x0

    .line 114
    :cond_d
    if-nez v16, :cond_12

    if-nez v15, :cond_12

    .line 115
    :goto_9
    move v0, v10

    move/from16 v1, v21

    if-le v0, v1, :cond_12

    .line 116
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 115
    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    .line 93
    .end local v11           #ndigits:I
    .end local v12           #neg:Z
    .end local v13           #numCommas:I
    .end local v20           #slen:I
    .end local v21           #unpadded_len:I
    :cond_e
    const/16 v23, 0x0

    move/from16 v12, v23

    goto :goto_5

    .restart local v12       #neg:Z
    .restart local v20       #slen:I
    :cond_f
    move/from16 v11, v20

    .line 95
    goto :goto_6

    .line 96
    .restart local v11       #ndigits:I
    :cond_10
    const/16 v23, 0x0

    move/from16 v13, v23

    goto :goto_7

    .line 105
    .restart local v13       #numCommas:I
    .restart local v21       #unpadded_len:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/16 v23, 0x30

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 106
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 117
    :cond_12
    const/4 v8, 0x0

    .line 118
    .local v8, i:I
    if-eqz v12, :cond_15

    .line 120
    const/16 v23, 0x2d

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 121
    add-int/lit8 v8, v8, 0x1

    .line 122
    add-int/lit8 v20, v20, -0x1

    .line 128
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x20

    if-eqz v23, :cond_17

    const/16 v23, 0x1

    move/from16 v22, v23

    .line 129
    .local v22, uppercase:Z
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_14

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 133
    const/16 v23, 0x30

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 134
    if-eqz v22, :cond_18

    const/16 v23, 0x58

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 139
    :cond_14
    :goto_d
    if-eqz v15, :cond_1f

    .line 140
    :goto_e
    move v0, v10

    move/from16 v1, v21

    if-le v0, v1, :cond_1f

    .line 141
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 140
    add-int/lit8 v10, v10, -0x1

    goto :goto_e

    .line 124
    .end local v22           #uppercase:Z
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_16

    .line 125
    const/16 v23, 0x2b

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_a

    .line 126
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_13

    .line 127
    const/16 v23, 0x20

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_a

    .line 128
    :cond_17
    const/16 v23, 0x0

    move/from16 v22, v23

    goto :goto_b

    .line 134
    .restart local v22       #uppercase:Z
    :cond_18
    const/16 v23, 0x78

    goto :goto_c

    .line 136
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    const/16 v23, 0x30

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    .line 137
    const/16 v23, 0x30

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_d

    .line 146
    .end local v8           #i:I
    .local v9, i:I
    :cond_1a
    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 147
    .local v5, ch:C
    if-eqz v22, :cond_1b

    .line 148
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 149
    :cond_1b
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 150
    add-int/lit8 v20, v20, -0x1

    .line 151
    if-eqz v17, :cond_1c

    if-lez v20, :cond_1c

    rem-int v23, v20, v7

    if-nez v23, :cond_1c

    .line 152
    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_1c
    move v9, v8

    .line 144
    .end local v5           #ch:C
    .end local v8           #i:I
    .restart local v9       #i:I
    :goto_f
    if-nez v20, :cond_1a

    .line 154
    if-eqz v16, :cond_1e

    .line 155
    :goto_10
    move v0, v10

    move/from16 v1, v21

    if-le v0, v1, :cond_1e

    .line 156
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 155
    add-int/lit8 v10, v10, -0x1

    goto :goto_10

    .line 159
    .end local v9           #i:I
    .end local v11           #ndigits:I
    .end local v12           #neg:Z
    .end local v13           #numCommas:I
    .end local v19           #sarg0:C
    .end local v20           #slen:I
    .end local v21           #unpadded_len:I
    .end local v22           #uppercase:Z
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lgnu/text/IntegerFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 160
    :cond_1e
    add-int/lit8 v23, p2, 0x1

    goto/16 :goto_4

    .restart local v8       #i:I
    .restart local v11       #ndigits:I
    .restart local v12       #neg:Z
    .restart local v13       #numCommas:I
    .restart local v19       #sarg0:C
    .restart local v20       #slen:I
    .restart local v21       #unpadded_len:I
    .restart local v22       #uppercase:Z
    :cond_1f
    move v9, v8

    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_f
.end method

.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 1
    .parameter "args"
    .parameter "start"
    .parameter "dst"
    .parameter "fpos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/IntegerFormat;->format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v0

    return v0
.end method
