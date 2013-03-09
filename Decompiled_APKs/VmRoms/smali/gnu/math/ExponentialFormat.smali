.class public Lgnu/math/ExponentialFormat;
.super Ljava/text/Format;
.source "ExponentialFormat.java"


# static fields
.field static final LOG10:D


# instance fields
.field public expDigits:I

.field public exponentChar:C

.field public exponentShowSign:Z

.field public fracDigits:I

.field public general:Z

.field public intDigits:I

.field public overflowChar:C

.field public padChar:C

.field public showPlus:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/high16 v0, 0x4024

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lgnu/math/ExponentialFormat;->LOG10:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 31
    const/16 v0, 0x45

    iput-char v0, p0, Lgnu/math/ExponentialFormat;->exponentChar:C

    return-void
.end method

.method static addOne(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .parameter "sbuf"
    .parameter "digStart"
    .parameter "digEnd"

    .prologue
    .line 47
    move v1, p2

    .line 49
    .local v1, j:I
    :goto_0
    if-ne v1, p1, :cond_0

    .line 51
    const/16 v2, 0x31

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 52
    const/4 v2, 0x1

    .line 58
    :goto_1
    return v2

    .line 54
    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 55
    .local v0, ch:C
    const/16 v2, 0x39

    if-eq v0, v2, :cond_1

    .line 57
    add-int/lit8 v2, v0, 0x1

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 58
    const/4 v2, 0x0

    goto :goto_1

    .line 60
    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0
.end method


# virtual methods
.method format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 36
    .parameter "value"
    .parameter "dstr"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->intDigits:I

    move/from16 v19, v0

    .line 82
    .local v19, k:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->fracDigits:I

    move v5, v0

    .line 83
    .local v5, d:I
    const-wide/16 v32, 0x0

    cmpg-double v32, p1, v32

    if-gez v32, :cond_5

    const/16 v32, 0x1

    move/from16 v22, v32

    .line 84
    .local v22, negative:Z
    :goto_0
    if-eqz v22, :cond_0

    .line 85
    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 p1, v0

    .line 86
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    .line 87
    .local v27, oldLen:I
    const/16 v30, 0x1

    .line 88
    .local v30, signLen:I
    if-eqz v22, :cond_6

    .line 90
    if-ltz v5, :cond_1

    .line 91
    const/16 v32, 0x2d

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    :cond_1
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    .line 102
    .local v8, digStart:I
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v32

    if-nez v32, :cond_2

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v32

    if-eqz v32, :cond_8

    :cond_2
    const/16 v32, 0x1

    move/from16 v26, v32

    .line 103
    .local v26, nonFinite:Z
    :goto_2
    if-ltz v5, :cond_3

    if-eqz v26, :cond_14

    .line 105
    :cond_3
    if-nez p3, :cond_4

    .line 106
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    .line 107
    :cond_4
    const/16 v32, 0x45

    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 108
    .local v17, indexE:I
    if-ltz v17, :cond_13

    .line 110
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    add-int v17, v17, v8

    .line 112
    add-int/lit8 v32, v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    const/16 v33, 0x2d

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    const/16 v32, 0x1

    move/from16 v23, v32

    .line 113
    .local v23, negexp:Z
    :goto_3
    const/4 v12, 0x0

    .line 114
    .local v12, exponent:I
    if-eqz v23, :cond_a

    const/16 v32, 0x2

    :goto_4
    add-int v16, v17, v32

    .local v16, i:I
    :goto_5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v32

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    .line 115
    mul-int/lit8 v32, v12, 0xa

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v33

    const/16 v34, 0x30

    sub-int v33, v33, v34

    add-int v12, v32, v33

    .line 114
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 83
    .end local v8           #digStart:I
    .end local v12           #exponent:I
    .end local v16           #i:I
    .end local v17           #indexE:I
    .end local v22           #negative:Z
    .end local v23           #negexp:Z
    .end local v26           #nonFinite:Z
    .end local v27           #oldLen:I
    .end local v30           #signLen:I
    :cond_5
    const/16 v32, 0x0

    move/from16 v22, v32

    goto/16 :goto_0

    .line 94
    .restart local v22       #negative:Z
    .restart local v27       #oldLen:I
    .restart local v30       #signLen:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->showPlus:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    .line 95
    const/16 v32, 0x2b

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 97
    :cond_7
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 102
    .restart local v8       #digStart:I
    :cond_8
    const/16 v32, 0x0

    move/from16 v26, v32

    goto :goto_2

    .line 112
    .restart local v17       #indexE:I
    .restart local v26       #nonFinite:Z
    :cond_9
    const/16 v32, 0x0

    move/from16 v23, v32

    goto :goto_3

    .line 114
    .restart local v12       #exponent:I
    .restart local v23       #negexp:Z
    :cond_a
    const/16 v32, 0x1

    goto :goto_4

    .line 116
    .restart local v16       #i:I
    :cond_b
    if-eqz v23, :cond_c

    .line 117
    neg-int v12, v12

    .line 118
    :cond_c
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 122
    .end local v16           #i:I
    .end local v23           #negexp:Z
    :goto_6
    if-eqz v22, :cond_d

    .line 123
    add-int/lit8 v8, v8, 0x1

    .line 124
    :cond_d
    add-int/lit8 v10, v8, 0x1

    .line 126
    .local v10, dot:I
    move-object/from16 v0, p4

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v32

    sub-int v9, v32, v8

    .line 134
    .local v9, digits:I
    const/16 v32, 0x1

    move v0, v9

    move/from16 v1, v32

    if-le v0, v1, :cond_e

    add-int v32, v8, v9

    const/16 v33, 0x1

    sub-int v32, v32, v33

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v32

    const/16 v33, 0x30

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 135
    add-int/lit8 v9, v9, -0x1

    add-int v32, v8, v9

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 136
    :cond_e
    sub-int v32, v9, v12

    const/16 v33, 0x1

    sub-int v28, v32, v33

    .line 151
    .end local v10           #dot:I
    .end local v17           #indexE:I
    .local v28, scale:I
    :goto_7
    const/16 v32, 0x1

    sub-int v32, v19, v32

    sub-int v12, v12, v32

    .line 152
    if-gez v12, :cond_17

    move v0, v12

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v13, v32

    .line 153
    .local v13, exponentAbs:I
    :goto_8
    const/16 v32, 0x3e8

    move v0, v13

    move/from16 v1, v32

    if-lt v0, v1, :cond_18

    const/16 v32, 0x4

    move/from16 v14, v32

    .line 155
    .local v14, exponentLen:I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v32, v0

    move/from16 v0, v32

    move v1, v14

    if-le v0, v1, :cond_f

    .line 156
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move v14, v0

    .line 157
    :cond_f
    const/16 v29, 0x1

    .line 158
    .local v29, showExponent:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v32, v0

    if-nez v32, :cond_1b

    const/16 v32, 0x0

    move/from16 v11, v32

    .line 159
    .local v11, ee:I
    :goto_a
    if-gez v5, :cond_1d

    const/16 v32, 0x1

    move/from16 v15, v32

    .line 160
    .local v15, fracUnspecified:Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    if-eqz v15, :cond_12

    .line 162
    :cond_10
    sub-int v21, v9, v28

    .line 163
    .local v21, n:I
    if-eqz v15, :cond_11

    .line 165
    const/16 v32, 0x7

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_1e

    move/from16 v5, v21

    .line 166
    :goto_c
    if-le v9, v5, :cond_11

    .line 167
    move v5, v9

    .line 169
    :cond_11
    sub-int v6, v5, v21

    .line 170
    .local v6, dd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1f

    if-ltz v21, :cond_1f

    if-ltz v6, :cond_1f

    .line 174
    move v9, v5

    .line 175
    move/from16 v19, v21

    .line 176
    const/16 v29, 0x0

    .line 196
    .end local v6           #dd:I
    .end local v21           #n:I
    :cond_12
    :goto_d
    add-int v7, v8, v9

    .line 197
    .local v7, digEnd:I
    :goto_e
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v32

    move/from16 v0, v32

    move v1, v7

    if-ge v0, v1, :cond_23

    .line 198
    const/16 v32, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 121
    .end local v7           #digEnd:I
    .end local v9           #digits:I
    .end local v11           #ee:I
    .end local v12           #exponent:I
    .end local v13           #exponentAbs:I
    .end local v14           #exponentLen:I
    .end local v15           #fracUnspecified:Z
    .end local v28           #scale:I
    .end local v29           #showExponent:Z
    .restart local v17       #indexE:I
    :cond_13
    invoke-static/range {p3 .. p4}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v12

    .restart local v12       #exponent:I
    goto/16 :goto_6

    .line 140
    .end local v12           #exponent:I
    .end local v17           #indexE:I
    :cond_14
    if-lez v19, :cond_15

    const/16 v32, 0x1

    :goto_f
    add-int v9, v5, v32

    .line 141
    .restart local v9       #digits:I
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v32

    sget-wide v34, Lgnu/math/ExponentialFormat;->LOG10:D

    div-double v32, v32, v34

    const-wide v34, 0x408f400000000000L

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v20, v0

    .line 142
    .local v20, log:I
    const/high16 v32, -0x8000

    move/from16 v0, v20

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    .line 143
    const/16 v20, 0x0

    .line 146
    :goto_10
    sub-int v32, v9, v20

    const/16 v33, 0x1

    sub-int v28, v32, v33

    .line 147
    .restart local v28       #scale:I
    move-wide/from16 v0, p1

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lgnu/math/RealNum;->toScaledInt(DI)Lgnu/math/IntNum;

    move-result-object v32

    const/16 v33, 0xa

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuffer;)V

    .line 148
    const/16 v32, 0x1

    sub-int v32, v9, v32

    sub-int v12, v32, v28

    .restart local v12       #exponent:I
    goto/16 :goto_7

    .end local v9           #digits:I
    .end local v12           #exponent:I
    .end local v20           #log:I
    .end local v28           #scale:I
    :cond_15
    move/from16 v32, v19

    .line 140
    goto :goto_f

    .line 145
    .restart local v9       #digits:I
    .restart local v20       #log:I
    :cond_16
    const/16 v32, 0x3e8

    sub-int v20, v20, v32

    goto :goto_10

    .end local v20           #log:I
    .restart local v12       #exponent:I
    .restart local v28       #scale:I
    :cond_17
    move v13, v12

    .line 152
    goto/16 :goto_8

    .line 153
    .restart local v13       #exponentAbs:I
    :cond_18
    const/16 v32, 0x64

    move v0, v13

    move/from16 v1, v32

    if-lt v0, v1, :cond_19

    const/16 v32, 0x3

    move/from16 v14, v32

    goto/16 :goto_9

    :cond_19
    const/16 v32, 0xa

    move v0, v13

    move/from16 v1, v32

    if-lt v0, v1, :cond_1a

    const/16 v32, 0x2

    move/from16 v14, v32

    goto/16 :goto_9

    :cond_1a
    const/16 v32, 0x1

    move/from16 v14, v32

    goto/16 :goto_9

    .line 158
    .restart local v14       #exponentLen:I
    .restart local v29       #showExponent:Z
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v32, v0

    if-lez v32, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x2

    move/from16 v11, v32

    goto/16 :goto_a

    :cond_1c
    const/16 v32, 0x4

    move/from16 v11, v32

    goto/16 :goto_a

    .line 159
    .restart local v11       #ee:I
    :cond_1d
    const/16 v32, 0x0

    move/from16 v15, v32

    goto/16 :goto_b

    .line 165
    .restart local v15       #fracUnspecified:Z
    .restart local v21       #n:I
    :cond_1e
    const/16 v32, 0x7

    move/from16 v5, v32

    goto/16 :goto_c

    .line 178
    .restart local v6       #dd:I
    :cond_1f
    if-eqz v15, :cond_12

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v32, v0

    if-gtz v32, :cond_21

    .line 181
    move v9, v5

    .line 191
    :cond_20
    :goto_11
    if-gtz v9, :cond_12

    .line 192
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 184
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v32, v0

    sub-int v32, v32, v30

    sub-int v32, v32, v14

    const/16 v33, 0x3

    sub-int v4, v32, v33

    .line 185
    .local v4, avail:I
    move v9, v4

    .line 186
    if-gez v19, :cond_22

    .line 187
    sub-int v9, v9, v19

    .line 188
    :cond_22
    if-le v9, v5, :cond_20

    .line 189
    move v9, v5

    goto :goto_11

    .line 201
    .end local v4           #avail:I
    .end local v6           #dd:I
    .end local v21           #n:I
    .restart local v7       #digEnd:I
    :cond_23
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v32

    move v0, v7

    move/from16 v1, v32

    if-ne v0, v1, :cond_25

    const/16 v32, 0x30

    move/from16 v25, v32

    .line 202
    .local v25, nextDigit:C
    :goto_12
    const/16 v32, 0x35

    move/from16 v0, v25

    move/from16 v1, v32

    if-lt v0, v1, :cond_26

    const/16 v32, 0x1

    move/from16 v3, v32

    .line 205
    .local v3, addOne:Z
    :goto_13
    if-eqz v3, :cond_24

    move-object/from16 v0, p4

    move v1, v8

    move v2, v7

    invoke-static {v0, v1, v2}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v32

    if-eqz v32, :cond_24

    .line 206
    add-int/lit8 v28, v28, 0x1

    .line 208
    :cond_24
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v32

    sub-int v32, v32, v7

    sub-int v28, v28, v32

    .line 209
    move-object/from16 v0, p4

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    move v10, v8

    .line 212
    .restart local v10       #dot:I
    if-gez v19, :cond_27

    .line 215
    move/from16 v18, v19

    .local v18, j:I
    :goto_14
    add-int/lit8 v18, v18, 0x1

    if-gtz v18, :cond_29

    .line 216
    const/16 v32, 0x30

    move-object/from16 v0, p4

    move v1, v8

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 201
    .end local v3           #addOne:Z
    .end local v10           #dot:I
    .end local v18           #j:I
    .end local v25           #nextDigit:C
    :cond_25
    move-object/from16 v0, p4

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v32

    move/from16 v25, v32

    goto :goto_12

    .line 202
    .restart local v25       #nextDigit:C
    :cond_26
    const/16 v32, 0x0

    move/from16 v3, v32

    goto :goto_13

    .line 221
    .restart local v3       #addOne:Z
    .restart local v10       #dot:I
    :cond_27
    :goto_15
    add-int v32, v8, v19

    move/from16 v0, v32

    move v1, v7

    if-le v0, v1, :cond_28

    .line 222
    const/16 v32, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 223
    :cond_28
    add-int v10, v10, v19

    .line 225
    :cond_29
    if-eqz v26, :cond_2c

    .line 226
    const/16 v29, 0x0

    .line 231
    :goto_16
    if-eqz v29, :cond_2e

    .line 234
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    move/from16 v32, v0

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    move/from16 v32, v0

    if-nez v32, :cond_2a

    if-gez v12, :cond_2b

    .line 236
    :cond_2a
    if-ltz v12, :cond_2d

    const/16 v32, 0x2b

    :goto_17
    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    :cond_2b
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    .line 238
    .restart local v16       #i:I
    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    .line 240
    .local v24, newLen:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v32, v0

    sub-int v33, v24, v16

    sub-int v18, v32, v33

    .line 241
    .restart local v18       #j:I
    if-lez v18, :cond_2f

    .line 243
    add-int v24, v24, v18

    .line 244
    :goto_18
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_2f

    .line 245
    const/16 v32, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v16

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 228
    .end local v16           #i:I
    .end local v18           #j:I
    .end local v24           #newLen:I
    :cond_2c
    const/16 v32, 0x2e

    move-object/from16 v0, p4

    move v1, v10

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 236
    :cond_2d
    const/16 v32, 0x2d

    goto :goto_17

    .line 250
    :cond_2e
    const/4 v14, 0x0

    .line 252
    :cond_2f
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    .line 253
    .restart local v24       #newLen:I
    sub-int v31, v24, v27

    .line 254
    .local v31, used:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v32, v0

    sub-int v16, v32, v31

    .line 257
    .restart local v16       #i:I
    if-eqz v15, :cond_32

    add-int/lit8 v32, v10, 0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_30

    add-int/lit8 v32, v10, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v32

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_32

    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v32, v0

    if-lez v32, :cond_31

    if-lez v16, :cond_32

    .line 261
    :cond_31
    add-int/lit8 v16, v16, -0x1

    .line 262
    add-int/lit8 v32, v10, 0x1

    const/16 v33, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 265
    :cond_32
    if-gez v16, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v32, v0

    if-gtz v32, :cond_38

    :cond_33
    if-eqz v29, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v32, v0

    move v0, v14

    move/from16 v1, v32

    if-le v0, v1, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v32, v0

    if-lez v32, :cond_34

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v32, v0

    if-nez v32, :cond_38

    .line 270
    :cond_34
    if-gtz v19, :cond_36

    if-gtz v16, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v32, v0

    if-gtz v32, :cond_36

    .line 272
    :cond_35
    const/16 v32, 0x30

    move-object/from16 v0, p4

    move v1, v8

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 273
    add-int/lit8 v16, v16, -0x1

    .line 275
    :cond_36
    if-nez v29, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v32, v0

    if-lez v32, :cond_37

    .line 282
    :goto_19
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_37

    .line 283
    const/16 v32, 0x20

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 282
    add-int/lit8 v16, v16, -0x1

    goto :goto_19

    .line 286
    :cond_37
    :goto_1a
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_39

    .line 287
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->padChar:C

    move/from16 v32, v0

    move-object/from16 v0, p4

    move/from16 v1, v27

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 289
    :cond_38
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v32, v0

    if-eqz v32, :cond_39

    .line 291
    move-object/from16 v0, p4

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v16, v0

    :goto_1b
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_39

    .line 293
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v32, v0

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 295
    :cond_39
    return-object p4
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .parameter "value"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 74
    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0
.end method

.method public format(FLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .parameter "value"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 67
    float-to-double v1, p1

    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 300
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 306
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 311
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ExponentialFormat.parse - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 315
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ExponentialFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
