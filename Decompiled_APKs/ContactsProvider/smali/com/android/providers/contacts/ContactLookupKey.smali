.class public Lcom/android/providers/contacts/ContactLookupKey;
.super Ljava/lang/Object;
.source "ContactLookupKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    }
.end annotation


# static fields
.field public static final LOOKUP_TYPE_DISPLAY_NAME:I = 0x1

.field public static final LOOKUP_TYPE_PROFILE:I = 0x3

.field public static final LOOKUP_TYPE_RAW_CONTACT_ID:I = 0x2

.field public static final LOOKUP_TYPE_SOURCE_ID:I = 0x0

.field public static final PROFILE_LOOKUP_KEY:Ljava/lang/String; = "profile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static appendEscapedSourceId(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 4
    .parameter "sb"
    .parameter "sourceId"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, escaped:Z
    const/4 v2, 0x0

    .line 95
    .local v2, start:I
    :goto_0
    const/16 v3, 0x2e

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 96
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 106
    return v0

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 103
    const-string v3, ".."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v2, v1, 0x1

    .line 105
    goto :goto_0
.end method

.method public static appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "lookupKey"
    .parameter "accountTypeWithDataSet"
    .parameter "accountName"
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "displayName"

    .prologue
    .line 70
    if-nez p6, :cond_0

    .line 71
    const-string p6, ""

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    invoke-static {p1, p2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    if-nez p5, :cond_3

    .line 80
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    :goto_0
    return-void

    .line 83
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 84
    .local v0, pos:I
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p0, p5}, Lcom/android/providers/contacts/ContactLookupKey;->appendEscapedSourceId(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0
.end method

.method public static getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "accountTypeWithDataSet"
    .parameter "accountName"

    .prologue
    .line 60
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xfff

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .parameter "lookupKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    const-string v19, "profile"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 116
    new-instance v13, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    invoke-direct {v13}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;-><init>()V

    .line 117
    .local v13, profileSegment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v13, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    .line 118
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v13           #profileSegment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_0
    return-object v9

    .line 122
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 123
    .local v18, string:Ljava/lang/String;
    const/4 v11, 0x0

    .line 124
    .local v11, offset:I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    .line 125
    .local v8, length:I
    const/4 v6, 0x0

    .line 126
    .local v6, hashCode:I
    const/4 v10, -0x1

    .line 127
    .local v10, lookupType:I
    const/4 v5, 0x0

    .line 128
    .local v5, escaped:Z
    const/4 v14, 0x0

    .line 131
    .local v14, rawContactId:Ljava/lang/String;
    :goto_0
    if-ge v11, v8, :cond_0

    .line 132
    const/4 v3, 0x0

    .line 135
    .local v3, c:C
    const/4 v6, 0x0

    move v12, v11

    .line 136
    .end local v11           #offset:I
    .local v12, offset:I
    :goto_1
    if-ge v12, v8, :cond_18

    .line 137
    add-int/lit8 v11, v12, 0x1

    .end local v12           #offset:I
    .restart local v11       #offset:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 138
    const/16 v19, 0x30

    move/from16 v0, v19

    if-lt v3, v0, :cond_2

    const/16 v19, 0x39

    move/from16 v0, v19

    if-le v3, v0, :cond_3

    .line 145
    :cond_2
    :goto_2
    const/16 v19, 0x69

    move/from16 v0, v19

    if-ne v3, v0, :cond_4

    .line 146
    const/4 v10, 0x0

    .line 147
    const/4 v5, 0x0

    .line 160
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 242
    new-instance v19, Ljava/lang/IllegalStateException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalStateException;-><init>()V

    throw v19

    .line 141
    :cond_3
    mul-int/lit8 v19, v6, 0xa

    add-int/lit8 v20, v3, -0x30

    add-int v6, v19, v20

    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto :goto_1

    .line 148
    .end local v12           #offset:I
    .restart local v11       #offset:I
    :cond_4
    const/16 v19, 0x65

    move/from16 v0, v19

    if-ne v3, v0, :cond_5

    .line 149
    const/4 v10, 0x0

    .line 150
    const/4 v5, 0x1

    goto :goto_3

    .line 151
    :cond_5
    const/16 v19, 0x6e

    move/from16 v0, v19

    if-ne v3, v0, :cond_6

    .line 152
    const/4 v10, 0x1

    goto :goto_3

    .line 153
    :cond_6
    const/16 v19, 0x72

    move/from16 v0, v19

    if-ne v3, v0, :cond_7

    .line 154
    const/4 v10, 0x2

    goto :goto_3

    .line 156
    :cond_7
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid lookup id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 162
    :pswitch_0
    if-eqz v5, :cond_c

    .line 163
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .local v15, sb:Ljava/lang/StringBuffer;
    move v12, v11

    .line 164
    .end local v11           #offset:I
    .restart local v12       #offset:I
    :goto_4
    if-ge v12, v8, :cond_a

    .line 165
    add-int/lit8 v11, v12, 0x1

    .end local v12           #offset:I
    .restart local v11       #offset:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 167
    const/16 v19, 0x2e

    move/from16 v0, v19

    if-ne v3, v0, :cond_9

    .line 168
    if-ne v11, v8, :cond_8

    .line 169
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid lookup id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 172
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 174
    const/16 v19, 0x2e

    move/from16 v0, v19

    if-ne v3, v0, :cond_b

    .line 175
    const/16 v19, 0x2e

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    add-int/lit8 v11, v11, 0x1

    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto :goto_4

    .line 181
    .end local v12           #offset:I
    .restart local v11       #offset:I
    :cond_9
    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto :goto_4

    :cond_a
    move v11, v12

    .line 184
    .end local v12           #offset:I
    .restart local v11       #offset:I
    :cond_b
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 245
    .end local v15           #sb:Ljava/lang/StringBuffer;
    .local v7, key:Ljava/lang/String;
    :goto_5
    new-instance v16, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    invoke-direct/range {v16 .. v16}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;-><init>()V

    .line 246
    .local v16, segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    move-object/from16 v0, v16

    iput v6, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    .line 247
    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    .line 248
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    .line 249
    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    .line 250
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    .line 251
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 186
    .end local v7           #key:Ljava/lang/String;
    .end local v16           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_c
    move/from16 v17, v11

    .local v17, start:I
    move v12, v11

    .line 187
    .end local v11           #offset:I
    .restart local v12       #offset:I
    :goto_6
    if-ge v12, v8, :cond_17

    .line 188
    add-int/lit8 v11, v12, 0x1

    .end local v12           #offset:I
    .restart local v11       #offset:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 189
    const/16 v19, 0x2e

    move/from16 v0, v19

    if-ne v3, v0, :cond_16

    .line 193
    :goto_7
    if-ne v11, v8, :cond_d

    .line 194
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #key:Ljava/lang/String;
    goto :goto_5

    .line 196
    .end local v7           #key:Ljava/lang/String;
    :cond_d
    add-int/lit8 v19, v11, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #key:Ljava/lang/String;
    goto :goto_5

    .line 202
    .end local v7           #key:Ljava/lang/String;
    .end local v17           #start:I
    :pswitch_1
    move/from16 v17, v11

    .restart local v17       #start:I
    move v12, v11

    .line 203
    .end local v11           #offset:I
    .restart local v12       #offset:I
    :goto_8
    if-ge v12, v8, :cond_15

    .line 204
    add-int/lit8 v11, v12, 0x1

    .end local v12           #offset:I
    .restart local v11       #offset:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 205
    const/16 v19, 0x2e

    move/from16 v0, v19

    if-ne v3, v0, :cond_14

    .line 209
    :goto_9
    if-ne v11, v8, :cond_e

    .line 210
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #key:Ljava/lang/String;
    goto :goto_5

    .line 212
    .end local v7           #key:Ljava/lang/String;
    :cond_e
    add-int/lit8 v19, v11, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 214
    .restart local v7       #key:Ljava/lang/String;
    goto :goto_5

    .line 217
    .end local v7           #key:Ljava/lang/String;
    .end local v17           #start:I
    :pswitch_2
    const/4 v4, -0x1

    .line 218
    .local v4, dash:I
    move/from16 v17, v11

    .line 219
    .restart local v17       #start:I
    :cond_f
    if-ge v11, v8, :cond_11

    .line 220
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 221
    const/16 v19, 0x2d

    move/from16 v0, v19

    if-ne v3, v0, :cond_10

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_10

    .line 222
    move v4, v11

    .line 224
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 225
    const/16 v19, 0x2e

    move/from16 v0, v19

    if-ne v3, v0, :cond_f

    .line 229
    :cond_11
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_12

    .line 230
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 231
    add-int/lit8 v17, v4, 0x1

    .line 233
    :cond_12
    if-ne v11, v8, :cond_13

    .line 234
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #key:Ljava/lang/String;
    goto/16 :goto_5

    .line 236
    .end local v7           #key:Ljava/lang/String;
    :cond_13
    add-int/lit8 v19, v11, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 238
    .restart local v7       #key:Ljava/lang/String;
    goto/16 :goto_5

    .end local v4           #dash:I
    .end local v7           #key:Ljava/lang/String;
    :cond_14
    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto :goto_8

    :cond_15
    move v11, v12

    .end local v12           #offset:I
    .restart local v11       #offset:I
    goto :goto_9

    :cond_16
    move v12, v11

    .end local v11           #offset:I
    .restart local v12       #offset:I
    goto/16 :goto_6

    :cond_17
    move v11, v12

    .end local v12           #offset:I
    .restart local v11       #offset:I
    goto/16 :goto_7

    .end local v11           #offset:I
    .end local v17           #start:I
    .restart local v12       #offset:I
    :cond_18
    move v11, v12

    .end local v12           #offset:I
    .restart local v11       #offset:I
    goto/16 :goto_2

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
