.class public Lcom/android/mms/ui/MyLinkify;
.super Ljava/lang/Object;
.source "MyLinkify.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = true

.field public static final MMS_WEB_URL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final PHONE_NUMBER_MINIMUM_DIGITS_GENERAL:I = 0x5

.field private static final PHONE_NUMBER_MINIMUM_DIGITS_SPRINT:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS_TELSTRA:I = 0x3

.field public static final PHONE_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final PHONE_PATTERN_NO_SPACE:Ljava/util/regex/Pattern; = null

.field public static final PHONE_PATTERN_NO_SPACE_SPRINT:Ljava/util/regex/Pattern; = null

.field public static final PHONE_PATTERN_NO_SPACE_TELSTRA:Ljava/util/regex/Pattern; = null

.field static S:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MyLinkify"

.field static _address:Ljava/lang/String;

.field static _string:Ljava/lang/String;

.field static findAddressThread:Ljava/lang/Thread;

.field private static m_filterSchemeList:[Ljava/lang/String;

.field private static m_validSchemeList:[Ljava/lang/String;

.field static mainThread:Ljava/lang/Thread;

.field public static final sLocationTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field private static urlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ftp://"

    aput-object v1, v0, v4

    const-string v1, "telnet://"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->m_filterSchemeList:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v0, v4

    const-string v1, "https://"

    aput-object v1, v0, v5

    const-string v1, "rtsp://"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->m_validSchemeList:[Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->urlList:Ljava/util/ArrayList;

    .line 48
    const-string v0, "((\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?(([0-9][0-9\\- \\.][0-9\\- \\.]+(([ ][0-9]+((?=\\s)|\\b))|([\\.\\-][0-9]+)))|(((?<!\\d)[0-9])[0-9]?[\\-\\. ]([0-9]+|([0-9\\-\\. ]+(([ ][0-9]+((?=\\s)|\\b))|([\\.\\-][0-9]+)))))|((?<![ ])[0-9]+)))|([0-9]{5,})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "(\\+[0-9]+[\\-\\.]*)?(\\([0-9]+\\)[\\-\\.]*)?([0-9][0-9\\-\\.][0-9\\-\\.]+[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "((\\+[0-9]+[\\-\\.]*)?(\\([0-9]+\\)[\\-\\.]*)?(([0-9][0-9\\-\\.][0-9\\-\\.]+(([0-9]+((?=\\s)|\\b))|([\\.\\-][0-9]+)))|(((?<!\\d)[0-9])[0-9]?[\\-\\.]([0-9]+|([0-9\\-\\.]+(([0-9]+((?=\\s)|\\b))|([\\.\\-][0-9]+)))))|((?<!)[0-9]+)))|([0-9]{4,})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE_SPRINT:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "(\\+[0-9]+[\\-\\.]*)?(\\([0-9]+\\)[\\-\\.]*)?([0-9][0-9\\-\\.][0-9\\-\\.]+[0-9])|([0-9][0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE_TELSTRA:Ljava/util/regex/Pattern;

    .line 96
    const-string v0, "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz]|cnn|CNN)|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnrwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->MMS_WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 179
    new-instance v0, Lcom/android/mms/ui/MyLinkify$1;

    invoke-direct {v0}, Lcom/android/mms/ui/MyLinkify$1;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->sLocationTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 184
    new-instance v0, Lcom/android/mms/ui/MyLinkify$2;

    invoke-direct {v0}, Lcom/android/mms/ui/MyLinkify$2;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 238
    new-instance v0, Lcom/android/mms/ui/MyLinkify$3;

    invoke-direct {v0}, Lcom/android/mms/ui/MyLinkify$3;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 284
    new-instance v0, Lcom/android/mms/ui/MyLinkify$4;

    invoke-direct {v0}, Lcom/android/mms/ui/MyLinkify$4;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 292
    sput-object v2, Lcom/android/mms/ui/MyLinkify;->_address:Ljava/lang/String;

    .line 293
    sput-object v2, Lcom/android/mms/ui/MyLinkify;->_string:Ljava/lang/String;

    .line 294
    const-string v0, "Wait WebView.findAddress() too long -- abort"

    sput-object v0, Lcom/android/mms/ui/MyLinkify;->S:Ljava/lang/String;

    .line 295
    sput-object v2, Lcom/android/mms/ui/MyLinkify;->findAddressThread:Ljava/lang/Thread;

    .line 296
    sput-object v2, Lcom/android/mms/ui/MyLinkify;->mainThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->m_validSchemeList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->urlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .locals 13
    .parameter "text"
    .parameter "mask"

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    const/4 v1, 0x0

    .line 504
    :goto_0
    return v1

    .line 448
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Lcom/android/mms/util/MyURLSpan;

    invoke-interface {p0, v1, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/mms/util/MyURLSpan;

    .line 450
    .local v12, old:[Lcom/android/mms/util/MyURLSpan;
    array-length v1, v12

    add-int/lit8 v9, v1, -0x1

    .local v9, i:I
    :goto_1
    if-ltz v9, :cond_1

    .line 451
    aget-object v1, v12, v9

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 450
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 454
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 457
    sget-object v2, Lcom/android/mms/ui/MyLinkify;->MMS_WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Lcom/android/mms/ui/MyLinkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MyLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 467
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 468
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "mailto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MyLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 473
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 477
    invoke-static {}, Lcom/android/mms/ui/MyLinkify;->getPhoneNumberPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 478
    .local v2, pattern:Ljava/util/regex/Pattern;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "tel:"

    aput-object v4, v3, v1

    sget-object v4, Lcom/android/mms/ui/MyLinkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Lcom/android/mms/ui/MyLinkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MyLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 483
    .end local v2           #pattern:Ljava/util/regex/Pattern;
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 484
    invoke-static {v0, p0}, Lcom/android/mms/ui/MyLinkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 488
    sget-object v5, Landroid/util/Patterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "http://maps.google.com/maps?f=q&geocode=&q="

    aput-object v3, v6, v1

    const/4 v7, 0x0

    sget-object v8, Lcom/android/mms/ui/MyLinkify;->sLocationTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v3, v0

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MyLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 494
    :cond_5
    invoke-static {v0}, Lcom/android/mms/ui/MyLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 496
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 497
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 500
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/ui/LinkSpec;

    .line 501
    .local v11, link:Lcom/android/mms/ui/LinkSpec;
    iget-object v1, v11, Lcom/android/mms/ui/LinkSpec;->url:Ljava/lang/String;

    iget v3, v11, Lcom/android/mms/ui/LinkSpec;->start:I

    iget v4, v11, Lcom/android/mms/ui/LinkSpec;->end:I

    invoke-static {v1, v3, v4, p0}, Lcom/android/mms/ui/MyLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .line 504
    .end local v11           #link:Lcom/android/mms/ui/LinkSpec;
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 431
    new-instance v0, Lcom/android/mms/util/MyURLSpan;

    invoke-direct {v0, p0}, Lcom/android/mms/util/MyURLSpan;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, span:Lcom/android/mms/util/MyURLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 434
    return-void
.end method

.method private static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, bInturrupted:Z
    const/4 v2, 0x0

    sput-object v2, Lcom/android/mms/ui/MyLinkify;->_address:Ljava/lang/String;

    .line 301
    sput-object p0, Lcom/android/mms/ui/MyLinkify;->_string:Ljava/lang/String;

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MyLinkify;->mainThread:Ljava/lang/Thread;

    .line 304
    sget-object v2, Lcom/android/mms/ui/MyLinkify;->findAddressThread:Ljava/lang/Thread;

    if-nez v2, :cond_2

    .line 305
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/MyLinkify$5;

    invoke-direct {v3}, Lcom/android/mms/ui/MyLinkify$5;-><init>()V

    const-string v4, "findAddressThread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lcom/android/mms/ui/MyLinkify;->findAddressThread:Ljava/lang/Thread;

    .line 321
    sget-object v2, Lcom/android/mms/ui/MyLinkify;->findAddressThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 327
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/mms/ui/MyLinkify;->findAddressThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 328
    sget-object v2, Lcom/android/mms/ui/MyLinkify;->findAddressThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 336
    :cond_1
    sget-object v2, Lcom/android/mms/ui/MyLinkify;->_address:Ljava/lang/String;

    return-object v2

    .line 323
    :cond_2
    sget-object v2, Lcom/android/mms/ui/MyLinkify;->findAddressThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, e:Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static fnFindLastTagPos(Ljava/lang/String;)I
    .locals 4
    .parameter "content"

    .prologue
    .line 162
    const/4 v2, -0x1

    .line 164
    .local v2, nTagPos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/mms/ui/MyLinkify;->m_filterSchemeList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 165
    sget-object v3, Lcom/android/mms/ui/MyLinkify;->m_filterSchemeList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 166
    .local v1, nRet:I
    if-le v1, v2, :cond_0

    .line 167
    move v2, v1

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v1           #nRet:I
    :cond_1
    return v2
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 413
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 414
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 415
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 417
    .local v0, end:I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 418
    :cond_1
    new-instance v2, Lcom/android/mms/ui/LinkSpec;

    invoke-direct {v2}, Lcom/android/mms/ui/LinkSpec;-><init>()V

    .line 419
    .local v2, spec:Lcom/android/mms/ui/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Lcom/android/mms/ui/MyLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Lcom/android/mms/ui/LinkSpec;->url:Ljava/lang/String;

    .line 422
    iput v3, v2, Lcom/android/mms/ui/LinkSpec;->start:I

    .line 423
    iput v0, v2, Lcom/android/mms/ui/LinkSpec;->end:I

    .line 425
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    .end local v0           #end:I
    .end local v2           #spec:Lcom/android/mms/ui/LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 343
    .local v8, string:Ljava/lang/String;
    const/4 v1, 0x0

    .line 346
    .local v1, base:I
    :goto_0
    invoke-static {v8}, Lcom/android/mms/ui/MyLinkify;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 349
    .local v7, start:I
    if-gez v7, :cond_1

    .line 373
    .end local v7           #start:I
    :cond_0
    return-void

    .line 353
    .restart local v7       #start:I
    :cond_1
    new-instance v6, Lcom/android/mms/ui/LinkSpec;

    invoke-direct {v6}, Lcom/android/mms/ui/LinkSpec;-><init>()V

    .line 354
    .local v6, spec:Lcom/android/mms/ui/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 355
    .local v5, length:I
    add-int v4, v7, v5

    .line 357
    .local v4, end:I
    add-int v9, v1, v7

    iput v9, v6, Lcom/android/mms/ui/LinkSpec;->start:I

    .line 358
    add-int v9, v1, v4

    iput v9, v6, Lcom/android/mms/ui/LinkSpec;->end:I

    .line 359
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 360
    add-int/2addr v1, v4

    .line 362
    const/4 v3, 0x0

    .line 365
    .local v3, encodedAddress:Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/mms/ui/LinkSpec;->url:Ljava/lang/String;

    .line 371
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    :catch_0
    move-exception v2

    .line 367
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static getPhoneNumberPattern()Ljava/util/regex/Pattern;
    .locals 3

    .prologue
    .line 578
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9f

    if-ne v1, v2, :cond_0

    .line 579
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE_TELSTRA:Ljava/util/regex/Pattern;

    .line 595
    .local v0, pattern:Ljava/util/regex/Pattern;
    :goto_0
    return-object v0

    .line 580
    .end local v0           #pattern:Ljava/util/regex/Pattern;
    :cond_0
    const/16 v1, 0x94

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE_SPRINT:Ljava/util/regex/Pattern;

    .restart local v0       #pattern:Ljava/util/regex/Pattern;
    goto :goto_0

    .line 587
    .end local v0           #pattern:Ljava/util/regex/Pattern;
    :cond_2
    const/16 v1, 0x29

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isLanguageFlag(S)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 590
    :cond_3
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE:Ljava/util/regex/Pattern;

    .restart local v0       #pattern:Ljava/util/regex/Pattern;
    goto :goto_0

    .line 592
    .end local v0           #pattern:Ljava/util/regex/Pattern;
    :cond_4
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    .restart local v0       #pattern:Ljava/util/regex/Pattern;
    goto :goto_0
.end method

.method public static getPhoneNumbers(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "s"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/mms/ui/MyLinkify;->getPhoneNumberPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 602
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 604
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 605
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 606
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 608
    .local v0, end:I
    sget-object v5, Lcom/android/mms/ui/MyLinkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    invoke-interface {v5, p0, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 610
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/mms/ui/MyLinkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    invoke-static {v5, v6, v1, v7}, Lcom/android/mms/ui/MyLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 615
    .end local v0           #end:I
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 377
    if-eqz p3, :cond_0

    .line 378
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 381
    :cond_0
    if-nez p1, :cond_2

    .line 405
    :cond_1
    :goto_0
    return-object p0

    .line 384
    :cond_2
    const/4 v7, 0x0

    .line 386
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, p1

    if-ge v8, v0, :cond_3

    .line 387
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    const/4 v7, 0x1

    .line 392
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 401
    :cond_3
    if-nez v7, :cond_1

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 386
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 2
    .parameter "view"
    .parameter "text"

    .prologue
    .line 567
    const-class v1, Lcom/android/mms/ui/MyLinkify;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 568
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 569
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/android/mms/ui/MyLinkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit v1

    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/LinkSpec;>;"
    new-instance v2, Lcom/android/mms/ui/MyLinkify$6;

    invoke-direct {v2}, Lcom/android/mms/ui/MyLinkify$6;-><init>()V

    .line 534
    .local v2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/mms/ui/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 536
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 537
    .local v4, len:I
    const/4 v3, 0x0

    .line 539
    .local v3, i:I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 540
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/LinkSpec;

    .line 541
    .local v0, a:Lcom/android/mms/ui/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/LinkSpec;

    .line 542
    .local v1, b:Lcom/android/mms/ui/LinkSpec;
    const/4 v5, -0x1

    .line 544
    .local v5, remove:I
    iget v6, v0, Lcom/android/mms/ui/LinkSpec;->start:I

    iget v7, v1, Lcom/android/mms/ui/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Lcom/android/mms/ui/LinkSpec;->end:I

    iget v7, v1, Lcom/android/mms/ui/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 545
    iget v6, v1, Lcom/android/mms/ui/LinkSpec;->end:I

    iget v7, v0, Lcom/android/mms/ui/LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 546
    add-int/lit8 v5, v3, 0x1

    .line 553
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 554
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    add-int/lit8 v4, v4, -0x1

    .line 556
    goto :goto_0

    .line 547
    :cond_1
    iget v6, v0, Lcom/android/mms/ui/LinkSpec;->end:I

    iget v7, v0, Lcom/android/mms/ui/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/android/mms/ui/LinkSpec;->end:I

    iget v8, v1, Lcom/android/mms/ui/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 548
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 549
    :cond_2
    iget v6, v0, Lcom/android/mms/ui/LinkSpec;->end:I

    iget v7, v0, Lcom/android/mms/ui/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/android/mms/ui/LinkSpec;->end:I

    iget v8, v1, Lcom/android/mms/ui/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 550
    move v5, v3

    goto :goto_1

    .line 561
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 562
    goto :goto_0

    .line 563
    .end local v0           #a:Lcom/android/mms/ui/LinkSpec;
    .end local v1           #b:Lcom/android/mms/ui/LinkSpec;
    .end local v5           #remove:I
    :cond_4
    return-void
.end method
