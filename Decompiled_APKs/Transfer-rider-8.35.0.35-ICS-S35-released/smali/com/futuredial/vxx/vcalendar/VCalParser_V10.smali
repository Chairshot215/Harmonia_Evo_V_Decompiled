.class public Lcom/futuredial/vxx/vcalendar/VCalParser_V10;
.super Lcom/futuredial/vxx/VParser;
.source "VCalParser_V10.java"


# static fields
.field private static final mEscAllowedProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEvtPropNameGroup1:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEvtPropNameGroup2:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialValueSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mValueCAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueCLASS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueRES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueSTAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static msEscSet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ATTACH"

    aput-object v2, v1, v4

    const-string v2, "ATTENDEE"

    aput-object v2, v1, v5

    const-string v2, "DCREATED"

    aput-object v2, v1, v6

    const-string v2, "COMPLETED"

    aput-object v2, v1, v7

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DUE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DTEND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "EXRULE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "LAST-MODIFIED"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "RNUM"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PRIORITY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RELATED-TO"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "RRULE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "SEQUENCE"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTSTART"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "SUMMARY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "TRANSP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "STATUS"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AALARM"

    aput-object v2, v1, v4

    const-string v2, "CATEGORIES"

    aput-object v2, v1, v5

    const-string v2, "DALARM"

    aput-object v2, v1, v6

    const-string v2, "EXDATE"

    aput-object v2, v1, v7

    const-string v2, "MALARM"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "PALARM"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RDATE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "RESOURCES"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "APPOINTMENT"

    aput-object v2, v1, v4

    const-string v2, "BUSINESS"

    aput-object v2, v1, v5

    const-string v2, "EDUCATION"

    aput-object v2, v1, v6

    const-string v2, "HOLIDAY"

    aput-object v2, v1, v7

    const-string v2, "MEETING"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "MISCELLANEOUS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PERSONAL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PHONE CALL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "SICK DAY"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "SPECIAL OCCASION"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TRAVEL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "VACATION"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "TASK"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "PUBLIC"

    aput-object v2, v1, v4

    const-string v2, "PRIVATE"

    aput-object v2, v1, v5

    const-string v2, "CONFIDENTIAL"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CATERING"

    aput-object v2, v1, v4

    const-string v2, "CHAIRS"

    aput-object v2, v1, v5

    const-string v2, "EASEL"

    aput-object v2, v1, v6

    const-string v2, "PROJECTOR"

    aput-object v2, v1, v7

    const-string v2, "VCR"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "VEHICLE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ACCEPTED"

    aput-object v2, v1, v4

    const-string v2, "NEEDS ACTION"

    aput-object v2, v1, v5

    const-string v2, "SENT"

    aput-object v2, v1, v6

    const-string v2, "TENTATIVE"

    aput-object v2, v1, v7

    const-string v2, "CONFIRMED"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DECLINED"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "COMPLETED"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "DELEGATED"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v4

    const-string v2, "SUMMARY"

    aput-object v2, v1, v5

    const-string v2, "AALARM"

    aput-object v2, v1, v6

    const-string v2, "DALARM"

    aput-object v2, v1, v7

    const-string v2, "MALARM"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "PALARM"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "LOCATION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    .line 76
    sget-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CATEGORIES"

    sget-object v2, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CLASS"

    sget-object v2, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "RESOURCES"

    sget-object v2, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "STATUS"

    sget-object v2, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, ";\\"

    sput-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->msEscSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/futuredial/vxx/VParser;-><init>()V

    .line 83
    return-void
.end method

