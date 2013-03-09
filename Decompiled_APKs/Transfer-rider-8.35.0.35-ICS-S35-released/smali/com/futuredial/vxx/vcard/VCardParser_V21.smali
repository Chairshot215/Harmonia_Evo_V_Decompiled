.class public Lcom/futuredial/vxx/vcard/VCardParser_V21;
.super Ljava/lang/Object;
.source "VCardParser_V21.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "VCardParser_V21"

.field private static final STATE_GROUP_OR_PROPNAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2

.field public static mbEscSoloProperty:Z

.field public static msEscSet:Ljava/lang/String;

.field private static final sAvailableEncodingV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailablePropertyNameV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownValueSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBuilder:Lcom/futuredial/vxx/VBuilder;

.field private mCanceled:Z

.field protected mEncoding:Ljava/lang/String;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Ljava/io/BufferedReader;

.field private mTimeEndProperty:J

.field private mTimeEndRecord:J

.field private mTimeHandlePropertyValue1:J

.field private mTimeHandlePropertyValue2:J

.field private mTimeHandlePropertyValue3:J

.field private mTimeParseItem1:J

.field private mTimeParseItem2:J

.field private mTimeParseItem3:J

.field private mTimeParseItems:J

.field private mTimeStartProperty:J

.field private mTimeStartRecord:J

.field private mTimeTotal:J

.field protected mWarningValueMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final sDefaultEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    sget-object v0, Lcom/futuredial/vxx/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    sput-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->DEFAULT_CHARSET:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

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

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "INLINE"

    aput-object v2, v1, v4

    const-string v2, "URL"

    aput-object v2, v1, v5

    const-string v2, "CONTENT-ID"

    aput-object v2, v1, v6

    const-string v2, "CID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "LOGO"

    aput-object v2, v1, v5

    const-string v2, "PHOTO"

    aput-object v2, v1, v6

    const-string v2, "LABEL"

    aput-object v2, v1, v7

    const-string v2, "FN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sAvailablePropertyNameV21:Ljava/util/HashSet;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "7BIT"

    aput-object v2, v1, v4

    const-string v2, "8BIT"

    aput-object v2, v1, v5

    const-string v2, "QUOTED-PRINTABLE"

    aput-object v2, v1, v6

    const-string v2, "BASE64"

    aput-object v2, v1, v7

    const-string v2, "B"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    .line 110
    const-string v0, ";\\"

    sput-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    .line 111
    sput-boolean v4, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mbEscSoloProperty:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    .line 78
    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 80
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sDefaultEncoding:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/futuredial/vxx/vcard/VCardSourceDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    .line 78
    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 80
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sDefaultEncoding:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/futuredial/vxx/vcard/VCardSourceDetector;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mNestCount:I

    .line 126
    :cond_0
    return-void
.end method

.method private isLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1098
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 1099
    :cond_1
    const/4 v0, 0x1

    .line 1101
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOneVCard(Z)Z
    .locals 10
    .parameter "firstReading"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_2

    .line 210
    iget v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mNestCount:I

    if-lez v6, :cond_2

    .line 211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v6, :cond_2

    .line 212
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 238
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v4

    .line 215
    .restart local v1       #i:I
    :cond_1
    const/4 v0, 0x1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    iget-object v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v6, :cond_3

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 226
    .local v2, start:J
    iget-object v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v7, "VCARD"

    invoke-interface {v6, v7}, Lcom/futuredial/vxx/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 227
    iget-wide v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeStartRecord:J

    .line 229
    .end local v2           #start:J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 230
    .restart local v2       #start:J
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->parseItems()V

    .line 231
    iget-wide v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItems:J

    .line 232
    invoke-virtual {p0, v5, v4}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 233
    iget-object v4, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_4

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    iget-object v4, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v4}, Lcom/futuredial/vxx/VBuilder;->endRecord()V

    .line 236
    iget-wide v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeEndRecord:J

    :cond_4
    move v4, v5

    .line 238
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mCanceled:Z

    .line 1068
    return-void
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :goto_0
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 839
    new-instance v2, Lcom/futuredial/vxx/vcard/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 842
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 848
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 845
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 195
    new-instance v1, Lcom/futuredial/vxx/vcard/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 197
    return-object v0
