.class public Lcom/android/htccontacts/util/NameUtuls;
.super Ljava/lang/Object;
.source "NameUtuls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "givenName"
    .parameter "familyName"
    .parameter "isGivenFamilyOrder"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-static {p0, p1, v2}, Lcom/android/htccontacts/util/NameUtuls;->guessFullNameStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, style:I
    invoke-static {v1}, Lcom/android/htccontacts/util/NameUtuls;->getAdjustedFullNameStyle(I)I

    move-result v1

    .line 68
    invoke-static {p1, p0, v2, v1, p2}, Lcom/android/htccontacts/util/NameUtuls;->joinName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public static getAdjustedFullNameStyle(I)I
    .locals 8
    .parameter "nameStyle"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v6, 0x3

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, language:Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, JAPANESE_LANGUAGE:Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, CHINESE_LANGUAGE:Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, KOREAN_LANGUAGE:Ljava/lang/String;
    if-nez p0, :cond_4

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move p0, v4

    .line 97
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 81
    .restart local p0
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move p0, v5

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move p0, v6

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    .line 88
    :cond_4
    const/4 v7, 0x2

    if-ne p0, v7, :cond_0

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move p0, v4

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move p0, v5

    .line 92
    goto :goto_0

    :cond_6
    move p0, v6

    .line 94
    goto :goto_0
.end method

.method public static guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4
    .parameter "name"
    .parameter "offset"

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 174
    .local v1, length:I
    :goto_0
    if-ge p1, v1, :cond_2

    .line 175
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 176
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 178
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v2}, Lcom/android/htccontacts/util/NameUtuls;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const/4 v3, 0x4

    .line 188
    .end local v0           #codePoint:I
    .end local v2           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v3

    .line 181
    .restart local v0       #codePoint:I
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-static {v2}, Lcom/android/htccontacts/util/NameUtuls;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const/4 v3, 0x5

    goto :goto_1

    .line 185
    .end local v2           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 186
    goto :goto_0

    .line 188
    .end local v0           #codePoint:I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public static guessFullNameStyle(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 137
    if-nez p0, :cond_1

    .line 138
    const/4 v2, 0x0

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    const/4 v2, 0x0

    .line 142
    .local v2, nameStyle:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 143
    .local v1, length:I
    const/4 v3, 0x0

    .line 144
    .local v3, offset:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 145
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 146
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 149
    .local v4, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/htccontacts/util/NameUtuls;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 151
    invoke-static {v4}, Lcom/android/htccontacts/util/NameUtuls;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {p0, v5}, Lcom/android/htccontacts/util/NameUtuls;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {v4}, Lcom/android/htccontacts/util/NameUtuls;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    const/4 v2, 0x4

    goto :goto_0

    .line 161
    :cond_3
    invoke-static {v4}, Lcom/android/htccontacts/util/NameUtuls;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    const/4 v2, 0x5

    goto :goto_0

    .line 165
    :cond_4
    const/4 v2, 0x1

    .line 167
    .end local v4           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 168
    goto :goto_1
.end method

.method public static guessFullNameStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "givenNames"
    .parameter "familyNames"
    .parameter "middleName"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 107
    invoke-static {p0}, Lcom/android/htccontacts/util/NameUtuls;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, bestGuess:I
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    move v1, v0

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    invoke-static {p1}, Lcom/android/htccontacts/util/NameUtuls;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 118
    .local v1, guess:I
    if-eqz v1, :cond_3

    .line 119
    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    .line 122
    :cond_2
    move v0, v1

    .line 125
    :cond_3
    invoke-static {p2}, Lcom/android/htccontacts/util/NameUtuls;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 126
    if-eqz v1, :cond_5

    .line 127
    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_0

    .line 130
    :cond_4
    move v0, v1

    :cond_5
    move v1, v0

    .line 133
    goto :goto_0
.end method

.method public static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "block"

    .prologue
    .line 200
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 218
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 212
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 192
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static joinName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .parameter "familyName"
    .parameter "givenName"
    .parameter "middleName"
    .parameter "fullNameStyle"
    .parameter "givenNameFirst"

    .prologue
    .line 227
    packed-switch p3, :pswitch_data_0

    .line 239
    if-eqz p4, :cond_0

    .line 240
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/android/htccontacts/util/NameUtuls;->joinName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/htccontacts/util/NameUtuls;->joinName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/htccontacts/util/NameUtuls;->joinName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/htccontacts/util/NameUtuls;->joinName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static joinName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 7
    .parameter "part1"
    .parameter "part2"
    .parameter "part3"
    .parameter "suffix"
    .parameter "useSpace"
    .parameter "useCommaAfterPart1"
    .parameter "useCommaAfterPart3"

    .prologue
    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v0, 0x1

    .line 254
    .local v0, hasPart1:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v1, 0x1

    .line 255
    .local v1, hasPart2:Z
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v2, 0x1

    .line 258
    .local v2, hasPart3:Z
    :goto_2
    const/4 v3, 0x1

    .line 259
    .local v3, isSingleWord:Z
    const/4 v5, 0x0

    .line 260
    .local v5, singleWord:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 261
    move-object v5, p0

    .line 264
    :cond_0
    if-eqz v1, :cond_1

    .line 265
    if-eqz v5, :cond_6

    .line 266
    const/4 v3, 0x0

    .line 272
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 273
    if-eqz v5, :cond_7

    .line 274
    const/4 v3, 0x0

    .line 288
    :cond_2
    :goto_4
    if-eqz v3, :cond_8

    .line 330
    .end local v5           #singleWord:Ljava/lang/String;
    :goto_5
    return-object v5

    .line 253
    .end local v0           #hasPart1:Z
    .end local v1           #hasPart2:Z
    .end local v2           #hasPart3:Z
    .end local v3           #isSingleWord:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    .restart local v0       #hasPart1:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 255
    .restart local v1       #hasPart2:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 268
    .restart local v2       #hasPart3:Z
    .restart local v3       #isSingleWord:Z
    .restart local v5       #singleWord:Ljava/lang/String;
    :cond_6
    move-object v5, p1

    goto :goto_3

    .line 276
    :cond_7
    move-object v5, p2

    goto :goto_4

    .line 292
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v4, sb:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_9

    .line 294
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_9
    if-eqz v1, :cond_c

    .line 298
    if-eqz v0, :cond_b

    .line 299
    if-eqz p5, :cond_a

    .line 300
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    :cond_a
    if-eqz p4, :cond_b

    .line 303
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :cond_b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_c
    if-eqz v2, :cond_f

    .line 310
    if-nez v0, :cond_d

    if-eqz v1, :cond_e

    .line 311
    :cond_d
    if-eqz p4, :cond_e

    .line 312
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method
