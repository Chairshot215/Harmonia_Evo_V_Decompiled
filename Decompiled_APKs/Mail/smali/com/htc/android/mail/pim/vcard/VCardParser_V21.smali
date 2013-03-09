.class public Lcom/htc/android/mail/pim/vcard/VCardParser_V21;
.super Lcom/htc/android/mail/pim/VParser;
.source "VCardParser_V21.java"


# static fields
.field private static final mKnownTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mName:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x33

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOM"

    aput-object v2, v1, v4

    const-string v2, "INTL"

    aput-object v2, v1, v5

    const-string v2, "POSTAL"

    aput-object v2, v1, v6

    const-string v2, "PARCEL"

    aput-object v2, v1, v7

    const-string v2, "HOME"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "WORK"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PREF"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "FAX"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MSG"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "VIDEO"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "AOL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "APPLELINK"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ATTMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CIS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "EWORLD"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "X400"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "GIF"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "CGM"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "WMF"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "BMP"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "MET"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "PMB"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DIB"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "PICT"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "TIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "PDF"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "PS"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "JPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "QTIME"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "MPEG2"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "AVI"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "WAVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "AIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "PCM"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "X509"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "PGP"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "X-OTHER"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->mKnownTypeSet:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "LOGO"

    aput-object v2, v1, v4

    const-string v2, "PHOTO"

    aput-object v2, v1, v5

    const-string v2, "LABEL"

    aput-object v2, v1, v6

    const-string v2, "FN"

    aput-object v2, v1, v7

    const-string v2, "TITLE"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "X-IM"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "X-ORGTYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "X-TEL-CUSTOM-TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "X-ADR-CUSTOM-TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "X-EMAIL-CUSTOM-TYPE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->mName:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/android/mail/pim/VParser;-><init>()V

    .line 61
    return-void
.end method

.method private escapeTranslator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 979
    if-nez p1, :cond_0

    .line 980
    const/4 v0, 0x0

    .line 987
    :goto_0
    return-object v0

    .line 982
    :cond_0
    const-string v1, "\\\\"

    const-string v2, "\n\r\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, tmp:Ljava/lang/String;
    const-string v1, "\\:"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 985
    const-string v1, "\\,"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 986
    const-string v1, "\n\r\n"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 987
    goto :goto_0
.end method