.end method

.method protected getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 783
    return-object p1
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .locals 7
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/vcard/VCardException;,
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 918
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "BEGIN:VCARD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1

    const-string v3, "END:VCARD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 923
    .local v0, start:J
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_0

    .line 924
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v2, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v4, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    sget-boolean v5, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mbEscSoloProperty:Z

    invoke-interface {v3, v4, v5, v2}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V

    .line 928
    .end local v2           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    .line 944
    .end local v0           #start:J
    :cond_1
    return-void
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v0, p1}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v0, p2}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 717
    :cond_0
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .locals 2
    .parameter "charsetval"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v0, p1}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 673
    :cond_0
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .locals 3
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->isValidEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v0, p1}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 658
    :cond_1
    iput-object p1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 662
    return-void

    .line 660
    :cond_2
    new-instance v0, Lcom/futuredial/vxx/vcard/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 679
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 682
    const-string v4, "VCardParser_V21"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 686
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 687
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 688
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 690
    const-string v4, "VCardParser_V21"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 694
    :cond_3
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 695
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 696
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    .line 697
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 699
    const-string v4, "VCardParser_V21"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 703
    :cond_5
    iget-object v4, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 705
    iget-object v4, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v4, p1}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;,
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 874
    iget-object v8, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v9, "QUOTED-PRINTABLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 875
    invoke-virtual {p0, p2}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 878
    :cond_0
    iget-object v8, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v8, :cond_5

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v8, p2}, Lcom/futuredial/vxx/VBuilder;->DecodeCurField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 883
    .local v6, strMultipleField:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 884
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 885
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 886
    .local v1, ch:C
    const/16 v8, 0x5c

    if-ne v1, v8, :cond_2

    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_2

    .line 887
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 888
    .local v5, nextCh:C
    invoke-virtual {p0, v5}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->maybeUnescape(C)Ljava/lang/String;

    move-result-object v7

    .line 889
    .local v7, unescapedString:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 890
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    add-int/lit8 v2, v2, 0x1

    .line 884
    .end local v5           #nextCh:C
    .end local v7           #unescapedString:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 893
    .restart local v5       #nextCh:C
    .restart local v7       #unescapedString:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 895
    .end local v5           #nextCh:C
    .end local v7           #unescapedString:Ljava/lang/String;
    :cond_2
    const/16 v8, 0x3b

    if-ne v1, v8, :cond_3

    .line 896
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 899
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 902
    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v8, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v9, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    invoke-interface {v8, v9, v4}, Lcom/futuredial/vxx/VBuilder;->propertyValues_MultiFiled(Ljava/lang/String;Ljava/util/List;)V

    .line 905
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #strMultipleField:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 581
    const-string v3, "="

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v4, :cond_6

    .line 583
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    invoke-virtual {p0, v1}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    .line 614
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 587
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    invoke-virtual {p0, v1}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 590
    invoke-virtual {p0, v1}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 592
    invoke-virtual {p0, v1}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 594
    invoke-virtual {p0, v1}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 596
    invoke-virtual {p0, v0, v1}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_5
    const-string v3, "VCardParser_V21"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v5

    const-string v4, "QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 607
    aget-object v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_7
    aget-object v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;,
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 724
    .local v2, start:J
    invoke-virtual {p0, p2}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v5, :cond_0

    .line 726
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v6, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    sget-boolean v7, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mbEscSoloProperty:Z

    invoke-interface {v5, v6, v7, v4}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V

    .line 730
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-wide v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    .line 765
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-void

    .line 731
    .end local v2           #start:J
    :cond_1
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "BASE64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 733
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 737
    .restart local v2       #start:J
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .restart local v1       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v5, :cond_3

    .line 739
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v6, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    sget-boolean v7, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mbEscSoloProperty:Z

    invoke-interface {v5, v6, v7, v4}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v1           #result:Ljava/lang/String;
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    iget-wide v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, error:Ljava/lang/OutOfMemoryError;
    const-string v5, "VCardParser_V21"

    const-string v6, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v5, :cond_3

    .line 746
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v6, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    sget-boolean v7, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mbEscSoloProperty:Z

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_1

    .line 751
    .end local v0           #error:Ljava/lang/OutOfMemoryError;
    .end local v2           #start:J
    :cond_4
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "7BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "8BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 754
    const-string v5, "VCardParser_V21"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The encoding unsupported by vCard spec: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 758
    .restart local v2       #start:J
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v5, :cond_6

    .line 759
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v6, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    sget-boolean v7, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mbEscSoloProperty:Z

    invoke-interface {v5, v6, v7, v4}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V

    .line 763
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-wide v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    goto/16 :goto_0
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 4
    .parameter "ptypeval"

    .prologue
    .line 620
    move-object v0, p1

    .line 621
    .local v0, upperTypeValue:Ljava/lang/String;
    sget-object v1, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 624
    const-string v1, "VCardParser_V21"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type unsupported by vCard 2.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v2, "TYPE"

    invoke-interface {v1, v2}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v1, v0}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 630
    :cond_1
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .locals 3
    .parameter "pvalueval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 636
    sget-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v0, p1}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 644
    :cond_2
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isValidEncoding(Ljava/lang/String;)Z
    .locals 2
    .parameter "encoding"

    .prologue
    .line 174
    sget-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 161
    sget-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->sAvailablePropertyNameV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mWarningValueMap:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescape(C)Ljava/lang/String;
    .locals 2
    .parameter "ch"

    .prologue
    .line 998
    sget-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1000
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1004
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"

    .prologue
    .line 951
    sget-boolean v5, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mbEscSoloProperty:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 954
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 955
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 957
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 958
    .local v1, ch:C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_1

    .line 960
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 961
    .local v4, nextch:C
    sget-object v5, Lcom/futuredial/vxx/vcard/VCardParser_V21;->msEscSet:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 963
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 964
    add-int/lit8 v2, v2, 0x1

    .line 955
    .end local v4           #nextch:C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    .restart local v4       #nextch:C
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 973
    .end local v4           #nextch:C
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 976
    .end local v1           #ch:C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 980
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local p1
    :cond_3
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/futuredial/vxx/VBuilder;Z)V
    .locals 0
    .parameter "is"
    .parameter "charset"
    .parameter "builder"
    .parameter "canceled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 1077
    iput-boolean p4, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mCanceled:Z

    .line 1078
    invoke-virtual {p0, p1, p2, p3}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/futuredial/vxx/VBuilder;)Z

    .line 1079
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lcom/futuredial/vxx/VBuilder;)Z
    .locals 1
    .parameter "is"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 1059
    sget-object v0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/futuredial/vxx/VBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/futuredial/vxx/VBuilder;)Z
    .locals 6
    .parameter "is"
    .parameter "charset"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 1041
    new-instance v2, Lcom/futuredial/vxx/vcard/CustomBufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/futuredial/vxx/vcard/CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    .line 1043
    iput-object p3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1046
    .local v0, start:J
    iget-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v2, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v2}, Lcom/futuredial/vxx/VBuilder;->start()V

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->parseVCardFile()V

    .line 1050
    iget-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v2, :cond_1

    .line 1051
    iget-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v2}, Lcom/futuredial/vxx/VBuilder;->end()V

    .line 1053
    :cond_1
    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeTotal:J

    .line 1055
    const/4 v2, 0x1

    return v2
