.class public abstract Lcom/android/providers/contacts/NameLookupBuilder;
.super Ljava/lang/Object;
.source "NameLookupBuilder.java"


# static fields
.field private static final KOREAN_JAUM_CONVERT_MAP:[I = null

.field private static final MAX_NAME_TOKENS:I = 0x4


# instance fields
.field private mExtraSearchnames:[Ljava/lang/String;

.field private mNames:[Ljava/lang/String;

.field private mNicknameClusters:[[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
        0x5t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x11t 0x0t 0x0t
        0x7t 0x11t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x0t
        0xat 0x11t 0x0t 0x0t
        0xbt 0x11t 0x0t 0x0t
        0xct 0x11t 0x0t 0x0t
        0xdt 0x11t 0x0t 0x0t
        0xet 0x11t 0x0t 0x0t
        0xft 0x11t 0x0t 0x0t
        0x10t 0x11t 0x0t 0x0t
        0x11t 0x11t 0x0t 0x0t
        0x12t 0x11t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/providers/contacts/NameSplitter;)V
    .locals 2
    .parameter "splitter"

    .prologue
    const/16 v1, 0xa

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 40
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    .line 41
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mExtraSearchnames:[Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 81
    return-void
.end method

.method private appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V
    .locals 9
    .parameter "builder"
    .parameter "name"

    .prologue
    const/16 v8, 0x3131

    const v7, 0xac00

    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, position:I
    const/4 v1, 0x0

    .line 191
    .local v1, consonantLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 192
    .local v4, stringLength:I
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 194
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #position:I
    .local v3, position:I
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 195
    .local v0, character:I
    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    .line 227
    :cond_0
    :goto_1
    if-lt v3, v4, :cond_8

    .line 231
    :cond_1
    :goto_2
    const/4 v5, 0x1

    if-le v1, v5, :cond_2

    .line 232
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 234
    :cond_2
    return-void

    .line 201
    :cond_3
    const/16 v5, 0x1100

    if-lt v0, v5, :cond_1

    const/16 v5, 0x1112

    if-le v0, v5, :cond_4

    if-lt v0, v8, :cond_1

    :cond_4
    const/16 v5, 0x314e

    if-le v0, v5, :cond_5

    if-lt v0, v7, :cond_1

    :cond_5
    const v5, 0xd7a3

    if-gt v0, v5, :cond_1

    .line 207
    if-lt v0, v7, :cond_7

    .line 211
    sub-int v5, v0, v7

    div-int/lit16 v5, v5, 0x24c

    add-int/lit16 v0, v5, 0x1100

    .line 225
    :cond_6
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_7
    if-lt v0, v8, :cond_6

    .line 215
    add-int/lit16 v5, v0, -0x3131

    sget-object v6, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 219
    sget-object v5, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v6, v0, -0x3131

    aget v0, v5, v6

    .line 220
    if-nez v0, :cond_6

    goto :goto_2

    :cond_8
    move v2, v3

    .end local v3           #position:I
    .restart local v2       #position:I
    goto :goto_0
.end method

.method private appendNameLookupForLocaleBasedName(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 2
    .parameter "builder"
    .parameter "fullName"
    .parameter "fullNameStyle"

    .prologue
    .line 172
    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    .line 173
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 174
    .local v0, name:Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V

    .line 175
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 177
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/NameLookupBuilder;->appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameLookupBuilder;->appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V

    .line 181
    .end local v0           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_1
    return-void
.end method

.method private appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 2
    .parameter "builder"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 334
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v0

    .line 336
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 337
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method private getWestNameShortHand(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "fullName"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v8, v11

    .line 499
    :cond_0
    :goto_0
    return-object v8

    .line 479
    :cond_1
    new-instance v6, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v6}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 480
    .local v6, name:Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v12, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v12, v6, p1}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v6}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, familyName:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, givenName:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, middleName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 485
    .local v0, familyInitial:C
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 486
    .local v4, middileInitial:C
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 488
    .local v2, givenInitial:C
    :goto_3
    iget-object v10, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v10, p1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v9

    .line 489
    .local v9, style:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 491
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 495
    .local v8, sortHand:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x2

    if-eq v10, v12, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x3

    if-eq v10, v12, :cond_0

    .end local v8           #sortHand:Ljava/lang/String;
    :cond_2
    move-object v8, v11

    .line 499
    goto :goto_0

    .end local v0           #familyInitial:C
    .end local v2           #givenInitial:C
    .end local v4           #middileInitial:C
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v9           #style:I
    :cond_3
    move v0, v10

    .line 484
    goto :goto_1

    .restart local v0       #familyInitial:C
    :cond_4
    move v4, v10

    .line 485
    goto :goto_2

    .restart local v4       #middileInitial:C
    :cond_5
    move v2, v10

    .line 486
    goto :goto_3
.end method

.method private insertCollationKey(JJI)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "tokenCount"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 301
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, p5, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 305
    :cond_0
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 307
    return-void
.end method

.method private insertKoreanNameConsonantsLookup(JJLjava/lang/String;)V
    .locals 13
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"

    .prologue
    .line 396
    const/4 v10, 0x0

    .line 397
    .local v10, position:I
    const/4 v9, 0x0

    .line 400
    .local v9, consonantLength:I
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v12

    .line 401
    .local v12, stringLength:I
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 403
    :goto_0
    add-int/lit8 v11, v10, 0x1

    .end local v10           #position:I
    .local v11, position:I
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 404
    .local v8, character:I
    const/16 v1, 0x20

    if-eq v8, v1, :cond_0

    const/16 v1, 0x2c

    if-eq v8, v1, :cond_0

    const/16 v1, 0x2e

    if-ne v8, v1, :cond_3

    .line 436
    :cond_0
    :goto_1
    if-lt v11, v12, :cond_8

    .line 440
    :cond_1
    :goto_2
    const/4 v1, 0x1

    if-le v9, v1, :cond_2

    .line 441
    const/4 v6, 0x7

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 444
    :cond_2
    return-void

    .line 410
    :cond_3
    const/16 v1, 0x1100

    if-lt v8, v1, :cond_1

    const/16 v1, 0x1112

    if-le v8, v1, :cond_4

    const/16 v1, 0x3131

    if-lt v8, v1, :cond_1

    :cond_4
    const/16 v1, 0x314e

    if-le v8, v1, :cond_5

    const v1, 0xac00

    if-lt v8, v1, :cond_1

    :cond_5
    const v1, 0xd7a3

    if-gt v8, v1, :cond_1

    .line 416
    const v1, 0xac00

    if-lt v8, v1, :cond_7

    .line 420
    const v1, 0xac00

    sub-int v1, v8, v1

    div-int/lit16 v1, v1, 0x24c

    add-int/lit16 v8, v1, 0x1100

    .line 434
    :cond_6
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 421
    :cond_7
    const/16 v1, 0x3131

    if-lt v8, v1, :cond_6

    .line 424
    add-int/lit16 v1, v8, -0x3131

    sget-object v2, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 428
    sget-object v1, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v2, v8, -0x3131

    aget v8, v1, v2

    .line 429
    if-nez v8, :cond_6

    goto :goto_2

    :cond_8
    move v10, v11

    .end local v11           #position:I
    .restart local v10       #position:I
    goto :goto_0
.end method

.method private insertLocaleBasedSpecificLookup(JJLjava/lang/String;I)V
    .locals 1
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 387
    const/4 v0, 0x5

    if-ne p6, v0, :cond_0

    .line 388
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/NameLookupBuilder;->insertKoreanNameConsonantsLookup(JJLjava/lang/String;)V

    .line 390
    :cond_0
    return-void
.end method

.method private insertNameShorthandLookup(JJLjava/lang/String;I)V
    .locals 12
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 448
    const/4 v9, 0x0

    .line 449
    .local v9, hasLocaleToken:Z
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v2

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v10

    .line 451
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v10, :cond_0

    .line 452
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 454
    .local v11, key:Ljava/lang/String;
    const/4 v7, 0x6

    invoke-virtual {p0, v11}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 456
    const/4 v9, 0x1

    .line 457
    goto :goto_0

    .line 473
    .end local v11           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private insertNameVariant(JJIIZ)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "tokenCount"
    .parameter "lookupType"
    .parameter "buildCollationKey"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 281
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, p5, :cond_1

    .line 282
    if-eqz v7, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 290
    if-eqz p7, :cond_2

    .line 291
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 293
    :cond_2
    return-void
.end method

.method private insertNameVariants(JJIIZZ)V
    .locals 13
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "initiallyExact"
    .parameter "buildCollationKey"

    .prologue
    .line 252
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_2

    .line 253
    if-eqz p7, :cond_1

    const/4 v8, 0x0

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 272
    :cond_0
    return-void

    .line 253
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v11, v2, p5

    .line 262
    .local v11, firstToken:Ljava/lang/String;
    move/from16 v12, p5

    .local v12, i:I
    :goto_1
    move/from16 v0, p6

    if-ge v12, v0, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v12

    aput-object v3, v2, p5

    .line 264
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v11, v2, v12

    .line 266
    add-int/lit8 v7, p5, 0x1

    if-eqz p7, :cond_3

    move/from16 v0, p5

    if-ne v12, v0, :cond_3

    const/4 v9, 0x1

    :goto_2
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 269
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, p5

    aput-object v3, v2, v12

    .line 270
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v11, v2, p5

    .line 262
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 266
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private insertNicknamePermutations(JJII)V
    .locals 14
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "fromIndex"
    .parameter "tokenCount"

    .prologue
    .line 315
    move/from16 v11, p5

    .local v11, i:I
    :goto_0
    move/from16 v0, p6

    if-ge v11, v0, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    aget-object v10, v1, v11

    .line 317
    .local v10, clusters:[Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v13, v1, v11

    .line 319
    .local v13, token:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    array-length v1, v10

    if-ge v12, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v10, v12

    aput-object v2, v1, v11

    .line 323
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 326
    add-int/lit8 v6, v11, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    .line 319
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v13, v1, v11

    .line 315
    .end local v12           #j:I
    .end local v13           #token:Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 331
    .end local v10           #clusters:[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public appendToSearchIndex(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 4
    .parameter "builder"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 155
    .local v1, tokenCount:I
    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameLookupForLocaleBasedName(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected abstract getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public insertExtraSearchTokenNameLookup(JJLjava/lang/String;I)V
    .locals 14
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 349
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v1, " ,._-@/"

    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-direct {v13, v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 351
    .local v13, tokenizer:Ljava/util/StringTokenizer;
    const/4 v9, 0x0

    .line 352
    .local v9, catchToken:Z
    const/4 v8, 0x0

    .line 353
    .local v8, EndPointer:I
    :cond_0
    :goto_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    if-ge v8, v1, :cond_3

    .line 354
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 355
    .local v11, token:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    .line 359
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 361
    :cond_1
    const/4 v9, 0x1

    .line 362
    goto :goto_0

    .line 365
    :cond_2
    if-eqz v9, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mExtraSearchnames:[Ljava/lang/String;

    aput-object v11, v1, v8

    .line 367
    add-int/lit8 v8, v8, 0x1

    .line 368
    const/4 v9, 0x0

    goto :goto_0

    .line 373
    .end local v11           #token:Ljava/lang/String;
    :cond_3
    move v12, v8

    .line 374
    .local v12, tokenCount:I
    if-nez v12, :cond_5

    .line 383
    :cond_4
    return-void

    .line 378
    :cond_5
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_4

    .line 379
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mExtraSearchnames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mExtraSearchnames:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 380
    const/16 v6, 0x8

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mExtraSearchnames:[Ljava/lang/String;

    aget-object v7, v1, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 378
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method protected abstract insertNameLookup(JJILjava/lang/String;)V
.end method

.method public insertNameLookup(JJLjava/lang/String;I)V
    .locals 19
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 105
    .local v6, tokenCount:I
    if-nez v6, :cond_0

    .line 151
    :goto_0
    return-void

    .line 109
    :cond_0
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v6, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    .line 109
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 113
    :cond_1
    const/4 v1, 0x4

    if-le v6, v1, :cond_2

    const/16 v18, 0x1

    .line 114
    .local v18, tooManyTokens:Z
    :goto_2
    if-eqz v18, :cond_4

    .line 115
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/providers/contacts/NameLookupBuilder$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/providers/contacts/NameLookupBuilder$1;-><init>(Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-static {v1, v2, v6, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .line 128
    .local v16, firstToken:Ljava/lang/String;
    const/16 v17, 0x4

    :goto_3
    move/from16 v0, v17

    if-ge v0, v6, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v17

    aput-object v3, v1, v2

    .line 130
    const/4 v12, 0x4

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 128
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 113
    .end local v16           #firstToken:Ljava/lang/String;
    .end local v18           #tooManyTokens:Z
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 132
    .restart local v16       #firstToken:Ljava/lang/String;
    .restart local v18       #tooManyTokens:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    .line 134
    const/4 v6, 0x4

    .line 138
    .end local v16           #firstToken:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v0, v6, :cond_5

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameLookupBuilder;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    .line 138
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 142
    :cond_5
    const/4 v12, 0x0

    if-nez v18, :cond_6

    const/4 v14, 0x1

    :goto_5
    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move v13, v6

    invoke-direct/range {v7 .. v15}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 143
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    .line 145
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameShorthandLookup(JJLjava/lang/String;I)V

    .line 146
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertLocaleBasedSpecificLookup(JJLjava/lang/String;I)V

    .line 149
    invoke-virtual/range {p0 .. p6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertExtraSearchTokenNameLookup(JJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 142
    :cond_6
    const/4 v14, 0x0

    goto :goto_5
.end method

.method protected normalizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 237
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
