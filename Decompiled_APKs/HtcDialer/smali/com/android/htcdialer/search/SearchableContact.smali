.class public Lcom/android/htcdialer/search/SearchableContact;
.super Ljava/lang/Object;
.source "SearchableContact.java"


# static fields
.field private static final HANGUL_CHAR_MAP:[C = null

.field private static final HANGUL_INDEX:[C = null

.field private static final LBase:I = 0x1100

.field private static final LCount:I = 0x13

.field private static MAP_LENGTH:I = 0x0

.field private static final NAME_SEPARATORS:Ljava/lang/String; = " ()-.,;_/{}"

.field private static final NCount:I = 0x24c

.field private static final SBase:I = 0xac00

.field private static final SCount:I = 0x2ba4

.field private static final TBase:I = 0x11a7

.field private static final TCount:I = 0x1c

.field private static final VBase:I = 0x1161

.field private static final VCount:I = 0x15


# instance fields
.field public emailCount:I

.field public emails:[Ljava/lang/String;

.field public id:J

.field public isFavorite:Z

.field public isMyPhonebook:Z

.field public isSimContact:Z

.field public mSendToVoicemail:I

.field public mVip:I

.field public name:Ljava/lang/String;

.field public namePosition:[I

.field public pattern:[[[C

.field public phoneCount:I

.field public phones:[Lcom/android/htcdialer/search/SearchablePhone;

.field public photoId:J

.field public ringTonePath:Ljava/lang/String;

.field public sectionIndex:I

.field public sortKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    const/16 v0, 0x33

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/htcdialer/search/SearchableContact;->HANGUL_INDEX:[C

    .line 368
    const/16 v0, 0x66

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/htcdialer/search/SearchableContact;->HANGUL_CHAR_MAP:[C

    .line 422
    sget-object v0, Lcom/android/htcdialer/search/SearchableContact;->HANGUL_CHAR_MAP:[C

    array-length v0, v0

    sput v0, Lcom/android/htcdialer/search/SearchableContact;->MAP_LENGTH:I

    return-void

    .line 314
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2at 0x0t
        0x2t 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x13t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x14t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
    .end array-data

    .line 368
    nop

    :array_1
    .array-data 0x2
        0x0t 0x11t
        0x31t 0x31t
        0x1t 0x11t
        0x32t 0x31t
        0x2t 0x11t
        0x34t 0x31t
        0x3t 0x11t
        0x37t 0x31t
        0x4t 0x11t
        0x38t 0x31t
        0x5t 0x11t
        0x39t 0x31t
        0x6t 0x11t
        0x41t 0x31t
        0x7t 0x11t
        0x42t 0x31t
        0x8t 0x11t
        0x43t 0x31t
        0x9t 0x11t
        0x45t 0x31t
        0xat 0x11t
        0x46t 0x31t
        0xbt 0x11t
        0x47t 0x31t
        0xct 0x11t
        0x48t 0x31t
        0xdt 0x11t
        0x49t 0x31t
        0xet 0x11t
        0x4at 0x31t
        0xft 0x11t
        0x4bt 0x31t
        0x10t 0x11t
        0x4ct 0x31t
        0x11t 0x11t
        0x4dt 0x31t
        0x12t 0x11t
        0x4et 0x31t
        0x1at 0x11t
        0x40t 0x31t
        0x21t 0x11t
        0x44t 0x31t
        0x61t 0x11t
        0x4ft 0x31t
        0x62t 0x11t
        0x50t 0x31t
        0x63t 0x11t
        0x51t 0x31t
        0x64t 0x11t
        0x52t 0x31t
        0x65t 0x11t
        0x53t 0x31t
        0x66t 0x11t
        0x54t 0x31t
        0x67t 0x11t
        0x55t 0x31t
        0x68t 0x11t
        0x56t 0x31t
        0x69t 0x11t
        0x57t 0x31t
        0x6at 0x11t
        0x58t 0x31t
        0x6bt 0x11t
        0x59t 0x31t
        0x6ct 0x11t
        0x5at 0x31t
        0x6dt 0x11t
        0x5bt 0x31t
        0x6et 0x11t
        0x5ct 0x31t
        0x6ft 0x11t
        0x5dt 0x31t
        0x70t 0x11t
        0x5et 0x31t
        0x71t 0x11t
        0x5ft 0x31t
        0x72t 0x11t
        0x60t 0x31t
        0x73t 0x11t
        0x61t 0x31t
        0x74t 0x11t
        0x62t 0x31t
        0x75t 0x11t
        0x63t 0x31t
        0xaat 0x11t
        0x33t 0x31t
        0xact 0x11t
        0x35t 0x31t
        0xadt 0x11t
        0x36t 0x31t
        0xb0t 0x11t
        0x3at 0x31t
        0xb1t 0x11t
        0x3bt 0x31t
        0xb2t 0x11t
        0x3ct 0x31t
        0xb3t 0x11t
        0x3dt 0x31t
        0xb4t 0x11t
        0x3et 0x31t
        0xb5t 0x11t
        0x3ft 0x31t
    .end array-data
.end method

.method public constructor <init>(JJLjava/lang/String;ZZZLjava/lang/String;II)V
    .locals 2
    .parameter "id"
    .parameter "photoId"
    .parameter "name"
    .parameter "isSimContact"
    .parameter "isMyPhonebook"
    .parameter "isFavorite"
    .parameter "ringTonePath"
    .parameter "mSendToVoicemail"
    .parameter "mVip"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htcdialer/search/SearchableContact;->id:J

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htcdialer/search/SearchableContact;->photoId:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->sortKey:Ljava/lang/String;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/htcdialer/search/SearchablePhone;

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/search/SearchableContact;->isMyPhonebook:Z

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    .line 27
    sget v0, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    iput v0, p0, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->namePosition:[I

    .line 42
    const/4 v0, 0x0

    check-cast v0, [[[C

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->pattern:[[[C

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    .line 53
    iput-wide p1, p0, Lcom/android/htcdialer/search/SearchableContact;->id:J

    .line 54
    iput-wide p3, p0, Lcom/android/htcdialer/search/SearchableContact;->photoId:J

    .line 55
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    .line 56
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->sortKey:Ljava/lang/String;

    .line 57
    iput-boolean p6, p0, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    .line 58
    iput-boolean p7, p0, Lcom/android/htcdialer/search/SearchableContact;->isMyPhonebook:Z

    .line 59
    iput-boolean p8, p0, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    .line 60
    iput-object p9, p0, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    .line 61
    iput p10, p0, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    .line 62
    invoke-direct {p0, p5}, Lcom/android/htcdialer/search/SearchableContact;->getNamePosition(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->namePosition:[I

    .line 63
    iget-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->sortKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/htcdialer/search/SearchableContact;->getSectionIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    .line 64
    iput p11, p0, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    .line 65
    return-void

    :cond_0
    move-object v0, p5

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p5}, Lcom/android/htcdialer/search/SearchableContact;->extractSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static decomposeFisrtHangul(C)C
    .locals 2
    .parameter "c"

    .prologue
    .line 460
    const v1, 0xac00

    sub-int v0, p0, v1

    .line 461
    .local v0, SIndex:I
    if-ltz v0, :cond_0

    const/16 v1, 0x2ba4

    if-ge v0, v1, :cond_0

    .line 462
    div-int/lit16 v1, v0, 0x24c

    add-int/lit16 v1, v1, 0x1100

    int-to-char p0, v1

    .line 464
    .end local p0
    :cond_0
    return p0
.end method

.method public static decomposeHangul(C)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    .line 468
    const v5, 0xac00

    sub-int v1, p0, v5

    .line 469
    .local v1, SIndex:I
    if-ltz v1, :cond_0

    const/16 v5, 0x2ba4

    if-lt v1, v5, :cond_1

    .line 470
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 482
    :goto_0
    return-object v5

    .line 472
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 473
    .local v4, result:Ljava/lang/StringBuffer;
    div-int/lit16 v5, v1, 0x24c

    add-int/lit16 v0, v5, 0x1100

    .line 474
    .local v0, L:I
    rem-int/lit16 v5, v1, 0x24c

    div-int/lit8 v5, v5, 0x1c

    add-int/lit16 v3, v5, 0x1161

    .line 475
    .local v3, V:I
    rem-int/lit8 v5, v1, 0x1c

    add-int/lit16 v2, v5, 0x11a7

    .line 476
    .local v2, T:I
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    int-to-char v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 479
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const/16 v5, 0x11a7

    if-eq v2, v5, :cond_2

    .line 481
    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 482
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final extractSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "source"

    .prologue
    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/htcdialer/HanziToPinyin;->getInstance()Lcom/android/htcdialer/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/htcdialer/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 263
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 264
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/HanziToPinyin$Token;

    .line 265
    .local v2, token:Lcom/android/htcdialer/HanziToPinyin$Token;
    iget-object v4, v2, Lcom/android/htcdialer/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 267
    .end local v2           #token:Lcom/android/htcdialer/HanziToPinyin$Token;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    .end local p0
    :cond_1
    :goto_1
    return-object p0

    .restart local p0
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, ""

    goto :goto_1
.end method

.method private static getHangulIndex(C)I
    .locals 4
    .parameter "c"

    .prologue
    .line 441
    invoke-static {p0}, Lcom/android/htcdialer/search/SearchableContact;->decomposeFisrtHangul(C)C

    move-result v0

    .line 442
    .local v0, dc:C
    invoke-static {v0}, Lcom/android/htcdialer/search/SearchableContact;->hangulToJamo(C)C

    move-result v1

    .line 443
    .local v1, hc:C
    const/16 v2, 0x3131

    if-gt v2, v1, :cond_0

    const/16 v2, 0x3163

    if-gt v1, v2, :cond_0

    .line 444
    sget-object v2, Lcom/android/htcdialer/search/SearchableContact;->HANGUL_INDEX:[C

    add-int/lit16 v3, v1, -0x3131

    aget-char v2, v2, v3

    .line 446
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getNamePosition(Ljava/lang/String;)[I
    .locals 8
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 309
    :cond_0
    return-object v3

    .line 282
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 283
    .local v4, len:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 286
    .local v1, findStart:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 287
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 289
    .local v0, c:C
    const-string v7, " ()-.,;_/{}"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 290
    const/4 v1, 0x0

    .line 286
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_3
    if-nez v1, :cond_2

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    const/4 v1, 0x1

    goto :goto_1

    .line 300
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 301
    .local v6, size:I
    if-lez v6, :cond_0

    .line 302
    new-array v3, v6, [I

    .line 303
    .local v3, intArray:[I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_0

    .line 304
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v2

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getPattern(Ljava/lang/String;)[[[C
    .locals 16
    .parameter "pattern"

    .prologue
    .line 108
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1b

    .line 109
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 110
    .local v8, length:I
    if-lez v8, :cond_1b

    .line 111
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 112
    .local v2, chars:[C
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, buffer1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[[C>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, buffer2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[C>;"
    const/4 v11, -0x1

    .line 115
    .local v11, start:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_10

    .line 116
    const/16 v13, 0x3100

    aget-char v14, v2, v6

    if-eq v13, v14, :cond_4

    if-eqz v6, :cond_4

    if-lez v6, :cond_c

    const/16 v13, 0x3100

    add-int/lit8 v14, v6, -0x1

    aget-char v14, v2, v14

    if-eq v13, v14, :cond_0

    const/16 v13, 0x312e

    add-int/lit8 v14, v6, -0x1

    aget-char v14, v2, v14

    if-eq v13, v14, :cond_0

    add-int/lit8 v13, v6, -0x1

    aget-char v13, v2, v13

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseChar(C)Z

    move-result v13

    if-nez v13, :cond_0

    aget-char v13, v2, v6

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseChar(C)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_0
    add-int/lit8 v13, v6, -0x1

    aget-char v13, v2, v13

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSeperatorChar(C)Z

    move-result v13

    if-eqz v13, :cond_1

    aget-char v13, v2, v6

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNumberChar(C)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_1
    add-int/lit8 v13, v6, -0x1

    aget-char v13, v2, v13

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSeperatorChar(C)Z

    move-result v13

    if-eqz v13, :cond_2

    aget-char v13, v2, v6

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isThailandChar(C)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_2
    add-int/lit8 v13, v6, -0x1

    aget-char v13, v2, v13

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSeperatorChar(C)Z

    move-result v13

    if-eqz v13, :cond_3

    aget-char v13, v2, v6

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isLowercaseChar(C)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    const/16 v13, 0x20

    add-int/lit8 v14, v6, -0x1

    aget-char v14, v2, v14

    if-ne v13, v14, :cond_c

    aget-char v13, v2, v6

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSymbolicChar(C)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 124
    :cond_4
    if-ltz v11, :cond_b

    if-ge v11, v8, :cond_b

    .line 125
    const/16 v13, 0x3100

    aget-char v14, v2, v11

    if-ne v13, v14, :cond_d

    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 127
    move v5, v6

    .line 129
    .local v5, endPivot:I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    if-le v5, v11, :cond_6

    const/16 v13, 0x312f

    aget-char v14, v2, v5

    if-ne v13, v14, :cond_5

    .line 130
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 131
    move v12, v11

    .line 132
    .local v12, startPivot:I
    move v7, v11

    .local v7, j:I
    :goto_1
    if-ge v7, v6, :cond_9

    .line 133
    const/16 v13, 0x312e

    aget-char v14, v2, v7

    if-eq v13, v14, :cond_7

    const/16 v13, 0x312f

    aget-char v14, v2, v7

    if-ne v13, v14, :cond_8

    .line 135
    :cond_7
    sub-int v13, v7, v12

    add-int/2addr v13, v6

    sub-int/2addr v13, v5

    new-array v4, v13, [C

    .line 136
    .local v4, data2:[C
    const/4 v13, 0x0

    sub-int v14, v7, v12

    invoke-static {v2, v12, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    sub-int v13, v7, v12

    sub-int v14, v6, v5

    invoke-static {v2, v5, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    const/4 v13, 0x0

    sub-int v14, v7, v12

    add-int/lit8 v14, v14, -0x1

    shl-int/lit8 v14, v14, 0x8

    int-to-char v14, v14

    aput-char v14, v4, v13

    .line 141
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v13, 0x312e

    aget-char v14, v2, v7

    if-ne v13, v14, :cond_9

    .line 144
    move v12, v7

    .line 132
    .end local v4           #data2:[C
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 150
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 151
    .local v10, size:I
    new-array v3, v10, [[C

    .line 152
    .local v3, data:[[C
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_a

    .line 153
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [C

    aput-object v13, v3, v7

    .line 152
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 155
    :cond_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v3           #data:[[C
    .end local v5           #endPivot:I
    .end local v7           #j:I
    .end local v10           #size:I
    .end local v12           #startPivot:I
    :cond_b
    :goto_3
    move v11, v6

    .line 115
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 157
    :cond_d
    sub-int v10, v6, v11

    .line 158
    .restart local v10       #size:I
    const/4 v13, 0x1

    add-int/lit8 v14, v10, 0x1

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[C

    .line 159
    .restart local v3       #data:[[C
    move v5, v6

    .line 161
    .restart local v5       #endPivot:I
    :cond_e
    add-int/lit8 v5, v5, -0x1

    if-le v5, v11, :cond_f

    aget-char v13, v2, v5

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSeperatorChar(C)Z

    move-result v13

    if-nez v13, :cond_e

    aget-char v13, v2, v5

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSymbolicChar(C)Z

    move-result v13

    if-nez v13, :cond_e

    .line 162
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 163
    const/4 v13, 0x0

    aget-object v13, v3, v13

    const/4 v14, 0x1

    invoke-static {v2, v11, v13, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    const/4 v13, 0x0

    aget-object v13, v3, v13

    const/4 v14, 0x0

    sub-int v15, v5, v11

    int-to-char v15, v15

    aput-char v15, v13, v14

    .line 165
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 171
    .end local v3           #data:[[C
    .end local v5           #endPivot:I
    .end local v10           #size:I
    :cond_10
    if-ltz v11, :cond_17

    if-ge v11, v8, :cond_17

    .line 172
    const/16 v13, 0x3100

    aget-char v14, v2, v11

    if-ne v13, v14, :cond_18

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 174
    move v5, v8

    .line 175
    .restart local v5       #endPivot:I
    :cond_11
    add-int/lit8 v5, v5, -0x1

    if-le v5, v11, :cond_12

    const/16 v13, 0x312f

    aget-char v14, v2, v5

    if-ne v13, v14, :cond_11

    .line 176
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 177
    move v12, v11

    .line 178
    .restart local v12       #startPivot:I
    move v6, v11

    :goto_4
    if-ge v6, v8, :cond_15

    .line 179
    const/16 v13, 0x312e

    aget-char v14, v2, v6

    if-eq v13, v14, :cond_13

    const/16 v13, 0x312f

    aget-char v14, v2, v6

    if-ne v13, v14, :cond_14

    .line 181
    :cond_13
    sub-int v13, v6, v12

    add-int/2addr v13, v8

    sub-int/2addr v13, v5

    new-array v4, v13, [C

    .line 182
    .restart local v4       #data2:[C
    const/4 v13, 0x0

    sub-int v14, v6, v12

    invoke-static {v2, v12, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    sub-int v13, v6, v12

    sub-int v14, v8, v5

    invoke-static {v2, v5, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    const/4 v13, 0x0

    sub-int v14, v6, v12

    add-int/lit8 v14, v14, -0x1

    shl-int/lit8 v14, v14, 0x8

    int-to-char v14, v14

    aput-char v14, v4, v13

    .line 186
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const/16 v13, 0x312e

    aget-char v14, v2, v6

    if-ne v13, v14, :cond_15

    .line 189
    move v12, v6

    .line 178
    .end local v4           #data2:[C
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 195
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 196
    .restart local v10       #size:I
    new-array v3, v10, [[C

    .line 197
    .restart local v3       #data:[[C
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v10, :cond_16

    .line 198
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [C

    aput-object v13, v3, v6

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 200
    :cond_16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v3           #data:[[C
    .end local v5           #endPivot:I
    .end local v10           #size:I
    .end local v12           #startPivot:I
    :cond_17
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1b

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 215
    .restart local v10       #size:I
    new-array v9, v10, [[[C

    .line 216
    .local v9, result:[[[C
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v10, :cond_1c

    .line 217
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[C

    aput-object v13, v9, v6

    .line 216
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 202
    .end local v9           #result:[[[C
    .end local v10           #size:I
    :cond_18
    sub-int v10, v8, v11

    .line 203
    .restart local v10       #size:I
    const/4 v13, 0x1

    add-int/lit8 v14, v10, 0x1

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[C

    .line 204
    .restart local v3       #data:[[C
    move v5, v8

    .line 206
    .restart local v5       #endPivot:I
    :cond_19
    add-int/lit8 v5, v5, -0x1

    if-le v5, v11, :cond_1a

    aget-char v13, v2, v5

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSeperatorChar(C)Z

    move-result v13

    if-nez v13, :cond_19

    aget-char v13, v2, v5

    invoke-static {v13}, Lcom/android/htcdialer/search/SmartKeyMapping;->isSymbolicChar(C)Z

    move-result v13

    if-nez v13, :cond_19

    .line 207
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    .line 208
    const/4 v13, 0x0

    aget-object v13, v3, v13

    const/4 v14, 0x1

    invoke-static {v2, v11, v13, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    const/4 v13, 0x0

    aget-object v13, v3, v13

    const/4 v14, 0x0

    sub-int v15, v5, v11

    int-to-char v15, v15

    aput-char v15, v13, v14

    .line 210
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 223
    .end local v0           #buffer1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[[C>;"
    .end local v1           #buffer2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[C>;"
    .end local v2           #chars:[C
    .end local v3           #data:[[C
    .end local v5           #endPivot:I
    .end local v6           #i:I
    .end local v8           #length:I
    .end local v10           #size:I
    .end local v11           #start:I
    :cond_1b
    const/4 v13, 0x0

    check-cast v13, [[[C

    move-object v9, v13

    :cond_1c
    return-object v9
.end method

.method public static final getSectionIndex(Ljava/lang/String;)I
    .locals 7
    .parameter "string"

    .prologue
    const/4 v6, 0x0

    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    sget v4, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    .line 254
    :goto_0
    return v4

    .line 230
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/htcdialer/search/SmartKeyMapping;->toUpperCaseCharacter(C)C

    move-result v0

    .line 231
    .local v0, firstChar:C
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isCJKCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 232
    sget-boolean v4, Lcom/android/htcdialer/DialerApp;->USE_KOREAN_INDEX:Z

    if-eqz v4, :cond_1

    .line 233
    invoke-static {v0}, Lcom/android/htcdialer/search/SearchableContact;->getHangulIndex(C)I

    move-result v1

    .line 234
    .local v1, hangulIndex:I
    if-ltz v1, :cond_1

    .line 235
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    .end local v1           #hangulIndex:I
    :cond_1
    invoke-static {}, Lcom/android/htcdialer/HanziToPinyin;->getInstance()Lcom/android/htcdialer/HanziToPinyin;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 239
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 240
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/HanziToPinyin$Token;

    .line 241
    .local v2, token:Lcom/android/htcdialer/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v2, Lcom/android/htcdialer/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_2

    .line 242
    iget-object v4, v2, Lcom/android/htcdialer/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/htcdialer/search/SmartKeyMapping;->toUpperCaseCharacter(C)C

    move-result v0

    .line 245
    .end local v2           #token:Lcom/android/htcdialer/HanziToPinyin$Token;
    :cond_2
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnUs(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    add-int/lit8 v4, v0, -0x41

    sget v5, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_A:I

    add-int/2addr v4, v5

    goto :goto_0

    .line 248
    :cond_3
    sget v4, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_Z:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v3           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    :cond_4
    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->isUppercaseCharEnUs(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 252
    add-int/lit8 v4, v0, -0x41

    sget v5, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_A:I

    add-int/2addr v4, v5

    goto :goto_0

    .line 254
    :cond_5
    sget v4, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    goto :goto_0
.end method

.method private static hangulToJamo(C)C
    .locals 6
    .parameter "c"

    .prologue
    .line 425
    const/4 v1, 0x0

    .local v1, from:I
    sget v3, Lcom/android/htcdialer/search/SearchableContact;->MAP_LENGTH:I

    .line 426
    .local v3, to:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 427
    add-int v4, v3, v1

    shr-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v4, -0x2

    .line 428
    .local v2, m:I
    sget-object v4, Lcom/android/htcdialer/search/SearchableContact;->HANGUL_CHAR_MAP:[C

    aget-char v0, v4, v2

    .line 429
    .local v0, cm:C
    if-ne v0, p0, :cond_1

    .line 430
    sget-object v4, Lcom/android/htcdialer/search/SearchableContact;->HANGUL_CHAR_MAP:[C

    add-int/lit8 v5, v2, 0x1

    aget-char p0, v4, v5

    .line 437
    .end local v0           #cm:C
    .end local v2           #m:I
    .end local p0
    :cond_0
    return p0

    .line 431
    .restart local v0       #cm:C
    .restart local v2       #m:I
    .restart local p0
    :cond_1
    if-ge v0, p0, :cond_2

    .line 432
    add-int/lit8 v1, v2, 0x2

    goto :goto_0

    .line 434
    :cond_2
    move v3, v2

    goto :goto_0
.end method


# virtual methods
.method public addEmail(ZLjava/lang/String;)V
    .locals 6
    .parameter "isSuperPrimary"
    .parameter "email"

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    array-length v2, v2

    iget v4, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    if-gt v2, v4, :cond_2

    .line 89
    iget v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 90
    .local v1, newEmails:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v4, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    if-eqz p1, :cond_1

    :goto_1
    aput-object p2, v1, v3

    .line 92
    iput-object v1, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    .line 93
    iget v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    .line 105
    .end local v1           #newEmails:[Ljava/lang/String;
    :goto_2
    return-void

    .restart local v1       #newEmails:[Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget v3, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    goto :goto_1

    .line 95
    .end local v1           #newEmails:[Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_4

    .line 96
    iget v0, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    .local v0, i:I
    :goto_3
    if-lez v0, :cond_3

    .line 97
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v0

    .line 96
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    aput-object p2, v2, v3

    .line 103
    .end local v0           #i:I
    :goto_4
    iget v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    goto :goto_2

    .line 101
    :cond_4
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    iget v3, p0, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    aput-object p2, v2, v3

    goto :goto_4
.end method

.method public addPhone(ZLcom/android/htcdialer/search/SearchablePhone;)V
    .locals 6
    .parameter "isSuperPrimary"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    array-length v2, v2

    iget v4, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-gt v2, v4, :cond_2

    .line 69
    iget v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Lcom/android/htcdialer/search/SearchablePhone;

    .line 70
    .local v1, newPhones:[Lcom/android/htcdialer/search/SearchablePhone;
    iget-object v4, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    array-length v5, v5

    invoke-static {v4, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    if-eqz p1, :cond_1

    :goto_1
    aput-object p2, v1, v3

    .line 72
    iput-object v1, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    .line 73
    iget v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    .line 85
    .end local v1           #newPhones:[Lcom/android/htcdialer/search/SearchablePhone;
    :goto_2
    return-void

    .restart local v1       #newPhones:[Lcom/android/htcdialer/search/SearchablePhone;
    :cond_0
    move v2, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget v3, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    goto :goto_1

    .line 75
    .end local v1           #newPhones:[Lcom/android/htcdialer/search/SearchablePhone;
    :cond_2
    if-eqz p1, :cond_4

    .line 76
    iget v0, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    .local v0, i:I
    :goto_3
    if-lez v0, :cond_3

    .line 77
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    iget-object v4, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v0

    .line 76
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aput-object p2, v2, v3

    .line 83
    .end local v0           #i:I
    :goto_4
    iget v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    goto :goto_2

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    iget v3, p0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    aput-object p2, v2, v3

    goto :goto_4
.end method

.method public setNamePattern(Ljava/lang/String;)V
    .locals 1
    .parameter "namePattern"

    .prologue
    .line 274
    invoke-static {p1}, Lcom/android/htcdialer/search/SearchableContact;->getPattern(Ljava/lang/String;)[[[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableContact;->pattern:[[[C

    .line 275
    return-void
.end method
