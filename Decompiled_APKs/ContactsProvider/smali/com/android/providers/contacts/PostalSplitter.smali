.class public Lcom/android/providers/contacts/PostalSplitter;
.super Ljava/lang/Object;
.source "PostalSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/PostalSplitter$Postal;
    }
.end annotation


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String; = null

.field private static final NEWLINE:Ljava/lang/String; = "\n"

.field private static final SPACE:Ljava/lang/String; = " "


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    .line 64
    return-void
.end method

.method private static arePrintableAsciiOnly([Ljava/lang/String;)Z
    .locals 6
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 232
    if-nez p0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v4

    .line 235
    :cond_1
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 236
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 235
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 240
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 14
    .parameter "postal"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 166
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    move v9, v11

    .line 167
    .local v9, hasStreet:Z
    :goto_0
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    move v5, v11

    .line 168
    .local v5, hasPobox:Z
    :goto_1
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_14

    move v4, v11

    .line 169
    .local v4, hasNeighborhood:Z
    :goto_2
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_15

    move v1, v11

    .line 170
    .local v1, hasCity:Z
    :goto_3
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    move v7, v11

    .line 171
    .local v7, hasRegion:Z
    :goto_4
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    move v6, v11

    .line 172
    .local v6, hasPostcode:Z
    :goto_5
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_18

    move v2, v11

    .line 178
    .local v2, hasCountry:Z
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez v9, :cond_0

    if-nez v5, :cond_0

    if-eqz v4, :cond_19

    :cond_0
    move v3, v11

    .line 181
    .local v3, hasFirstBlock:Z
    :goto_7
    if-nez v1, :cond_1

    if-nez v7, :cond_1

    if-eqz v6, :cond_1a

    :cond_1
    move v8, v11

    .line 182
    .local v8, hasSecondBlock:Z
    :goto_8
    move v10, v2

    .line 184
    .local v10, hasThirdBlock:Z
    if-eqz v3, :cond_7

    .line 185
    if-eqz v9, :cond_2

    .line 186
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_2
    if-eqz v5, :cond_4

    .line 189
    if-eqz v9, :cond_3

    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_3
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_4
    if-eqz v4, :cond_7

    .line 193
    if-nez v9, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_6
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_7
    if-eqz v8, :cond_e

    .line 199
    if-eqz v3, :cond_8

    .line 200
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_8
    if-eqz v1, :cond_9

    .line 203
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_9
    if-eqz v7, :cond_b

    .line 206
    if-eqz v1, :cond_a

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_a
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_b
    if-eqz v6, :cond_e

    .line 210
    if-nez v1, :cond_c

    if-eqz v7, :cond_d

    :cond_c
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_d
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_e
    if-eqz v10, :cond_11

    .line 216
    if-nez v3, :cond_f

    if-eqz v8, :cond_10

    .line 217
    :cond_f
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_10
    if-eqz v2, :cond_11

    .line 220
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_1b

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 227
    :goto_9
    return-object v11

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasCity:Z
    .end local v2           #hasCountry:Z
    .end local v3           #hasFirstBlock:Z
    .end local v4           #hasNeighborhood:Z
    .end local v5           #hasPobox:Z
    .end local v6           #hasPostcode:Z
    .end local v7           #hasRegion:Z
    .end local v8           #hasSecondBlock:Z
    .end local v9           #hasStreet:Z
    .end local v10           #hasThirdBlock:Z
    :cond_12
    move v9, v12

    .line 166
    goto/16 :goto_0

    .restart local v9       #hasStreet:Z
    :cond_13
    move v5, v12

    .line 167
    goto/16 :goto_1

    .restart local v5       #hasPobox:Z
    :cond_14
    move v4, v12

    .line 168
    goto/16 :goto_2

    .restart local v4       #hasNeighborhood:Z
    :cond_15
    move v1, v12

    .line 169
    goto/16 :goto_3

    .restart local v1       #hasCity:Z
    :cond_16
    move v7, v12

    .line 170
    goto/16 :goto_4

    .restart local v7       #hasRegion:Z
    :cond_17
    move v6, v12

    .line 171
    goto/16 :goto_5

    .restart local v6       #hasPostcode:Z
    :cond_18
    move v2, v12

    .line 172
    goto/16 :goto_6

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #hasCountry:Z
    :cond_19
    move v3, v12

    .line 180
    goto/16 :goto_7

    .restart local v3       #hasFirstBlock:Z
    :cond_1a
    move v8, v12

    .line 181
    goto/16 :goto_8

    .line 227
    .restart local v8       #hasSecondBlock:Z
    .restart local v10       #hasThirdBlock:Z
    :cond_1b
    const/4 v11, 0x0

    goto :goto_9
.end method

.method private joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 14
    .parameter "postal"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 100
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    move v9, v11

    .line 101
    .local v9, hasStreet:Z
    :goto_0
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    move v5, v11

    .line 102
    .local v5, hasPobox:Z
    :goto_1
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_14

    move v4, v11

    .line 103
    .local v4, hasNeighborhood:Z
    :goto_2
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_15

    move v1, v11

    .line 104
    .local v1, hasCity:Z
    :goto_3
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    move v7, v11

    .line 105
    .local v7, hasRegion:Z
    :goto_4
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    move v6, v11

    .line 106
    .local v6, hasPostcode:Z
    :goto_5
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_18

    move v2, v11

    .line 112
    .local v2, hasCountry:Z
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez v2, :cond_0

    if-eqz v6, :cond_19

    :cond_0
    move v3, v11

    .line 115
    .local v3, hasFirstBlock:Z
    :goto_7
    if-nez v7, :cond_1

    if-nez v1, :cond_1

    if-eqz v4, :cond_1a

    :cond_1
    move v8, v11

    .line 116
    .local v8, hasSecondBlock:Z
    :goto_8
    if-nez v9, :cond_2

    if-eqz v5, :cond_1b

    :cond_2
    move v10, v11

    .line 118
    .local v10, hasThirdBlock:Z
    :goto_9
    if-eqz v3, :cond_5

    .line 119
    if-eqz v2, :cond_3

    .line 120
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_3
    if-eqz v6, :cond_5

    .line 123
    if-eqz v2, :cond_4

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_4
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_5
    if-eqz v8, :cond_c

    .line 129
    if-eqz v3, :cond_6

    .line 130
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_6
    if-eqz v7, :cond_7

    .line 133
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_7
    if-eqz v1, :cond_9

    .line 136
    if-eqz v7, :cond_8

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_8
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_9
    if-eqz v4, :cond_c

    .line 140
    if-nez v7, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_b
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_c
    if-eqz v10, :cond_11

    .line 146
    if-nez v3, :cond_d

    if-eqz v8, :cond_e

    .line 147
    :cond_d
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_e
    if-eqz v9, :cond_f

    .line 150
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_f
    if-eqz v5, :cond_11

    .line 153
    if-eqz v9, :cond_10

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_10
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_1c

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 161
    :goto_a
    return-object v11

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasCity:Z
    .end local v2           #hasCountry:Z
    .end local v3           #hasFirstBlock:Z
    .end local v4           #hasNeighborhood:Z
    .end local v5           #hasPobox:Z
    .end local v6           #hasPostcode:Z
    .end local v7           #hasRegion:Z
    .end local v8           #hasSecondBlock:Z
    .end local v9           #hasStreet:Z
    .end local v10           #hasThirdBlock:Z
    :cond_12
    move v9, v12

    .line 100
    goto/16 :goto_0

    .restart local v9       #hasStreet:Z
    :cond_13
    move v5, v12

    .line 101
    goto/16 :goto_1

    .restart local v5       #hasPobox:Z
    :cond_14
    move v4, v12

    .line 102
    goto/16 :goto_2

    .restart local v4       #hasNeighborhood:Z
    :cond_15
    move v1, v12

    .line 103
    goto/16 :goto_3

    .restart local v1       #hasCity:Z
    :cond_16
    move v7, v12

    .line 104
    goto/16 :goto_4

    .restart local v7       #hasRegion:Z
    :cond_17
    move v6, v12

    .line 105
    goto/16 :goto_5

    .restart local v6       #hasPostcode:Z
    :cond_18
    move v2, v12

    .line 106
    goto/16 :goto_6

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #hasCountry:Z
    :cond_19
    move v3, v12

    .line 114
    goto/16 :goto_7

    .restart local v3       #hasFirstBlock:Z
    :cond_1a
    move v8, v12

    .line 115
    goto/16 :goto_8

    .restart local v8       #hasSecondBlock:Z
    :cond_1b
    move v10, v12

    .line 116
    goto/16 :goto_9

    .line 161
    .restart local v10       #hasThirdBlock:Z
    :cond_1c
    const/4 v11, 0x0

    goto :goto_a
.end method


# virtual methods
.method public join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 3
    .parameter "postal"

    .prologue
    .line 85
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 90
    .local v0, values:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/providers/contacts/PostalSplitter;->arePrintableAsciiOnly([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V
    .locals 1
    .parameter "postal"
    .parameter "formattedAddress"

    .prologue
    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-object p2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    .line 74
    :cond_0
    return-void
.end method