.method private parseGroups(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 944
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .line 946
    .local v2, sum:I
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseWord(I)I

    move-result v0

    .line 947
    if-ne v0, v3, :cond_0

    .line 966
    :goto_0
    return v3

    .line 950
    :cond_0
    add-int/2addr p1, v0

    .line 951
    add-int/2addr v2, v0

    .line 954
    :goto_1
    const-string v4, "."

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 955
    if-ne v0, v3, :cond_2

    :cond_1
    move v3, v2

    .line 966
    goto :goto_0

    .line 959
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseWord(I)I

    move-result v1

    .line 960
    .local v1, ret1:I
    if-eq v1, v3, :cond_1

    .line 963
    add-int v4, v0, v1

    add-int/2addr p1, v4

    .line 964
    add-int v4, v0, v1

    add-int/2addr v2, v4

    .line 965
    goto :goto_1
.end method

.method private parseGroupsWithDot(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 481
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 483
    .local v1, sum:I
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseGroups(I)I

    move-result v0

    .line 484
    if-ne v0, v2, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v2

    .line 487
    :cond_1
    add-int/2addr p1, v0

    .line 488
    add-int/2addr v1, v0

    .line 490
    const-string v3, "."

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 491
    if-eq v0, v2, :cond_0

    .line 494
    add-int/2addr v1, v0

    move v2, v1

    .line 496
    goto :goto_0
.end method

.method private parseItem(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 264
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 265
    .local v1, sum:I
    const-string v3, "8BIT"

    iput-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 267
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseItem0(I)I

    move-result v0

    .line 268
    if-eq v0, v2, :cond_1

    .line 269
    add-int/2addr v1, v0

    move v2, v1

    .line 285
    :cond_0
    :goto_0
    return v2

    .line 273
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseItem1(I)I

    move-result v0

    .line 274
    if-eq v0, v2, :cond_2

    .line 275
    add-int/2addr v1, v0

    move v2, v1

    .line 276
    goto :goto_0

    .line 279
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseItem2(I)I

    move-result v0

    .line 280
    if-eq v0, v2, :cond_0

    .line 281
    add-int/2addr v1, v0

    move v2, v1

    .line 282
    goto :goto_0
.end method

.method private parseItem0(I)I
    .locals 9
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    .line 290
    const/4 v2, 0x0

    .local v2, ret:I
    const/4 v4, 0x0

    .local v4, sum:I
    move v3, p1

    .line 291
    .local v3, start:I
    const-string v0, ""

    .local v0, proName:Ljava/lang/String;
    const-string v1, ""

    .line 293
    .local v1, proValue:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseGroupsWithDot(I)I

    move-result v2

    .line 294
    if-eq v2, v6, :cond_0

    .line 295
    add-int/2addr p1, v2

    .line 296
    add-int/2addr v4, v2

    .line 299
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseName(I)I

    move-result v2

    .line 300
    if-ne v2, v6, :cond_2

    .line 346
    :cond_1
    :goto_0
    return v6

    .line 303
    :cond_2
    add-int/2addr p1, v2

    .line 304
    add-int/2addr v4, v2

    .line 305
    iget-object v7, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v7, :cond_3

    .line 306
    iget-object v7, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v7, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v7, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v7, v0}, Lcom/htc/android/mail/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 310
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParams(I)I

    move-result v2

    .line 311
    if-eq v2, v6, :cond_4

    .line 312
    add-int/2addr p1, v2

    .line 313
    add-int/2addr v4, v2

    .line 316
    :cond_4
    const-string v7, ":"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v2

    .line 317
    if-eq v2, v6, :cond_1

    .line 320
    add-int/2addr p1, v2

    .line 321
    add-int/2addr v4, v2

    .line 323
    move v3, p1

    .line 324
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseValue(I)I

    move-result v2

    .line 325
    if-eq v2, v6, :cond_1

    .line 328
    add-int/2addr p1, v2

    .line 329
    add-int/2addr v4, v2

    .line 330
    iget-object v7, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v7, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 331
    const-string v7, "VERSION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "2.1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    :cond_5
    iget-object v7, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v7, :cond_6

    .line 335
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v5, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v7, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v7, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyValues(Ljava/util/Collection;)V

    .line 340
    .end local v5           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCrlf(I)I

    move-result v2

    .line 341
    if-eq v2, v6, :cond_1

    .line 344
    add-int/2addr v4, v2

    move v6, v4

    .line 346
    goto :goto_0
.end method

.method private parseItem1(I)I
    .locals 13
    .parameter "offset"

    .prologue
    const/4 v12, 0x1

    const/4 v9, -0x1

    .line 351
    const/4 v4, 0x0

    .local v4, ret:I
    const/4 v7, 0x0

    .local v7, sum:I
    move v6, p1

    .line 353
    .local v6, start:I
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseGroupsWithDot(I)I

    move-result v4

    .line 354
    if-eq v4, v9, :cond_0

    .line 355
    add-int/2addr p1, v4

    .line 356
    add-int/2addr v7, v4

    .line 359
    :cond_0
    const-string v10, "ADR"

    invoke-virtual {p0, p1, v10, v12}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v4

    if-ne v4, v9, :cond_2

    const-string v10, "ORG"

    invoke-virtual {p0, p1, v10, v12}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v4

    if-ne v4, v9, :cond_2

    const-string v10, "N"

    invoke-virtual {p0, p1, v10, v12}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 419
    :cond_1
    :goto_0
    return v9

    .line 364
    :cond_2
    add-int/2addr p1, v4

    .line 365
    add-int/2addr v7, v4

    .line 366
    iget-object v10, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v10, :cond_3

    .line 367
    iget-object v10, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v11, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v11, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/htc/android/mail/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 370
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParams(I)I

    move-result v4

    .line 371
    if-eq v4, v9, :cond_4

    .line 372
    add-int/2addr p1, v4

    .line 373
    add-int/2addr v7, v4

    .line 376
    :cond_4
    const-string v10, ":"

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v10, v11}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v4

    .line 377
    if-eq v4, v9, :cond_1

    .line 380
    add-int/2addr p1, v4

    .line 381
    add-int/2addr v7, v4

    .line 383
    move v6, p1

    .line 384
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseValue(I)I

    move-result v4

    .line 385
    if-eq v4, v9, :cond_1

    .line 388
    add-int/2addr p1, v4

    .line 389
    add-int/2addr v7, v4

    .line 390
    iget-object v10, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v10, :cond_7

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, end:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v8, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "([^;\\\\]*((\\\\[\\\\;:,])*[^;\\\\]*)*)(;?)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 396
    .local v3, p:Ljava/util/regex/Pattern;
    iget-object v10, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v10, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 397
    .local v2, m:Ljava/util/regex/Matcher;
    :cond_5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 398
    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->escapeTranslator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 401
    add-int v10, v6, v0

    if-ne p1, v10, :cond_5

    .line 403
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, endValue:Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 405
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v1           #endValue:Ljava/lang/String;
    .end local v5           #s:Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v10, v8}, Lcom/htc/android/mail/pim/VBuilder;->propertyValues(Ljava/util/Collection;)V

    .line 413
    .end local v0           #end:I
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v8           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCrlf(I)I

    move-result v4

    .line 414
    if-eq v4, v9, :cond_1

    .line 417
    add-int/2addr v7, v4

    move v9, v7

    .line 419
    goto/16 :goto_0
.end method

.method private parseItem2(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 424
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 426
    .local v1, start:I
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseGroupsWithDot(I)I

    move-result v0

    .line 427
    if-eq v0, v3, :cond_0

    .line 428
    add-int/2addr p1, v0

    .line 429
    add-int/2addr v2, v0

    .line 432
    :cond_0
    const-string v4, "AGENT"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 433
    if-ne v0, v3, :cond_2

    .line 477
    :cond_1
    :goto_0
    return v3

    .line 436
    :cond_2
    add-int/2addr p1, v0

    .line 437
    add-int/2addr v2, v0

    .line 438
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_3

    .line 439
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v5, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 442
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParams(I)I

    move-result v0

    .line 443
    if-eq v0, v3, :cond_4

    .line 444
    add-int/2addr p1, v0

    .line 445
    add-int/2addr v2, v0

    .line 448
    :cond_4
    const-string v4, ":"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 449
    if-eq v0, v3, :cond_1

    .line 452
    add-int/2addr p1, v0

    .line 453
    add-int/2addr v2, v0

    .line 455
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCrlf(I)I

    move-result v0

    .line 456
    if-eq v0, v3, :cond_5

    .line 457
    add-int/2addr p1, v0

    .line 458
    add-int/2addr v2, v0

    .line 461
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseVCard(I)I

    move-result v0

    .line 462
    if-eq v0, v3, :cond_1

    .line 465
    add-int/2addr p1, v0

    .line 466
    add-int/2addr v2, v0

    .line 467
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_6

    .line 468
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyValues(Ljava/util/Collection;)V

    .line 471
    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCrlf(I)I

    move-result v0

    .line 472
    if-eq v0, v3, :cond_1

    .line 475
    add-int/2addr v2, v0

    move v3, v2

    .line 477
    goto :goto_0
.end method

.method private parseItems(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 221
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 223
    .local v1, sum:I
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v3}, Lcom/htc/android/mail/pim/VBuilder;->startProperty()V

    .line 226
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseItem(I)I

    move-result v0

    .line 227
    if-ne v0, v2, :cond_1

    .line 257
    :goto_0
    return v2

    .line 230
    :cond_1
    add-int/2addr p1, v0

    .line 231
    add-int/2addr v1, v0

    .line 232
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_2

    .line 233
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v3}, Lcom/htc/android/mail/pim/VBuilder;->endProperty()V

    .line 237
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCrlf(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 238
    add-int/2addr p1, v0

    .line 239
    add-int/2addr v1, v0

    goto :goto_1

    .line 242
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_4

    .line 243
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v3}, Lcom/htc/android/mail/pim/VBuilder;->startProperty()V

    .line 246
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseItem(I)I

    move-result v0

    .line 247
    if-ne v0, v2, :cond_5

    move v2, v1

    .line 257
    goto :goto_0

    .line 250
    :cond_5
    add-int/2addr p1, v0

    .line 251
    add-int/2addr v1, v0

    .line 252
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_2

    .line 253
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v3}, Lcom/htc/android/mail/pim/VBuilder;->endProperty()V

    goto :goto_1