.end method

.method protected parseItem()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 388
    const-string v11, "8BIT"

    iput-object v11, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 396
    .local v5, start:J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, propertyNameAndValue:[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 480
    .end local v3           #propertyNameAndValue:[Ljava/lang/String;
    :goto_0
    return v9

    .line 400
    .restart local v3       #propertyNameAndValue:[Ljava/lang/String;
    :cond_0
    array-length v9, v3

    const/4 v11, 0x2

    if-eq v9, v11, :cond_2

    .line 401
    new-instance v9, Lcom/futuredial/vxx/vcard/VCardException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid line \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/futuredial/vxx/vcard/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/futuredial/vxx/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    .end local v3           #propertyNameAndValue:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Lcom/futuredial/vxx/vcard/VCardException;
    invoke-virtual {v0}, Lcom/futuredial/vxx/vcard/VCardException;->printStackTrace()V

    .line 462
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v9, :cond_1

    .line 463
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v11, "FDINCORRECTFIELD"

    invoke-interface {v9, v11}, Lcom/futuredial/vxx/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 465
    :cond_1
    sget-object v9, Lcom/futuredial/vxx/vcard/VCardParser;->mIncorrectField:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    const-string v9, "VCardParser_V21"

    invoke-virtual {v0}, Lcom/futuredial/vxx/vcard/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Lcom/futuredial/vxx/vcard/VCardException;
    :goto_1
    move v9, v10

    .line 480
    goto :goto_0

    .line 403
    .restart local v3       #propertyNameAndValue:[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, propertyName:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v4, v3, v9

    .line 406
    .local v4, propertyValue:Ljava/lang/String;
    iget-wide v11, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem1:J

    .line 408
    const-string v9, "ADR"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "ORG"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "N"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 411
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 412
    invoke-virtual {p0, v2, v4}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-wide v11, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem3:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem3:J

    move v9, v10

    .line 414
    goto/16 :goto_0

    .line 415
    :cond_4
    const-string v9, "AGENT"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 416
    invoke-virtual {p0, v4}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleAgent(Ljava/lang/String;)V

    move v9, v10

    .line 417
    goto/16 :goto_0

    .line 418
    :cond_5
    const-string v9, "PHOTO"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 420
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v11, "BASE64"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v11, "B"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 424
    :cond_6
    sget-object v9, Lcom/futuredial/vxx/vcard/VCardParser;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_7

    .line 426
    sget-object v9, Lcom/futuredial/vxx/vcard/VCardParser;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/futuredial/publicobj/ItemSerializable;->SerializePhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 427
    .local v7, strFileName:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 429
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v8, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v11, ""

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12, v8}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V

    .end local v7           #strFileName:Ljava/lang/String;
    .end local v8           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move v9, v10

    .line 435
    goto/16 :goto_0

    .line 436
    :cond_8
    invoke-virtual {p0, v2}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 437
    const-string v9, "BEGIN"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 438
    const-string v9, "VCARD"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 439
    new-instance v9, Lcom/futuredial/vxx/vcard/VCardNestedException;

    const-string v11, "This vCard has nested vCard data in it."

    invoke-direct {v9, v11}, Lcom/futuredial/vxx/vcard/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lcom/futuredial/vxx/vcard/VCardException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/futuredial/vxx/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 469
    .end local v2           #propertyName:Ljava/lang/String;
    .end local v3           #propertyNameAndValue:[Ljava/lang/String;
    .end local v4           #propertyValue:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 471
    .local v0, e:Lcom/futuredial/vxx/codec/DecoderException;
    invoke-virtual {v0}, Lcom/futuredial/vxx/codec/DecoderException;->printStackTrace()V

    .line 473
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v9, :cond_9

    .line 474
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v11, "FDINCORRECTFIELD"

    invoke-interface {v9, v11}, Lcom/futuredial/vxx/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 476
    :cond_9
    sget-object v9, Lcom/futuredial/vxx/vcard/VCardParser;->mIncorrectField:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    const-string v9, "VCardParser_V21"

    invoke-virtual {v0}, Lcom/futuredial/vxx/codec/DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 441
    .end local v0           #e:Lcom/futuredial/vxx/codec/DecoderException;
    .restart local v2       #propertyName:Ljava/lang/String;
    .restart local v3       #propertyNameAndValue:[Ljava/lang/String;
    .restart local v4       #propertyValue:Ljava/lang/String;
    :cond_a
    :try_start_2
    new-instance v9, Lcom/futuredial/vxx/vcard/VCardException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown BEGIN type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 443
    :cond_b
    const-string v9, "VERSION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 445
    new-instance v9, Lcom/futuredial/vxx/vcard/VCardVersionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incompatible version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " != "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/futuredial/vxx/vcard/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 448
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 449
    invoke-virtual {p0, v2, v4}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-wide v11, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem2:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem2:J

    move v9, v10

    .line 451
    goto/16 :goto_0

    .line 454
    :cond_d
    new-instance v9, Lcom/futuredial/vxx/vcard/VCardException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown property name: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Lcom/futuredial/vxx/vcard/VCardException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/futuredial/vxx/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method protected parseItems()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, ended:Z
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 354
    .local v1, start:J
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->startProperty()V

    .line 355
    iget-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeStartProperty:J

    .line 357
    .end local v1           #start:J
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->parseItem()Z

    move-result v0

    .line 358
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 360
    .restart local v1       #start:J
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endProperty()V

    .line 361
    iget-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeEndProperty:J

    .line 364
    .end local v1           #start:J
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 366
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_2

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 368
    .restart local v1       #start:J
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->startProperty()V

    .line 369
    iget-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeStartProperty:J

    .line 371
    .end local v1           #start:J
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->parseItem()Z

    move-result v0

    .line 372
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 374
    .restart local v1       #start:J
    iget-object v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endProperty()V

    .line 375
    iget-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeEndProperty:J

    goto :goto_0

    .line 378
    .end local v1           #start:J
    :cond_3
    return-void
