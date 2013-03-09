.class public Lcom/htc/android/mail/MailTextUtils;
.super Ljava/lang/Object;
.source "MailTextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addArabicAlign(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter "s"
    .parameter "needHtmlEncode"

    .prologue
    const/4 v8, 0x0

    .line 145
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v7, 0x19

    if-eq v6, v7, :cond_1

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-static {p0}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 221
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 152
    .restart local p0
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 155
    .local v1, handleItWithRTL:Z
    const-string v6, "\n"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, array:[Ljava/lang/String;
    array-length v6, v0

    if-eqz v6, :cond_0

    .line 158
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_13

    .line 159
    aget-object v5, v0, v2

    .line 160
    .local v5, target:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 161
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x41

    if-lt v6, v7, :cond_3

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-le v6, v7, :cond_4

    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_6

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_6

    .line 166
    :cond_4
    if-eqz p1, :cond_5

    .line 167
    invoke-static {v5}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 169
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 174
    :cond_6
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/android/mail/MailTextUtils;->isArabicCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 175
    if-eqz p1, :cond_7

    .line 176
    const-string v6, "<p align=\"right\" style=\"text-align:right\"><p lang=\"AR-AE\" dir=\"RTL\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</p></p>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 178
    :cond_7
    const-string v6, "<p align=\"right\" style=\"text-align:right\"><p lang=\"AR-AE\" dir=\"RTL\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</p></p>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 183
    :cond_8
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/android/mail/MailTextUtils;->isToken(C)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 184
    :cond_9
    const/4 v1, 0x0

    .line 185
    const/4 v3, 0x1

    .local v3, j:I
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_c

    .line 187
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/android/mail/MailTextUtils;->isToken(C)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 185
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 189
    :cond_b
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/android/mail/MailTextUtils;->isArabicCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 190
    const/4 v1, 0x1

    .line 197
    :cond_c
    :goto_4
    if-eqz v1, :cond_f

    .line 198
    if-eqz p1, :cond_e

    .line 199
    const-string v6, "<p align=\"right\" style=\"text-align:right\"><p lang=\"AR-AE\" dir=\"RTL\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</p></p>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 193
    :cond_d
    const/4 v1, 0x0

    .line 194
    goto :goto_4

    .line 201
    :cond_e
    const-string v6, "<p align=\"right\" style=\"text-align:right\"><p lang=\"AR-AE\" dir=\"RTL\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</p></p>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 205
    :cond_f
    if-eqz p1, :cond_10

    .line 206
    invoke-static {v5}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 208
    :cond_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 213
    .end local v3           #j:I
    :cond_11
    if-eqz p1, :cond_12

    .line 214
    invoke-static {v5}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 216
    :cond_12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 221
    .end local v5           #target:Ljava/lang/String;
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static htmlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 52
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 53
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 54
    const-string v0, "&#39;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 55
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 56
    const-string v0, "&nbsp;"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static htmlDecodeWithoutSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 62
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 63
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 64
    const-string v0, "&#39;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 65
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 11
    .local v2, lastIsSpace:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 13
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    const/4 v2, 0x0

    .line 11
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_1

    .line 19
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/4 v2, 0x0

    .line 21
    goto :goto_1

    .line 23
    :sswitch_2
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const/4 v2, 0x0

    .line 25
    goto :goto_1

    .line 27
    :sswitch_3
    const-string v4, "&#39;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const/4 v2, 0x0

    .line 29
    goto :goto_1

    .line 31
    :sswitch_4
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v2, 0x0

    .line 33
    goto :goto_1

    .line 35
    :sswitch_5
    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 37
    const-string v4, "&nbsp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 39
    :cond_0
    const/4 v2, 0x1

    .line 40
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 48
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 13
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_5
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static htmlEncode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .parameter "newLineToBR"

    .prologue
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 73
    .local v2, lastIsSpace:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 75
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const/4 v2, 0x0

    .line 73
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v2, 0x0

    .line 79
    goto :goto_1

    .line 81
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const/4 v2, 0x0

    .line 83
    goto :goto_1

    .line 85
    :sswitch_2
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/4 v2, 0x0

    .line 87
    goto :goto_1

    .line 89
    :sswitch_3
    const-string v4, "&#39;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/4 v2, 0x0

    .line 91
    goto :goto_1

    .line 93
    :sswitch_4
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/4 v2, 0x0

    .line 95
    goto :goto_1

    .line 97
    :sswitch_5
    if-eqz p1, :cond_0

    .line 98
    const-string v4, "<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_2
    const/4 v2, 0x0

    .line 103
    goto :goto_1

    .line 100
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 105
    :sswitch_6
    if-eqz v2, :cond_1

    .line 106
    const/4 v2, 0x0

    .line 107
    const-string v4, "&nbsp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :cond_1
    const/4 v2, 0x1

    .line 110
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 75
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0x20 -> :sswitch_6
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static isArabicCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 122
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 123
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 126
    :cond_0
    const/4 v1, 0x1

    .line 128
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isToken(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 133
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2f

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x3a

    if-lt p0, v0, :cond_1

    const/16 v0, 0x40

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x5b

    if-lt p0, v0, :cond_2

    const/16 v0, 0x60

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x7b

    if-lt p0, v0, :cond_3

    const/16 v0, 0x7e

    if-le p0, v0, :cond_4

    :cond_3
    const/16 v0, 0x80

    if-lt p0, v0, :cond_5

    const/16 v0, 0xad

    if-gt p0, v0, :cond_5

    .line 138
    :cond_4
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