.end method

.method private parseKnownType(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, word:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->mKnownTypeSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 898
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private parseName(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, ret:I
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseXWord(I)I

    move-result v0

    .line 932
    if-eq v0, v2, :cond_0

    .line 939
    .end local v0           #ret:I
    :goto_0
    return v0

    .line 935
    .restart local v0       #ret:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->getWord(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, word:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->mName:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 937
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 939
    goto :goto_0
.end method

.method private parsePTypeVal(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 910
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 912
    .local v1, sum:I
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseKnownType(I)I

    move-result v0

    .line 913
    if-eq v0, v3, :cond_0

    .line 914
    add-int/2addr v1, v0

    move v2, v1

    .line 925
    .end local v1           #sum:I
    .local v2, sum:I
    :goto_0
    return v2

    .line 918
    .end local v2           #sum:I
    .restart local v1       #sum:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseXWord(I)I

    move-result v0

    .line 919
    if-eq v0, v3, :cond_1

    .line 920
    add-int/2addr v1, v0

    move v2, v1

    .line 921
    .end local v1           #sum:I
    .restart local v2       #sum:I
    goto :goto_0

    .line 923
    .end local v2           #sum:I
    .restart local v1       #sum:I
    :cond_1
    add-int/2addr v1, v0

    move v2, v1

    .line 925
    .end local v1           #sum:I
    .restart local v2       #sum:I
    goto :goto_0
.end method

.method private parseParam(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 572
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v3, 0x0

    .line 574
    .local v3, sum:I
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParam0(I)I

    move-result v0

    .line 575
    if-eq v0, v4, :cond_1

    .line 576
    add-int/2addr v3, v0

    move v4, v3

    .line 625
    :cond_0
    :goto_0
    return v4

    .line 580
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParam1(I)I

    move-result v0

    .line 581
    if-eq v0, v4, :cond_2

    .line 582
    add-int/2addr v3, v0

    move v4, v3

    .line 583
    goto :goto_0

    .line 586
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParam2(I)I

    move-result v0

    .line 587
    if-eq v0, v4, :cond_3

    .line 588
    add-int/2addr v3, v0

    move v4, v3

    .line 589
    goto :goto_0

    .line 592
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParam3(I)I

    move-result v0

    .line 593
    if-eq v0, v4, :cond_4

    .line 594
    add-int/2addr v3, v0

    move v4, v3

    .line 595
    goto :goto_0

    .line 598
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParam4(I)I

    move-result v0

    .line 599
    if-eq v0, v4, :cond_5

    .line 600
    add-int/2addr v3, v0

    move v4, v3

    .line 601
    goto :goto_0

    .line 604
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParam5(I)I

    move-result v0

    .line 605
    if-eq v0, v4, :cond_6

    .line 606
    add-int/2addr v3, v0

    move v4, v3

    .line 607
    goto :goto_0

    .line 610
    :cond_6
    move v1, p1

    .line 611
    .local v1, start:I
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseKnownType(I)I

    move-result v0

    .line 612
    if-ne v0, v4, :cond_7

    .line 613
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseUnknownType(I)I

    move-result v0

    .line 614
    if-eq v0, v4, :cond_0

    .line 617
    :cond_7
    add-int/2addr p1, v0

    .line 618
    add-int/2addr v3, v0

    .line 619
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_8

    .line 620
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 621
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v5, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .end local v2           #str:Ljava/lang/String;
    :cond_8
    move v4, v3

    .line 625
    goto :goto_0
.end method

.method private parseParam0(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 630
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 632
    .local v1, start:I
    const-string v4, "TYPE"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 633
    if-ne v0, v3, :cond_1

    .line 668
    :cond_0
    :goto_0
    return v3

    .line 636
    :cond_1
    add-int/2addr p1, v0

    .line 637
    add-int/2addr v2, v0

    .line 638
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_2

    .line 639
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v5, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 642
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 643
    add-int/2addr p1, v0

    .line 644
    add-int/2addr v2, v0

    .line 646
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 647
    if-eq v0, v3, :cond_0

    .line 650
    add-int/2addr p1, v0

    .line 651
    add-int/2addr v2, v0

    .line 653
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 654
    add-int/2addr p1, v0

    .line 655
    add-int/2addr v2, v0

    .line 657
    move v1, p1

    .line 658
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parsePTypeVal(I)I

    move-result v0

    .line 659
    if-eq v0, v3, :cond_0

    .line 662
    add-int/2addr p1, v0

    .line 663
    add-int/2addr v2, v0

    .line 664
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_3

    .line 665
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 668
    goto :goto_0
.end method

.method private parseParam1(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 674
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 676
    .local v1, start:I
    const-string v4, "VALUE"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 677
    if-ne v0, v3, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v3

    .line 680
    :cond_1
    add-int/2addr p1, v0

    .line 681
    add-int/2addr v2, v0

    .line 682
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_2

    .line 683
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v5, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 686
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 687
    add-int/2addr p1, v0

    .line 688
    add-int/2addr v2, v0

    .line 690
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 691
    if-eq v0, v3, :cond_0

    .line 694
    add-int/2addr p1, v0

    .line 695
    add-int/2addr v2, v0

    .line 697
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 698
    add-int/2addr p1, v0

    .line 699
    add-int/2addr v2, v0

    .line 701
    move v1, p1

    .line 702
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parsePValueVal(I)I

    move-result v0

    .line 703
    if-eq v0, v3, :cond_0

    .line 706
    add-int/2addr p1, v0

    .line 707
    add-int/2addr v2, v0

    .line 708
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_3

    .line 709
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 712
    goto :goto_0
.end method

.method private parseParam2(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 717
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 719
    .local v1, start:I
    const-string v4, "ENCODING"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 720
    if-ne v0, v3, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v3

    .line 723
    :cond_1
    add-int/2addr p1, v0

    .line 724
    add-int/2addr v2, v0

    .line 725
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_2

    .line 726
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v5, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 729
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 730
    add-int/2addr p1, v0

    .line 731
    add-int/2addr v2, v0

    .line 733
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 734
    if-eq v0, v3, :cond_0

    .line 737
    add-int/2addr p1, v0

    .line 738
    add-int/2addr v2, v0

    .line 740
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 741
    add-int/2addr p1, v0

    .line 742
    add-int/2addr v2, v0

    .line 744
    move v1, p1

    .line 745
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parsePEncodingVal(I)I

    move-result v0

    .line 746
    if-eq v0, v3, :cond_0

    .line 749
    add-int/2addr p1, v0

    .line 750
    add-int/2addr v2, v0

    .line 751
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_3

    .line 752
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 755
    goto :goto_0
.end method

.method private parseParam3(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 761
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 763
    .local v1, start:I
    const-string v4, "CHARSET"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 764
    if-ne v0, v3, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v3

    .line 767
    :cond_1
    add-int/2addr p1, v0

    .line 768
    add-int/2addr v2, v0

    .line 769
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_2

    .line 770
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v5, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 773
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 774
    add-int/2addr p1, v0

    .line 775
    add-int/2addr v2, v0

    .line 777
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 778
    if-eq v0, v3, :cond_0

    .line 781
    add-int/2addr p1, v0

    .line 782
    add-int/2addr v2, v0

    .line 784
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 785
    add-int/2addr p1, v0

    .line 786
    add-int/2addr v2, v0

    .line 788
    move v1, p1

    .line 789
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCharsetVal(I)I

    move-result v0

    .line 790
    if-eq v0, v3, :cond_0

    .line 793
    add-int/2addr p1, v0

    .line 794
    add-int/2addr v2, v0

    .line 795
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_3

    .line 796
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 799
    goto :goto_0
.end method

.method private parseParam4(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 804
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 806
    .local v1, start:I
    const-string v4, "LANGUAGE"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 807
    if-ne v0, v3, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v3

    .line 810
    :cond_1
    add-int/2addr p1, v0

    .line 811
    add-int/2addr v2, v0

    .line 812
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_2

    .line 813
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v5, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 816
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 817
    add-int/2addr p1, v0

    .line 818
    add-int/2addr v2, v0

    .line 820
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 821
    if-eq v0, v3, :cond_0

    .line 824
    add-int/2addr p1, v0

    .line 825
    add-int/2addr v2, v0

    .line 827
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 828
    add-int/2addr p1, v0

    .line 829
    add-int/2addr v2, v0

    .line 831
    move v1, p1

    .line 832
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseLangVal(I)I

    move-result v0

    .line 833
    if-eq v0, v3, :cond_0

    .line 836
    add-int/2addr p1, v0

    .line 837
    add-int/2addr v2, v0

    .line 838
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_3

    .line 839
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 842
    goto :goto_0
.end method

.method private parseParam5(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 848
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 850
    .local v1, start:I
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseXWord(I)I

    move-result v0

    .line 851
    if-ne v0, v3, :cond_1

    .line 886
    :cond_0
    :goto_0
    return v3

    .line 854
    :cond_1
    add-int/2addr p1, v0

    .line 855
    add-int/2addr v2, v0

    .line 856
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v4, :cond_2

    .line 857
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v5, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 860
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 861
    add-int/2addr p1, v0

    .line 862
    add-int/2addr v2, v0

    .line 864
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 865
    if-eq v0, v3, :cond_0

    .line 868
    add-int/2addr p1, v0

    .line 869
    add-int/2addr v2, v0

    .line 871
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 872
    add-int/2addr p1, v0

    .line 873
    add-int/2addr v2, v0

    .line 875
    move v1, p1

    .line 876
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseWord(I)I

    move-result v0

    .line 877
    if-eq v0, v3, :cond_0

    .line 880
    add-int/2addr p1, v0

    .line 881
    add-int/2addr v2, v0

    .line 882
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_3

    .line 883
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/android/mail/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 886
    goto :goto_0
.end method

.method private parseParamList(I)I
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 527
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 529
    .local v2, sum:I
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParam(I)I

    move-result v1

    .line 530
    if-ne v1, v4, :cond_0

    .line 564
    :goto_0
    return v4

    .line 533
    :cond_0
    add-int/2addr p1, v1

    .line 534
    add-int/2addr v2, v1

    .line 536
    move v0, p1

    .line 537
    .local v0, offsetTemp:I
    move v3, v2

    .line 539
    .local v3, sumTemp:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v1

    .line 540
    add-int/2addr v0, v1

    .line 541
    add-int/2addr v3, v1

    .line 543
    const-string v5, ";"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 544
    if-ne v1, v4, :cond_1

    move v4, v2

    .line 545
    goto :goto_0

    .line 547
    :cond_1
    add-int/2addr v0, v1

    .line 548
    add-int/2addr v3, v1

    .line 550
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v1

    .line 551
    add-int/2addr v0, v1

    .line 552
    add-int/2addr v3, v1

    .line 554
    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParam(I)I

    move-result v1

    .line 555
    if-ne v1, v4, :cond_2

    move v4, v2

    .line 564
    goto :goto_0

    .line 558
    :cond_2
    add-int/2addr v0, v1

    .line 559
    add-int/2addr v3, v1

    .line 562
    move v2, v3

    goto :goto_1
.end method

.method private parseParams(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 501
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 503
    .local v1, sum:I
    const-string v3, ";"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 504
    if-ne v0, v2, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v2

    .line 507
    :cond_1
    add-int/2addr p1, v0

    .line 508
    add-int/2addr v1, v0

    .line 510
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 511
    add-int/2addr p1, v0

    .line 512
    add-int/2addr v1, v0

    .line 514
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseParamList(I)I

    move-result v0

    .line 515
    if-eq v0, v2, :cond_0

    .line 518
    add-int/2addr v1, v0

    move v2, v1

    .line 520
    goto :goto_0
.end method

.method private parseUnknownType(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, word:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    return v1
.end method

.method private parseVCard(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 107
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 110
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 111
    if-ne v0, v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v2

    .line 114
    :cond_1
    add-int/2addr p1, v0

    .line 115
    add-int/2addr v1, v0

    .line 118
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 119
    add-int/2addr p1, v0

    .line 120
    add-int/2addr v1, v0

    .line 123
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 124
    if-eq v0, v2, :cond_0

    .line 127
    add-int/2addr p1, v0

    .line 128
    add-int/2addr v1, v0

    .line 131
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 132
    add-int/2addr p1, v0

    .line 133
    add-int/2addr v1, v0

    .line 136
    const-string v3, "VCARD"

    invoke-virtual {p0, p1, v3, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 137
    if-eq v0, v2, :cond_0

    .line 140
    add-int/2addr p1, v0

    .line 141
    add-int/2addr v1, v0

    .line 142
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    const-string v4, "VCARD"

    invoke-interface {v3, v4}, Lcom/htc/android/mail/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 147
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 148
    add-int/2addr p1, v0

    .line 149
    add-int/2addr v1, v0

    .line 152
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCrlf(I)I

    move-result v0

    .line 153
    if-eq v0, v2, :cond_0

    .line 156
    add-int/2addr p1, v0

    .line 157
    add-int/2addr v1, v0

    .line 158
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCrlf(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 159
    add-int/2addr p1, v0

    .line 160
    add-int/2addr v1, v0

    goto :goto_1

    .line 163
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseItems(I)I

    move-result v0

    .line 164
    if-eq v0, v2, :cond_0

    .line 167
    add-int/2addr p1, v0

    .line 168
    add-int/2addr v1, v0

    .line 171
    :goto_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseCrlf(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 172
    add-int/2addr p1, v0

    .line 173
    add-int/2addr v1, v0

    goto :goto_2

    .line 177
    :cond_4
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 178
    if-eq v0, v2, :cond_0

    .line 181
    add-int/2addr p1, v0

    .line 182
    add-int/2addr v1, v0

    .line 185
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 186
    add-int/2addr p1, v0

    .line 187
    add-int/2addr v1, v0

    .line 190
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 191
    if-eq v0, v2, :cond_0

    .line 194
    add-int/2addr p1, v0

    .line 195
    add-int/2addr v1, v0

    .line 198
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->removeWs(I)I

    move-result v0

    .line 199
    add-int/2addr p1, v0

    .line 200
    add-int/2addr v1, v0

    .line 203
    const-string v3, "VCARD"

    invoke-virtual {p0, p1, v3, v5}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 204
    if-eq v0, v2, :cond_0

    .line 208
    add-int/2addr v1, v0

    .line 209
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v2, :cond_5

    .line 210
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v2}, Lcom/htc/android/mail/pim/VBuilder;->endRecord()V

    :cond_5
    move v2, v1

    .line 213
    goto/16 :goto_0
.end method


# virtual methods
.method parseVCardFile(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 78
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 81
    .local v1, sum:I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseWsls(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 82
    add-int/2addr p1, v0

    .line 83
    add-int/2addr v1, v0

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseVCard(I)I

    move-result v0

    .line 87
    if-eq v0, v2, :cond_2

    .line 88
    add-int/2addr p1, v0

    .line 89
    add-int/2addr v1, v0

    .line 95
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseWsls(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 96
    add-int/2addr p1, v0

    .line 97
    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 99
    :cond_2
    return v2
.end method

.method protected parseVFile(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parseVCardFile(I)I

    move-result v0

    return v0
.end method
