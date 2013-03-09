.class public Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;
.super Ljava/lang/Object;
.source "HtcCdmaPhoneNumberFormatting.java"


# static fields
.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field private static sCachedLocale:Ljava/util/Locale;

.field private static sFormatType:I


# instance fields
.field private mDeletingBackward:Z

.field private mDeletingHyphen:Z

.field private mFormatting:Z

.field private mHyphenStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 23
    .parameter "text"

    .prologue
    .line 170
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v11

    .line 171
    .local v11, length:I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1, v11}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 173
    .local v17, saved:Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .line 174
    .local v15, p:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_1

    .line 175
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/text/Editable;->charAt(I)C

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 176
    add-int/lit8 v20, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v15, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 178
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v11

    .line 187
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 188
    .local v6, dashPositions:[I
    const/4 v12, 0x0

    .line 190
    .local v12, numDashes:I
    const/16 v19, 0x1

    .line 191
    .local v19, state:I
    const/16 v18, 0x0

    .line 192
    .local v18, skip:I
    const/4 v14, 0x0

    .line 193
    .local v14, numDigits:I
    const/4 v4, 0x0

    .line 194
    .local v4, bExitLoop:Z
    const/4 v9, 0x0

    .local v9, i:I
    move v13, v12

    .end local v12           #numDashes:I
    .local v13, numDashes:I
    :goto_1
    if-ge v9, v11, :cond_b

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_b

    .line 195
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    .line 196
    .local v5, c:C
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v20

    const/16 v21, 0x70

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v20

    const/16 v21, 0x77

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 198
    :cond_2
    const/4 v4, 0x1

    move v12, v13

    .line 194
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v13, v12

    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    goto :goto_1

    .line 201
    :cond_3
    packed-switch v5, :pswitch_data_0

    .line 248
    :cond_4
    :pswitch_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v11, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v12, v13

    .line 282
    .end local v5           #c:C
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    :cond_5
    :goto_3
    return-void

    .line 203
    .end local v12           #numDashes:I
    .restart local v5       #c:C
    .restart local v13       #numDashes:I
    :pswitch_1
    if-eqz v14, :cond_6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 204
    :cond_6
    const/16 v19, 0x3

    .line 205
    add-int/lit8 v14, v14, 0x1

    .line 206
    add-int/lit8 v18, v18, 0x1

    move v12, v13

    .line 207
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_2

    .line 219
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_7
    :pswitch_2
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 221
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v11, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v12, v13

    .line 222
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_3

    .line 223
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_8
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 225
    add-int/lit8 v12, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    aput v9, v6, v13

    .line 231
    :goto_4
    const/16 v19, 0x1

    .line 232
    add-int/lit8 v14, v14, 0x1

    .line 233
    goto :goto_2

    .line 226
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    sub-int v20, v14, v18

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    sub-int v20, v14, v18

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 229
    :cond_a
    add-int/lit8 v12, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    aput v9, v6, v13

    goto :goto_4

    .line 236
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :pswitch_3
    const/16 v19, 0x4

    move v12, v13

    .line 237
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_2

    .line 240
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :pswitch_4
    if-nez v9, :cond_4

    .line 242
    const/16 v19, 0x2

    move v12, v13

    .line 243
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_2

    .line 254
    .end local v5           #c:C
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_b
    add-int/lit8 v20, v18, 0x7

    move/from16 v0, v20

    if-ne v14, v0, :cond_11

    .line 257
    add-int/lit8 v12, v13, -0x1

    .line 261
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    :goto_5
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v12, :cond_10

    .line 263
    aget v16, v6, v9

    .line 265
    .local v16, pos:I
    const/4 v7, 0x5

    .line 266
    .local v7, dashlimit1:I
    const/4 v8, 0x7

    .line 267
    .local v8, dashlimit2:I
    add-int v20, v7, v18

    move/from16 v0, v20

    if-le v14, v0, :cond_c

    add-int/lit8 v20, v18, 0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_e

    :cond_c
    add-int v20, v8, v18

    move/from16 v0, v20

    if-le v14, v0, :cond_d

    add-int/lit8 v20, v18, 0x2

    move/from16 v0, v20

    if-eq v12, v0, :cond_e

    :cond_d
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    if-nez v9, :cond_f

    .line 269
    :cond_e
    add-int v20, v16, v9

    add-int v21, v16, v9

    const-string v22, "-"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 261
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 273
    .end local v7           #dashlimit1:I
    .end local v8           #dashlimit2:I
    .end local v16           #pos:I
    :cond_10
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v10

    .line 274
    .local v10, len:I
    :goto_7
    if-lez v10, :cond_5

    .line 275
    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 276
    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 277
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    .end local v10           #len:I
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_11
    move v12, v13

    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_5

    .end local v12           #numDashes:I
    .restart local v5       #c:C
    .restart local v13       #numDashes:I
    :cond_12
    move v12, v13

    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto/16 :goto_4

    .line 201
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dialString"

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    .line 104
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .local v0, phoneNumber:Landroid/text/SpannableStringBuilder;
    invoke-static {p0}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->isLegalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {v0}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->formatNanpNumber(Landroid/text/Editable;)V

    .line 111
    :goto_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {v0}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->removeHythen(Landroid/text/Editable;)V

    goto :goto_1
.end method

.method private static isLegalPhoneNumber(Ljava/lang/String;)Z
    .locals 12
    .parameter "dialString"

    .prologue
    const/4 v6, 0x1

    const/16 v11, 0x2b

    const/16 v10, 0x31

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 126
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 127
    .local v4, t_dislString:Landroid/text/SpannableStringBuilder;
    invoke-static {v4}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->removeHythen(Landroid/text/Editable;)V

    .line 128
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, phonenumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 131
    const/4 v1, -0x1

    .line 132
    .local v1, nPausePosition:I
    const/4 v0, 0x0

    .line 133
    .local v0, nDigitNum:I
    const/4 v2, 0x0

    .line 134
    .local v2, p:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 135
    const/16 v7, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x39

    if-le v7, v8, :cond_1

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_3

    if-nez v2, :cond_3

    :cond_1
    if-ne v1, v9, :cond_3

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 144
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    const/16 v8, 0x70

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v7, v8, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    const/16 v8, 0x77

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-ne v7, v8, :cond_a

    :cond_4
    if-ne v1, v9, :cond_a

    .line 139
    move v1, v2

    .line 147
    :cond_5
    if-lez v0, :cond_9

    .line 149
    if-ne v1, v9, :cond_b

    const-string v7, "1nnnnnnnnnn"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v0, v7, :cond_6

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_8

    :cond_6
    const-string v7, "nnnnnnnnnn"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v0, v7, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_8

    :cond_7
    const-string v7, "+1nnnnnnnnnn"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v0, v7, :cond_b

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_b

    :cond_8
    move v5, v6

    .line 160
    .end local v0           #nDigitNum:I
    .end local v1           #nPausePosition:I
    .end local v2           #p:I
    :cond_9
    :goto_1
    return v5

    .line 141
    .restart local v0       #nDigitNum:I
    .restart local v1       #nPausePosition:I
    .restart local v2       #p:I
    :cond_a
    const/16 v7, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v7, v8, :cond_9

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x39

    if-le v7, v8, :cond_2

    goto :goto_1

    .line 153
    :cond_b
    if-eq v1, v9, :cond_9

    add-int/lit8 v7, v0, -0x1

    const-string v8, "1nnnnnnnnnn"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_c

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_e

    :cond_c
    add-int/lit8 v7, v0, -0x1

    const-string v8, "nnnnnnnnnn"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_d

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_e

    :cond_d
    add-int/lit8 v7, v0, -0x1

    const-string v8, "+1nnnnnnnnnn"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_9

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_9

    :cond_e
    move v5, v6

    .line 156
    goto :goto_1
.end method

.method private static removeHythen(Landroid/text/Editable;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 114
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 116
    .local v0, length:I
    const/4 v1, 0x0

    .line 117
    .local v1, p:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 119
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method

.method private setPhoneNumberFormat(Landroid/text/Editable;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, dialString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    move-object v1, p1

    .line 95
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 97
    .end local v1           #digits:Landroid/text/Editable;
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mDeletingHyphen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mHyphenStart:I

    if-lez v0, :cond_0

    .line 47
    iget-boolean v0, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mDeletingBackward:Z

    if-eqz v0, :cond_1

    .line 48
    iget v0, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mHyphenStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    iget v0, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mHyphenStart:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mHyphenStart:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 57
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->setPhoneNumberFormat(Landroid/text/Editable;)V

    .line 58
    return-void

    .line 52
    :cond_1
    iget v0, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mHyphenStart:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    iget v0, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mHyphenStart:I

    iget v1, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mHyphenStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 64
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 65
    .local v1, selStart:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 66
    .local v0, selEnd:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    if-ne p3, v4, :cond_1

    if-nez p4, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    if-ne v1, v0, :cond_1

    .line 71
    iput-boolean v4, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mDeletingHyphen:Z

    .line 72
    iput p2, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mHyphenStart:I

    .line 74
    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_0

    .line 75
    iput-boolean v4, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mDeletingBackward:Z

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-boolean v5, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mDeletingBackward:Z

    goto :goto_0

    .line 80
    :cond_1
    iput-boolean v5, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mDeletingHyphen:Z

    goto :goto_0
.end method

.method public setFormattingDone()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->mFormatting:Z

    .line 61
    return-void
.end method