.end method

.method protected parseVCardFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    .line 135
    .local v0, firstReading:Z
    :goto_0
    iget-boolean v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mCanceled:Z

    if-eqz v3, :cond_1

    .line 144
    :cond_0
    iget v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mNestCount:I

    if-lez v3, :cond_2

    .line 145
    const/4 v2, 0x1

    .line 146
    .local v2, useCache:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v3, :cond_2

    .line 147
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 148
    const/4 v2, 0x0

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v1           #i:I
    .end local v2           #useCache:Z
    :cond_1
    invoke-direct {p0, v0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_2
    return-void
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 291
    :goto_0
    return v3

    .line 254
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 258
    const-string v5, ":"

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 284
    .local v0, length:I
    if-ne v0, v7, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 287
    goto :goto_0

    .line 288
    :cond_2
    if-nez p1, :cond_4

    .line 289
    iget v4, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mNestCount:I

    if-lez v4, :cond_3

    .line 290
    iput-object v1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    goto :goto_0

    .line 293
    :cond_3
    new-instance v3, Lcom/futuredial/vxx/vcard/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    :cond_4
    if-nez p1, :cond_0

    .line 300
    new-instance v3, Lcom/futuredial/vxx/vcard/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .locals 5
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 332
    .local v0, line:Ljava/lang/String;
    :goto_0
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    :goto_1
    return-void

    .line 323
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 324
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 325
    new-instance v2, Lcom/futuredial/vxx/vcard/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 337
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 338
    new-instance v2, Lcom/futuredial/vxx/vcard/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_4
    const/4 p1, 0x0

    .line 341
    if-nez p2, :cond_0

    goto :goto_1
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 491
    .local v4, length:I
    const/4 v8, 0x0

    .line 492
    .local v8, state:I
    const/4 v5, 0x0

    .line 494
    .local v5, nameIndex:I
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    .line 496
    .local v7, propertyNameAndValue:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_c

    .line 497
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 498
    .local v0, ch:C
    packed-switch v8, :pswitch_data_0

    .line 496
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    :pswitch_0
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_4

    .line 501
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, propertyName:Ljava/lang/String;
    const-string v9, "END"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 503
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, endValue:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v9, "VCARD"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 506
    iput-object p1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 507
    const/4 v7, 0x0

    .line 553
    .end local v1           #endValue:Ljava/lang/String;
    .end local v6           #propertyName:Ljava/lang/String;
    .end local v7           #propertyNameAndValue:[Ljava/lang/String;
    :goto_2
    return-object v7

    .line 510
    .restart local v6       #propertyName:Ljava/lang/String;
    .restart local v7       #propertyNameAndValue:[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v9, :cond_2

    .line 511
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v9, v6}, Lcom/futuredial/vxx/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 513
    :cond_2
    const/4 v9, 0x0

    aput-object v6, v7, v9

    .line 514
    add-int/lit8 v9, v4, -0x1

    if-ge v3, v9, :cond_3

    .line 515
    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    goto :goto_2

    .line 517
    :cond_3
    const/4 v9, 0x1

    const-string v10, ""

    aput-object v10, v7, v9

    goto :goto_2

    .line 520
    .end local v6           #propertyName:Ljava/lang/String;
    :cond_4
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_6

    .line 521
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, groupName:Ljava/lang/String;
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v9, :cond_5

    .line 523
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v9, v2}, Lcom/futuredial/vxx/VBuilder;->propertyGroup(Ljava/lang/String;)V

    .line 525
    :cond_5
    add-int/lit8 v5, v3, 0x1

    .line 526
    goto :goto_1

    .end local v2           #groupName:Ljava/lang/String;
    :cond_6
    const/16 v9, 0x3b

    if-ne v0, v9, :cond_0

    .line 527
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 528
    .restart local v6       #propertyName:Ljava/lang/String;
    const-string v9, "END"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 529
    iput-object p1, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 530
    const/4 v7, 0x0

    goto :goto_2

    .line 532
    :cond_7
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v9, :cond_8

    .line 533
    iget-object v9, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v9, v6}, Lcom/futuredial/vxx/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 535
    :cond_8
    const/4 v9, 0x0

    aput-object v6, v7, v9

    .line 536
    add-int/lit8 v5, v3, 0x1

    .line 537
    const/4 v8, 0x1

    .line 538
    goto :goto_1

    .line 541
    .end local v6           #propertyName:Ljava/lang/String;
    :pswitch_1
    const/16 v9, 0x22

    if-ne v0, v9, :cond_9

    .line 542
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 543
    :cond_9
    const/16 v9, 0x3b

    if-ne v0, v9, :cond_a

    .line 544
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 545
    add-int/lit8 v5, v3, 0x1

    goto/16 :goto_1

    .line 546
    :cond_a
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_0

    .line 547
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 548
    add-int/lit8 v9, v4, -0x1

    if-ge v3, v9, :cond_b

    .line 549
    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    goto/16 :goto_2

    .line 551
    :cond_b
    const/4 v9, 0x1

    const-string v10, ""

    aput-object v10, v7, v9

    goto/16 :goto_2

    .line 557
    :pswitch_2
    const/16 v9, 0x22

    if-ne v0, v9, :cond_0

    .line 558
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 564
    .end local v0           #ch:C
    :cond_c
    new-instance v9, Lcom/futuredial/vxx/vcard/VCardException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid line: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showDebugInfo()V
    .locals 5

    .prologue
    .line 1082
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total parsing time:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    instance-of v0, v0, Lcom/futuredial/vxx/vcard/CustomBufferedReader;

    if-eqz v0, :cond_0

    .line 1084
    const-string v1, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total readLine time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    check-cast v0, Lcom/futuredial/vxx/vcard/CustomBufferedReader;

    invoke-virtual {v0}, Lcom/futuredial/vxx/vcard/CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeStartRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeStartRecord:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeEndRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeEndRecord:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeParseItem1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem1:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeParseItem2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem2:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeParseItem3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeParseItem3:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeHandlePropertyValue1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue1:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeHandlePropertyValue2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue2:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeHandlePropertyValue3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/futuredial/vxx/vcard/VCardParser_V21;->mTimeHandlePropertyValue3:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void
.end method