.method private exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "propName"
    .parameter "str"

    .prologue
    .line 1670
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1671
    :cond_0
    const/4 p2, 0x0

    .line 1679
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 1672
    .restart local p2
    :cond_2
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1673
    :cond_3
    const-string p2, ""

    goto :goto_0

    .line 1675
    :cond_4
    sget-object v0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method private parseCalentities(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 309
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 311
    .local v1, sum:I
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    .line 312
    if-ne v2, v0, :cond_0

    .line 333
    :goto_0
    return v2

    .line 315
    :cond_0
    add-int/2addr p1, v0

    .line 316
    add-int/2addr v1, v0

    .line 320
    :goto_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 321
    add-int/2addr p1, v0

    .line 322
    add-int/2addr v1, v0

    goto :goto_1

    .line 325
    :cond_1
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    .line 326
    if-ne v2, v0, :cond_2

    move v2, v1

    .line 333
    goto :goto_0

    .line 329
    :cond_2
    add-int/2addr p1, v0

    .line 330
    add-int/2addr v1, v0

    goto :goto_1
.end method

.method private parseCalentity(I)I
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseEvententity(I)I

    move-result v0

    .line 376
    if-eq v1, v0, :cond_1

    move v1, v0

    .line 384
    :cond_0
    :goto_0
    return v1

    .line 380
    :cond_1
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseTodoentity(I)I

    move-result v0

    .line 381
    if-eq v1, v0, :cond_0

    move v1, v0

    .line 382
    goto :goto_0
.end method

.method private parseCalprop(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, ret:I
    const-string v2, "DAYLIGHT"

    invoke-direct {p0, p1, v2}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 343
    if-eq v1, v0, :cond_1

    move v1, v0

    .line 366
    :cond_0
    :goto_0
    return v1

    .line 347
    :cond_1
    const-string v2, "GEO"

    invoke-direct {p0, p1, v2}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 348
    if-eq v1, v0, :cond_2

    move v1, v0

    .line 349
    goto :goto_0

    .line 352
    :cond_2
    const-string v2, "PRODID"

    invoke-direct {p0, p1, v2}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 353
    if-eq v1, v0, :cond_3

    move v1, v0

    .line 354
    goto :goto_0

    .line 357
    :cond_3
    const-string v2, "TZ"

    invoke-direct {p0, p1, v2}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 358
    if-eq v1, v0, :cond_4

    move v1, v0

    .line 359
    goto :goto_0

    .line 362
    :cond_4
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalprop1(I)I

    move-result v0

    .line 363
    if-eq v1, v0, :cond_0

    move v1, v0

    .line 364
    goto :goto_0
.end method

.method private parseCalprop0(ILjava/lang/String;)I
    .locals 9
    .parameter "offset"
    .parameter "propName"

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    .line 392
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    const/4 v2, 0x0

    .line 394
    .local v2, start:I
    invoke-virtual {p0, p1, p2, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 395
    if-ne v5, v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v5

    .line 398
    :cond_1
    add-int/2addr p1, v1

    .line 399
    add-int/2addr v3, v1

    .line 400
    iget-object v6, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v6, :cond_2

    .line 401
    iget-object v6, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v6, p2}, Lcom/futuredial/vxx/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 404
    :cond_2
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v1

    .line 405
    if-eq v5, v1, :cond_3

    .line 406
    add-int/2addr p1, v1

    .line 407
    add-int/2addr v3, v1

    .line 410
    :cond_3
    const-string v6, ":"

    invoke-virtual {p0, p1, v6, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 411
    if-eq v5, v1, :cond_0

    .line 414
    add-int/2addr p1, v1

    .line 415
    add-int/2addr v3, v1

    .line 417
    move v2, p1

    .line 418
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v1

    .line 419
    if-eq v5, v1, :cond_0

    .line 422
    add-int/2addr p1, v1

    .line 423
    add-int/2addr v3, v1

    .line 424
    iget-object v6, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v6, :cond_4

    .line 425
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :try_start_0
    iget-object v6, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v7, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->msEscSet:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8, v4}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_0
    .catch Lcom/futuredial/vxx/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v1

    .line 439
    if-eq v5, v1, :cond_0

    .line 442
    add-int/2addr v3, v1

    move v5, v3

    .line 444
    goto :goto_0

    .line 430
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Lcom/futuredial/vxx/codec/DecoderException;
    invoke-virtual {v0}, Lcom/futuredial/vxx/codec/DecoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseCalprop1(I)I
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 451
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 453
    .local v2, sum:I
    const-string v5, "VERSION"

    invoke-virtual {p0, p1, v5, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 454
    if-ne v4, v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v4

    .line 457
    :cond_1
    add-int/2addr p1, v1

    .line 458
    add-int/2addr v2, v1

    .line 459
    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v5, :cond_2

    .line 460
    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v6, "VERSION"

    invoke-interface {v5, v6}, Lcom/futuredial/vxx/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 463
    :cond_2
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v1

    .line 464
    if-eq v4, v1, :cond_3

    .line 465
    add-int/2addr p1, v1

    .line 466
    add-int/2addr v2, v1

    .line 469
    :cond_3
    const-string v5, ":"

    invoke-virtual {p0, p1, v5, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 470
    if-eq v4, v1, :cond_0

    .line 473
    add-int/2addr p1, v1

    .line 474
    add-int/2addr v2, v1

    .line 476
    const-string v5, "1.0"

    invoke-virtual {p0, p1, v5, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 477
    if-eq v4, v1, :cond_0

    .line 480
    add-int/2addr p1, v1

    .line 481
    add-int/2addr v2, v1

    .line 482
    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v5, :cond_4

    .line 483
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v3, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "1.0"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :try_start_0
    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v6, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->msEscSet:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7, v3}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_0
    .catch Lcom/futuredial/vxx/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v3           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v1

    .line 496
    if-eq v4, v1, :cond_0

    .line 499
    add-int/2addr v2, v1

    move v4, v2

    .line 501
    goto :goto_0

    .line 488
    .restart local v3       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Lcom/futuredial/vxx/codec/DecoderException;
    invoke-virtual {v0}, Lcom/futuredial/vxx/codec/DecoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseCalprops(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 266
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 268
    .local v1, sum:I
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->startProperty()V

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    .line 272
    if-ne v2, v0, :cond_1

    .line 302
    :goto_0
    return v2

    .line 275
    :cond_1
    add-int/2addr p1, v0

    .line 276
    add-int/2addr v1, v0

    .line 277
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endProperty()V

    .line 283
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    .line 284
    add-int/2addr p1, v0

    .line 285
    add-int/2addr v1, v0

    goto :goto_1

    .line 288
    :cond_3
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_4

    .line 289
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->startProperty()V

    .line 291
    :cond_4
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    .line 292
    if-ne v2, v0, :cond_5

    move v2, v1

    .line 302
    goto :goto_0

    .line 295
    :cond_5
    add-int/2addr p1, v0

    .line 296
    add-int/2addr v1, v0

    .line 297
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endProperty()V

    goto :goto_1
.end method

.method private parseEntprop(I)I
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseEntprop0(I)I

    move-result v0

    .line 816
    if-eq v1, v0, :cond_1

    move v1, v0

    .line 824
    :cond_0
    :goto_0
    return v1

    .line 820
    :cond_1
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseEntprop1(I)I

    move-result v0

    .line 821
    if-eq v1, v0, :cond_0

    move v1, v0

    .line 822
    goto :goto_0
.end method

.method private parseEntprop0(I)I
    .locals 10
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    .line 981
    const/4 v2, 0x0

    .local v2, ret:I
    const/4 v4, 0x0

    .local v4, sum:I
    const/4 v3, 0x0

    .line 983
    .local v3, start:I
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v2

    .line 984
    add-int/2addr p1, v2

    .line 985
    add-int/2addr v4, v2

    .line 987
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, propName:Ljava/lang/String;
    sget-object v7, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 989
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return v6

    .line 992
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 993
    add-int/2addr p1, v2

    .line 994
    add-int/2addr v4, v2

    .line 995
    iget-object v7, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v7, :cond_2

    .line 996
    iget-object v7, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v7, v1}, Lcom/futuredial/vxx/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 999
    :cond_2
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v2

    .line 1000
    if-eq v6, v2, :cond_3

    .line 1001
    add-int/2addr p1, v2

    .line 1002
    add-int/2addr v4, v2

    .line 1005
    :cond_3
    const-string v7, ":"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v2

    .line 1006
    if-eq v6, v2, :cond_0

    .line 1009
    add-int/2addr p1, v2

    .line 1010
    add-int/2addr v4, v2

    .line 1012
    move v3, p1

    .line 1013
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v2

    .line 1014
    if-eq v6, v2, :cond_0

    .line 1017
    add-int/2addr p1, v2

    .line 1018
    add-int/2addr v4, v2

    .line 1019
    iget-object v7, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v7, :cond_4

    .line 1020
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v5, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v7, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :try_start_0
    iget-object v7, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v8, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->msEscSet:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9, v5}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_0
    .catch Lcom/futuredial/vxx/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    .end local v5           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v2

    .line 1039
    if-eq v6, v2, :cond_0

    .line 1042
    add-int/2addr v4, v2

    move v6, v4

    .line 1043
    goto :goto_0

    .line 1026
    .restart local v5       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1028
    .local v0, e:Lcom/futuredial/vxx/codec/DecoderException;
    invoke-virtual {v0}, Lcom/futuredial/vxx/codec/DecoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseEntprop1(I)I
    .locals 14
    .parameter "offset"

    .prologue
    const/4 v13, 0x1

    const/4 v10, -0x1

    .line 1052
    const/4 v6, 0x0

    .local v6, ret:I
    const/4 v8, 0x0

    .line 1054
    .local v8, sum:I
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v6

    .line 1055
    add-int/2addr p1, v6

    .line 1056
    add-int/2addr v8, v6

    .line 1058
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 1063
    .local v5, propName:Ljava/lang/String;
    const-string v11, "END"

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return v10

    .line 1067
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1068
    add-int/2addr p1, v6

    .line 1069
    add-int/2addr v8, v6

    .line 1070
    iget-object v11, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v11, :cond_2

    .line 1071
    iget-object v11, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v11, v5}, Lcom/futuredial/vxx/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 1074
    :cond_2
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v6

    .line 1075
    if-eq v10, v6, :cond_3

    .line 1076
    add-int/2addr p1, v6

    .line 1077
    add-int/2addr v8, v6

    .line 1080
    :cond_3
    const-string v11, ":"

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v12}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v6

    .line 1081
    if-eq v10, v6, :cond_0

    .line 1084
    add-int/2addr p1, v6

    .line 1085
    add-int/2addr v8, v6

    .line 1087
    move v7, p1

    .line 1088
    .local v7, start:I
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v6

    .line 1089
    if-eq v10, v6, :cond_0

    .line 1092
    add-int/2addr p1, v6

    .line 1093
    add-int/2addr v8, v6

    .line 1095
    iget-object v11, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v11, :cond_6

    .line 1096
    const/4 v1, 0x0

    .line 1097
    .local v1, end:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v9, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "([^;\\\\]*(\\\\[\\\\;:,])*[^;\\\\]*)(;?)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1100
    .local v4, p:Ljava/util/regex/Pattern;
    iget-object v11, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v11, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1101
    .local v3, m:Ljava/util/regex/Matcher;
    :cond_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1103
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 1105
    add-int v11, v7, v1

    if-ne p1, v11, :cond_4

    .line 1106
    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1107
    .local v2, endValue:Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1108
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    .end local v2           #endValue:Ljava/lang/String;
    :cond_5
    :try_start_0
    iget-object v11, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    sget-object v12, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->msEscSet:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13, v9}, Lcom/futuredial/vxx/VBuilder;->propertyValues(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_0
    .catch Lcom/futuredial/vxx/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    .end local v1           #end:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v4           #p:Ljava/util/regex/Pattern;
    .end local v9           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v6

    .line 1127
    if-eq v10, v6, :cond_0

    .line 1130
    add-int/2addr v8, v6

    move v10, v8

    .line 1131
    goto :goto_0

    .line 1115
    .restart local v1       #end:I
    .restart local v3       #m:Ljava/util/regex/Matcher;
    .restart local v4       #p:Ljava/util/regex/Pattern;
    .restart local v9       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1117
    .local v0, e:Lcom/futuredial/vxx/codec/DecoderException;
    invoke-virtual {v0}, Lcom/futuredial/vxx/codec/DecoderException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private parseEntprops(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 773
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 774
    .local v1, sum:I
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->startProperty()V

    .line 778
    :cond_0
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    .line 779
    if-ne v2, v0, :cond_1

    .line 807
    :goto_0
    return v2

    .line 782
    :cond_1
    add-int/2addr p1, v0

    .line 783
    add-int/2addr v1, v0

    .line 784
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_2

    .line 785
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endProperty()V

    .line 789
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    .line 790
    add-int/2addr p1, v0

    .line 791
    add-int/2addr v1, v0

    goto :goto_1

    .line 793
    :cond_3
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_4

    .line 794
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->startProperty()V

    .line 797
    :cond_4
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    .line 798
    if-ne v2, v0, :cond_5

    move v2, v1

    .line 807
    goto :goto_0

    .line 801
    :cond_5
    add-int/2addr p1, v0

    .line 802
    add-int/2addr v1, v0

    .line 803
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_2

    .line 804
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endProperty()V

    goto :goto_1
.end method

.method private parseEvententity(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 509
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 511
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 512
    if-ne v2, v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v2

    .line 515
    :cond_1
    add-int/2addr p1, v0

    .line 516
    add-int/2addr v1, v0

    .line 519
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 520
    add-int/2addr p1, v0

    .line 521
    add-int/2addr v1, v0

    .line 524
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 525
    if-eq v2, v0, :cond_0

    .line 528
    add-int/2addr p1, v0

    .line 529
    add-int/2addr v1, v0

    .line 532
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 533
    add-int/2addr p1, v0

    .line 534
    add-int/2addr v1, v0

    .line 537
    const-string v3, "VEVENT"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 538
    if-eq v2, v0, :cond_0

    .line 541
    add-int/2addr p1, v0

    .line 542
    add-int/2addr v1, v0

    .line 543
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_2

    .line 544
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v4, "VEVENT"

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 548
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 549
    add-int/2addr p1, v0

    .line 550
    add-int/2addr v1, v0

    .line 553
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 554
    if-eq v2, v0, :cond_0

    .line 557
    add-int/2addr p1, v0

    .line 558
    add-int/2addr v1, v0

    .line 559
    :goto_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    .line 560
    add-int/2addr p1, v0

    .line 561
    add-int/2addr v1, v0

    goto :goto_1

    .line 564
    :cond_3
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    .line 565
    if-eq v2, v0, :cond_0

    .line 568
    add-int/2addr p1, v0

    .line 569
    add-int/2addr v1, v0

    .line 572
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 573
    add-int/2addr p1, v0

    .line 574
    add-int/2addr v1, v0

    .line 577
    :goto_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_4

    .line 578
    add-int/2addr p1, v0

    .line 579
    add-int/2addr v1, v0

    goto :goto_2

    .line 583
    :cond_4
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 584
    if-eq v2, v0, :cond_0

    .line 587
    add-int/2addr p1, v0

    .line 588
    add-int/2addr v1, v0

    .line 591
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 592
    add-int/2addr p1, v0

    .line 593
    add-int/2addr v1, v0

    .line 596
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 597
    if-eq v2, v0, :cond_0

    .line 600
    add-int/2addr p1, v0

    .line 601
    add-int/2addr v1, v0

    .line 604
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 605
    add-int/2addr p1, v0

    .line 606
    add-int/2addr v1, v0

    .line 609
    const-string v3, "VEVENT"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 610
    if-eq v2, v0, :cond_0

    .line 613
    add-int/2addr p1, v0

    .line 614
    add-int/2addr v1, v0

    .line 615
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_5

    .line 616
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endRecord()V

    .line 620
    :cond_5
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 621
    add-int/2addr p1, v0

    .line 622
    add-int/2addr v1, v0

    .line 625
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 626
    if-eq v2, v0, :cond_0

    .line 629
    add-int/2addr p1, v0

    .line 630
    add-int/2addr v1, v0

    .line 631
    :goto_3
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_6

    .line 632
    add-int/2addr p1, v0

    .line 633
    add-int/2addr v1, v0

    goto :goto_3

    :cond_6
    move v2, v1

    .line 636
    goto/16 :goto_0
.end method

.method private parseKnownType(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1511
    const/4 v0, 0x0

    .line 1513
    .local v0, ret:I
    const-string v2, "WAVE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1514
    if-eq v1, v0, :cond_1

    move v1, v0

    .line 1533
    :cond_0
    :goto_0
    return v1

    .line 1518
    :cond_1
    const-string v2, "PCM"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1519
    if-eq v1, v0, :cond_2

    move v1, v0

    .line 1520
    goto :goto_0

    .line 1523
    :cond_2
    const-string v2, "VCARD"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1524
    if-eq v1, v0, :cond_3

    move v1, v0

    .line 1525
    goto :goto_0

    .line 1528
    :cond_3
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1529
    if-eq v1, v0, :cond_0

    move v1, v0

    .line 1530
    goto :goto_0
.end method

.method private parseParam(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 918
    const/4 v0, 0x0

    .line 920
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam0(I)I

    move-result v0

    .line 921
    if-eq v2, v0, :cond_1

    move v2, v0

    .line 971
    :cond_0
    :goto_0
    return v2

    .line 925
    :cond_1
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam1(I)I

    move-result v0

    .line 926
    if-eq v2, v0, :cond_2

    move v2, v0

    .line 927
    goto :goto_0

    .line 930
    :cond_2
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam2(I)I

    move-result v0

    .line 931
    if-eq v2, v0, :cond_3

    move v2, v0

    .line 932
    goto :goto_0

    .line 935
    :cond_3
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam3(I)I

    move-result v0

    .line 936
    if-eq v2, v0, :cond_4

    move v2, v0

    .line 937
    goto :goto_0

    .line 940
    :cond_4
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam4(I)I

    move-result v0

    .line 941
    if-eq v2, v0, :cond_5

    move v2, v0

    .line 942
    goto :goto_0

    .line 945
    :cond_5
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam5(I)I

    move-result v0

    .line 946
    if-eq v2, v0, :cond_6

    move v2, v0

    .line 947
    goto :goto_0

    .line 950
    :cond_6
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam6(I)I

    move-result v0

    .line 951
    if-eq v2, v0, :cond_7

    move v2, v0

    .line 952
    goto :goto_0

    .line 955
    :cond_7
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam7(I)I

    move-result v0

    .line 956
    if-eq v2, v0, :cond_8

    move v2, v0

    .line 957
    goto :goto_0

    .line 960
    :cond_8
    move v1, p1

    .line 961
    .local v1, start:I
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    .line 962
    if-eq v2, v0, :cond_0

    .line 965
    add-int/2addr p1, v0

    .line 966
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v2, :cond_9

    .line 967
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_9
    move v2, v0

    .line 971
    goto :goto_0
.end method

.method private parseParam0(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 1138
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1140
    .local v1, start:I
    const-string v4, "TYPE"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1141
    if-ne v3, v0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v3

    .line 1144
    :cond_1
    add-int/2addr p1, v0

    .line 1145
    add-int/2addr v2, v0

    .line 1146
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_2

    .line 1147
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1150
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1151
    add-int/2addr p1, v0

    .line 1152
    add-int/2addr v2, v0

    .line 1154
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1155
    if-eq v3, v0, :cond_0

    .line 1158
    add-int/2addr p1, v0

    .line 1159
    add-int/2addr v2, v0

    .line 1161
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1162
    add-int/2addr p1, v0

    .line 1163
    add-int/2addr v2, v0

    .line 1165
    move v1, p1

    .line 1166
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parsePtypeval(I)I

    move-result v0

    .line 1167
    if-eq v3, v0, :cond_0

    .line 1170
    add-int/2addr p1, v0

    .line 1171
    add-int/2addr v2, v0

    .line 1172
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_3

    .line 1173
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 1175
    goto :goto_0
.end method

.method private parseParam1(I)I
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 1182
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    move v2, p1

    .line 1183
    .local v2, start:I
    const/4 v0, 0x0

    .line 1185
    .local v0, flag:Z
    const-string v5, "VALUE"

    invoke-virtual {p0, p1, v5, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1186
    if-eq v4, v1, :cond_0

    .line 1187
    add-int/2addr p1, v1

    .line 1188
    add-int/2addr v3, v1

    .line 1189
    const/4 v0, 0x1

    .line 1191
    :cond_0
    if-ne v0, v7, :cond_1

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v5, :cond_1

    .line 1192
    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v6, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1195
    :cond_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1196
    add-int/2addr p1, v1

    .line 1197
    add-int/2addr v3, v1

    .line 1199
    const-string v5, "="

    invoke-virtual {p0, p1, v5, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1200
    if-eq v4, v1, :cond_6

    .line 1201
    if-nez v0, :cond_3

    .line 1227
    :cond_2
    :goto_0
    return v4

    .line 1204
    :cond_3
    add-int/2addr p1, v1

    .line 1205
    add-int/2addr v3, v1

    .line 1212
    :cond_4
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1213
    add-int/2addr p1, v1

    .line 1214
    add-int/2addr v3, v1

    .line 1216
    move v2, p1

    .line 1217
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parsePValueVal(I)I

    move-result v1

    .line 1218
    if-eq v4, v1, :cond_2

    .line 1221
    add-int/2addr p1, v1

    .line 1222
    add-int/2addr v3, v1

    .line 1223
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_5

    .line 1224
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5
    move v4, v3

    .line 1227
    goto :goto_0

    .line 1207
    :cond_6
    if-ne v0, v7, :cond_4

    goto :goto_0
.end method

.method private parseParam2(I)I
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 1232
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    move v2, p1

    .line 1233
    .local v2, start:I
    const/4 v0, 0x0

    .line 1235
    .local v0, flag:Z
    const-string v5, "ENCODING"

    invoke-virtual {p0, p1, v5, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1236
    if-eq v4, v1, :cond_0

    .line 1237
    add-int/2addr p1, v1

    .line 1238
    add-int/2addr v3, v1

    .line 1239
    const/4 v0, 0x1

    .line 1241
    :cond_0
    if-ne v0, v7, :cond_1

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v5, :cond_1

    .line 1242
    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v6, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1245
    :cond_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1246
    add-int/2addr p1, v1

    .line 1247
    add-int/2addr v3, v1

    .line 1249
    const-string v5, "="

    invoke-virtual {p0, p1, v5, v7}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1250
    if-eq v4, v1, :cond_6

    .line 1251
    if-nez v0, :cond_3

    .line 1277
    :cond_2
    :goto_0
    return v4

    .line 1254
    :cond_3
    add-int/2addr p1, v1

    .line 1255
    add-int/2addr v3, v1

    .line 1262
    :cond_4
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1263
    add-int/2addr p1, v1

    .line 1264
    add-int/2addr v3, v1

    .line 1266
    move v2, p1

    .line 1267
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parsePEncodingVal(I)I

    move-result v1

    .line 1268
    if-eq v4, v1, :cond_2

    .line 1271
    add-int/2addr p1, v1

    .line 1272
    add-int/2addr v3, v1

    .line 1273
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_5

    .line 1274
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5
    move v4, v3

    .line 1277
    goto :goto_0

    .line 1257
    :cond_6
    if-ne v0, v7, :cond_4

    goto :goto_0
.end method

.method private parseParam3(I)I
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1284
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1286
    .local v1, start:I
    const-string v4, "CHARSET"

    invoke-virtual {p0, p1, v4, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1287
    if-ne v3, v0, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return v3

    .line 1290
    :cond_1
    add-int/2addr p1, v0

    .line 1291
    add-int/2addr v2, v0

    .line 1292
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_2

    .line 1293
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1296
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1297
    add-int/2addr p1, v0

    .line 1298
    add-int/2addr v2, v0

    .line 1300
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1301
    if-eq v3, v0, :cond_0

    .line 1304
    add-int/2addr p1, v0

    .line 1305
    add-int/2addr v2, v0

    .line 1307
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1308
    add-int/2addr p1, v0

    .line 1309
    add-int/2addr v2, v0

    .line 1311
    move v1, p1

    .line 1312
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCharsetVal(I)I

    move-result v0

    .line 1313
    if-eq v3, v0, :cond_0

    .line 1316
    add-int/2addr p1, v0

    .line 1317
    add-int/2addr v2, v0

    .line 1318
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_3

    .line 1319
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 1322
    goto :goto_0
.end method

.method private parseParam4(I)I
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1329
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1331
    .local v1, start:I
    const-string v4, "LANGUAGE"

    invoke-virtual {p0, p1, v4, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1332
    if-ne v3, v0, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return v3

    .line 1335
    :cond_1
    add-int/2addr p1, v0

    .line 1336
    add-int/2addr v2, v0

    .line 1337
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_2

    .line 1338
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1341
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1342
    add-int/2addr p1, v0

    .line 1343
    add-int/2addr v2, v0

    .line 1345
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1346
    if-eq v3, v0, :cond_0

    .line 1349
    add-int/2addr p1, v0

    .line 1350
    add-int/2addr v2, v0

    .line 1352
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1353
    add-int/2addr p1, v0

    .line 1354
    add-int/2addr v2, v0

    .line 1356
    move v1, p1

    .line 1357
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseLangVal(I)I

    move-result v0

    .line 1358
    if-eq v3, v0, :cond_0

    .line 1361
    add-int/2addr p1, v0

    .line 1362
    add-int/2addr v2, v0

    .line 1363
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_3

    .line 1364
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 1367
    goto :goto_0
.end method

.method private parseParam5(I)I
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1374
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1376
    .local v1, start:I
    const-string v4, "ROLE"

    invoke-virtual {p0, p1, v4, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1377
    if-ne v3, v0, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return v3

    .line 1380
    :cond_1
    add-int/2addr p1, v0

    .line 1381
    add-int/2addr v2, v0

    .line 1382
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_2

    .line 1383
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1386
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1387
    add-int/2addr p1, v0

    .line 1388
    add-int/2addr v2, v0

    .line 1390
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1391
    if-eq v3, v0, :cond_0

    .line 1394
    add-int/2addr p1, v0

    .line 1395
    add-int/2addr v2, v0

    .line 1397
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1398
    add-int/2addr p1, v0

    .line 1399
    add-int/2addr v2, v0

    .line 1401
    move v1, p1

    .line 1402
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseRoleVal(I)I

    move-result v0

    .line 1403
    if-eq v3, v0, :cond_0

    .line 1406
    add-int/2addr p1, v0

    .line 1407
    add-int/2addr v2, v0

    .line 1408
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_3

    .line 1409
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 1412
    goto :goto_0
.end method

.method private parseParam6(I)I
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1419
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1421
    .local v1, start:I
    const-string v4, "STATUS"

    invoke-virtual {p0, p1, v4, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1422
    if-ne v3, v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return v3

    .line 1425
    :cond_1
    add-int/2addr p1, v0

    .line 1426
    add-int/2addr v2, v0

    .line 1427
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_2

    .line 1428
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1431
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1432
    add-int/2addr p1, v0

    .line 1433
    add-int/2addr v2, v0

    .line 1435
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1436
    if-eq v3, v0, :cond_0

    .line 1439
    add-int/2addr p1, v0

    .line 1440
    add-int/2addr v2, v0

    .line 1442
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1443
    add-int/2addr p1, v0

    .line 1444
    add-int/2addr v2, v0

    .line 1446
    move v1, p1

    .line 1447
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseStatuVal(I)I

    move-result v0

    .line 1448
    if-eq v3, v0, :cond_0

    .line 1451
    add-int/2addr p1, v0

    .line 1452
    add-int/2addr v2, v0

    .line 1453
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_3

    .line 1454
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 1457
    goto :goto_0
.end method

.method private parseParam7(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 1465
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1467
    .local v1, start:I
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1468
    if-ne v3, v0, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return v3

    .line 1471
    :cond_1
    add-int/2addr p1, v0

    .line 1472
    add-int/2addr v2, v0

    .line 1473
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v4, :cond_2

    .line 1474
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/futuredial/vxx/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1477
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1478
    add-int/2addr p1, v0

    .line 1479
    add-int/2addr v2, v0

    .line 1481
    const-string v4, "="

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1482
    if-eq v3, v0, :cond_0

    .line 1485
    add-int/2addr p1, v0

    .line 1486
    add-int/2addr v2, v0

    .line 1488
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1489
    add-int/2addr p1, v0

    .line 1490
    add-int/2addr v2, v0

    .line 1492
    move v1, p1

    .line 1493
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseWord(I)I

    move-result v0

    .line 1494
    if-eq v3, v0, :cond_0

    .line 1497
    add-int/2addr p1, v0

    .line 1498
    add-int/2addr v2, v0

    .line 1499
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_3

    .line 1500
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 1503
    goto :goto_0
.end method

.method private parseParamlist(I)I
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 874
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 876
    .local v2, sum:I
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    .line 877
    if-ne v4, v1, :cond_0

    .line 911
    :goto_0
    return v4

    .line 880
    :cond_0
    add-int/2addr p1, v1

    .line 881
    add-int/2addr v2, v1

    .line 883
    move v0, p1

    .line 884
    .local v0, offsetTemp:I
    move v3, v2

    .line 886
    .local v3, sumTemp:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 887
    add-int/2addr v0, v1

    .line 888
    add-int/2addr v3, v1

    .line 890
    const-string v5, ";"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 891
    if-ne v4, v1, :cond_1

    move v4, v2

    .line 892
    goto :goto_0

    .line 894
    :cond_1
    add-int/2addr v0, v1

    .line 895
    add-int/2addr v3, v1

    .line 897
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 898
    add-int/2addr v0, v1

    .line 899
    add-int/2addr v3, v1

    .line 901
    invoke-direct {p0, v0}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    .line 902
    if-ne v4, v1, :cond_2

    move v4, v2

    .line 911
    goto :goto_0

    .line 905
    :cond_2
    add-int/2addr v0, v1

    .line 906
    add-int/2addr v3, v1

    .line 909
    move v2, v3

    goto :goto_1
.end method

.method private parseParams(I)I
    .locals 7
    .parameter "offset"

    .prologue
    const/16 v6, 0x3a

    const/4 v3, -0x1

    .line 831
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 833
    .local v2, sum:I
    const-string v4, ";"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 834
    if-ne v3, v1, :cond_1

    .line 867
    :cond_0
    :goto_0
    return v3

    .line 837
    :cond_1
    add-int/2addr p1, v1

    .line 838
    add-int/2addr v2, v1

    .line 840
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 841
    add-int/2addr p1, v1

    .line 842
    add-int/2addr v2, v1

    .line 844
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseParamlist(I)I

    move-result v1

    .line 845
    if-ne v3, v1, :cond_3

    .line 847
    :goto_1
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 849
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    move v3, v2

    .line 850
    goto :goto_0

    .line 852
    .end local p1
    .restart local v0       #offset:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_1

    .line 856
    :cond_3
    add-int/2addr v2, v1

    .line 857
    add-int/2addr p1, v1

    .line 859
    :goto_2
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_5

    .line 861
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_4

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    move v3, v2

    .line 862
    goto :goto_0

    .line 864
    .end local p1
    .restart local v0       #offset:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_2

    :cond_5
    move v3, v2

    .line 867
    goto :goto_0
.end method

.method private parsePtypeval(I)I
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 1540
    const/4 v0, 0x0

    .line 1542
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    .line 1543
    if-eq v1, v0, :cond_1

    move v1, v0

    .line 1552
    :cond_0
    :goto_0
    return v1

    .line 1547
    :cond_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1548
    if-eq v1, v0, :cond_0

    move v1, v0

    .line 1549
    goto :goto_0
.end method

.method private parseRoleVal(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1559
    const/4 v0, 0x0

    .line 1561
    .local v0, ret:I
    const-string v2, "ATTENDEE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1562
    if-eq v1, v0, :cond_1

    move v1, v0

    .line 1581
    :cond_0
    :goto_0
    return v1

    .line 1566
    :cond_1
    const-string v2, "ORGANIZER"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1567
    if-eq v1, v0, :cond_2

    move v1, v0

    .line 1568
    goto :goto_0

    .line 1571
    :cond_2
    const-string v2, "OWNER"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1572
    if-eq v1, v0, :cond_3

    move v1, v0

    .line 1573
    goto :goto_0

    .line 1576
    :cond_3
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1577
    if-eq v1, v0, :cond_0

    move v1, v0

    .line 1578
    goto :goto_0
.end method

.method private parseStatuVal(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1589
    const/4 v0, 0x0

    .line 1591
    .local v0, ret:I
    const-string v2, "ACCEPTED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1592
    if-eq v1, v0, :cond_1

    move v1, v0

    .line 1627
    :cond_0
    :goto_0
    return v1

    .line 1596
    :cond_1
    const-string v2, "NEED ACTION"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1597
    if-eq v1, v0, :cond_2

    move v1, v0

    .line 1598
    goto :goto_0

    .line 1601
    :cond_2
    const-string v2, "TENTATIVE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1602
    if-eq v1, v0, :cond_3

    move v1, v0

    .line 1603
    goto :goto_0

    .line 1605
    :cond_3
    const-string v2, "CONFIRMED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1606
    if-eq v1, v0, :cond_4

    move v1, v0

    .line 1607
    goto :goto_0

    .line 1609
    :cond_4
    const-string v2, "DECLINED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1610
    if-eq v1, v0, :cond_5

    move v1, v0

    .line 1611
    goto :goto_0

    .line 1613
    :cond_5
    const-string v2, "COMPLETED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1614
    if-eq v1, v0, :cond_6

    move v1, v0

    .line 1615
    goto :goto_0

    .line 1617
    :cond_6
    const-string v2, "DELEGATED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1618
    if-eq v1, v0, :cond_7

    move v1, v0

    .line 1619
    goto :goto_0

    .line 1622
    :cond_7
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1623
    if-eq v1, v0, :cond_0

    move v1, v0

    .line 1624
    goto :goto_0
.end method

.method private parseTodoentity(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 644
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 646
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 647
    if-ne v2, v0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return v2

    .line 650
    :cond_1
    add-int/2addr p1, v0

    .line 651
    add-int/2addr v1, v0

    .line 654
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 655
    add-int/2addr p1, v0

    .line 656
    add-int/2addr v1, v0

    .line 659
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 660
    if-eq v2, v0, :cond_0

    .line 663
    add-int/2addr p1, v0

    .line 664
    add-int/2addr v1, v0

    .line 667
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 668
    add-int/2addr p1, v0

    .line 669
    add-int/2addr v1, v0

    .line 672
    const-string v3, "VTODO"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 673
    if-eq v2, v0, :cond_0

    .line 676
    add-int/2addr p1, v0

    .line 677
    add-int/2addr v1, v0

    .line 678
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_2

    .line 679
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v4, "VTODO"

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 683
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 684
    if-eq v2, v0, :cond_0

    .line 687
    add-int/2addr p1, v0

    .line 688
    add-int/2addr v1, v0

    .line 689
    :goto_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    .line 690
    add-int/2addr p1, v0

    .line 691
    add-int/2addr v1, v0

    goto :goto_1

    .line 694
    :cond_3
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    .line 695
    if-eq v2, v0, :cond_0

    .line 698
    add-int/2addr p1, v0

    .line 699
    add-int/2addr v1, v0

    .line 702
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 703
    add-int/2addr p1, v0

    .line 704
    add-int/2addr v1, v0

    .line 707
    :goto_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_4

    .line 708
    add-int/2addr p1, v0

    .line 709
    add-int/2addr v1, v0

    goto :goto_2

    .line 713
    :cond_4
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 714
    if-eq v2, v0, :cond_0

    .line 717
    add-int/2addr p1, v0

    .line 718
    add-int/2addr v1, v0

    .line 721
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 722
    add-int/2addr p1, v0

    .line 723
    add-int/2addr v1, v0

    .line 726
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 727
    if-eq v2, v0, :cond_0

    .line 730
    add-int/2addr p1, v0

    .line 731
    add-int/2addr v1, v0

    .line 734
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 735
    add-int/2addr p1, v0

    .line 736
    add-int/2addr v1, v0

    .line 739
    const-string v3, "VTODO"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 740
    if-eq v2, v0, :cond_0

    .line 743
    add-int/2addr p1, v0

    .line 744
    add-int/2addr v1, v0

    .line 745
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_5

    .line 746
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endRecord()V

    .line 750
    :cond_5
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 751
    add-int/2addr p1, v0

    .line 752
    add-int/2addr v1, v0

    .line 755
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 756
    if-eq v2, v0, :cond_0

    .line 759
    add-int/2addr p1, v0

    .line 760
    add-int/2addr v1, v0

    .line 761
    :goto_3
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_6

    .line 762
    add-int/2addr p1, v0

    .line 763
    add-int/2addr v1, v0

    goto :goto_3

    :cond_6
    move v2, v1

    .line 766
    goto/16 :goto_0
.end method

.method private parseVCal(I)I
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 121
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 124
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 125
    if-ne v2, v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    add-int/2addr p1, v0

    .line 129
    add-int/2addr v1, v0

    .line 132
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 133
    add-int/2addr p1, v0

    .line 134
    add-int/2addr v1, v0

    .line 137
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 138
    if-eq v2, v0, :cond_0

    .line 141
    add-int/2addr p1, v0

    .line 142
    add-int/2addr v1, v0

    .line 145
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 146
    add-int/2addr p1, v0

    .line 147
    add-int/2addr v1, v0

    .line 150
    const-string v3, "VCALENDAR"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 151
    if-eq v2, v0, :cond_0

    .line 154
    add-int/2addr p1, v0

    .line 155
    add-int/2addr v1, v0

    .line 156
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_2

    .line 157
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    const-string v4, "VCALENDAR"

    invoke-interface {v3, v4}, Lcom/futuredial/vxx/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 162
    add-int/2addr p1, v0

    .line 163
    add-int/2addr v1, v0

    .line 166
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 167
    if-eq v2, v0, :cond_0

    .line 170
    add-int/2addr p1, v0

    .line 171
    add-int/2addr v1, v0

    .line 172
    :goto_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_3

    .line 173
    add-int/2addr p1, v0

    .line 174
    add-int/2addr v1, v0

    goto :goto_1

    .line 178
    :cond_3
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalprops(I)I

    move-result v0

    .line 179
    if-eq v2, v0, :cond_0

    .line 182
    add-int/2addr p1, v0

    .line 183
    add-int/2addr v1, v0

    .line 186
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCalentities(I)I

    move-result v0

    .line 187
    if-eq v2, v0, :cond_0

    .line 190
    add-int/2addr p1, v0

    .line 191
    add-int/2addr v1, v0

    .line 194
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 195
    add-int/2addr p1, v0

    .line 196
    add-int/2addr v1, v0

    .line 199
    :goto_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_4

    .line 200
    add-int/2addr p1, v0

    .line 201
    add-int/2addr v1, v0

    goto :goto_2

    .line 205
    :cond_4
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 206
    if-eq v2, v0, :cond_0

    .line 209
    add-int/2addr p1, v0

    .line 210
    add-int/2addr v1, v0

    .line 213
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 214
    add-int/2addr p1, v0

    .line 215
    add-int/2addr v1, v0

    .line 219
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 220
    if-eq v2, v0, :cond_0

    .line 223
    add-int/2addr p1, v0

    .line 224
    add-int/2addr v1, v0

    .line 227
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 228
    add-int/2addr p1, v0

    .line 229
    add-int/2addr v1, v0

    .line 232
    const-string v3, "VCALENDAR"

    invoke-virtual {p0, p1, v3, v5}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 233
    if-eq v2, v0, :cond_0

    .line 236
    add-int/2addr p1, v0

    .line 237
    add-int/2addr v1, v0

    .line 238
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_5

    .line 239
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->endRecord()V

    .line 243
    :cond_5
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 244
    add-int/2addr p1, v0

    .line 245
    add-int/2addr v1, v0

    .line 248
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 249
    if-eq v2, v0, :cond_0

    .line 252
    add-int/2addr p1, v0

    .line 253
    add-int/2addr v1, v0

    .line 254
    :goto_3
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_6

    .line 255
    add-int/2addr p1, v0

    .line 256
    add-int/2addr v1, v0

    goto :goto_3

    :cond_6
    move v2, v1

    .line 259
    goto/16 :goto_0
.end method

.method private parseVCalFile(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 92
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 95
    .local v1, sum:I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 96
    add-int/2addr p1, v0

    .line 97
    add-int/2addr v1, v0

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseVCal(I)I

    move-result v0

    .line 101
    if-eq v2, v0, :cond_2

    .line 102
    add-int/2addr p1, v0

    .line 103
    add-int/2addr v1, v0

    .line 109
    :goto_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 110
    add-int/2addr p1, v0

    .line 111
    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 113
    :cond_2
    return v2
.end method

.method private valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4
    .parameter "propName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1636
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 1649
    :goto_0
    return v2

    .line 1640
    :cond_1
    sget-object v2, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1641
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1642
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1643
    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1644
    const/4 v2, -0x1

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 1649
    goto :goto_0
.end method


# virtual methods
.method protected parseVFile(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;->parseVCalFile(I)I

    move-result v0

    return v0
.end method
