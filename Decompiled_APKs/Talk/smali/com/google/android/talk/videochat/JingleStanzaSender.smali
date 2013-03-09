.class public Lcom/google/android/talk/videochat/JingleStanzaSender;
.super Ljava/lang/Object;
.source "JingleStanzaSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    }
.end annotation


# static fields
.field public static final CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final ERROR_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final ERROR_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final JINGLENODEWRAPPER_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final JINGLENODEWRAPPER_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final JINGLE_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final JINGLE_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "<(\\s+)?(\\w+?:)?session\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?session(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "<(\\s+)?(\\w+?:)?jingle\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->JINGLE_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?jingle(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->JINGLE_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "<(\\s+)?(\\w+?:)?callPerfStats\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?callPerfStats(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "<(\\s+)?(\\w+?:)?systemInfoStats\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?systemInfoStats(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "<(\\s+)?(\\w+?:)?error\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->ERROR_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?error(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->ERROR_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "<(\\s+)?(\\w+?:)?jinglenodewrapper\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->JINGLENODEWRAPPER_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?jinglenodewrapper(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->JINGLENODEWRAPPER_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method static buildIqStanza(Ljava/lang/String;)Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .locals 2
    .parameter "rawIqStanza"

    .prologue
    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/JingleStanzaSender;->buildIqStanza(Ljava/lang/String;ZZ)Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;

    move-result-object v0

    return-object v0
.end method

.method public static buildIqStanza(Ljava/lang/String;ZZ)Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .locals 10
    .parameter "rawIqStanza"
    .parameter "parseForCallperfstats"
    .parameter "useJingleNodeWrapper"

    .prologue
    const/4 v7, 0x0

    .line 225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 226
    const-string v8, "talk"

    const-string v9, "[JingleStanzaSender] buildIqStanza: invalid xml!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-object v7

    .line 230
    :cond_0
    invoke-static {p0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractJingleXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, jingleXml:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractSessionXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, sessionXml:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractErrorXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, errorXml:Ljava/lang/String;
    const/4 v1, 0x0

    .line 234
    .local v1, callPerfStatsXml:Ljava/lang/String;
    const/4 v6, 0x0

    .line 236
    .local v6, systemInfoStatsXml:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 237
    invoke-static {p0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractCallPerfStatsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {p0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractSystemInfoStatsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 241
    :cond_1
    const/4 v4, 0x0

    .line 243
    .local v4, numChildren:I
    if-eqz v3, :cond_2

    .line 244
    add-int/lit8 v4, v4, 0x1

    .line 247
    :cond_2
    if-eqz v5, :cond_3

    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 251
    :cond_3
    if-eqz v2, :cond_4

    .line 252
    add-int/lit8 v4, v4, 0x1

    .line 255
    :cond_4
    if-eqz v1, :cond_5

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 259
    :cond_5
    if-eqz v6, :cond_6

    .line 260
    add-int/lit8 v4, v4, 0x1

    .line 263
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    if-le v4, v8, :cond_e

    if-eqz p2, :cond_e

    .line 272
    const-string v8, "<jinglenodewrapper xmlns=\"google:mobile:jingle\">"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_7
    if-eqz v6, :cond_8

    .line 280
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_8
    if-eqz v3, :cond_9

    .line 284
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_9
    if-eqz v5, :cond_a

    .line 288
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_a
    if-eqz v2, :cond_b

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_b
    const-string v8, "</jinglenodewrapper>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_c
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_d
    invoke-static {p0, v7}, Lcom/google/android/talk/videochat/JingleStanzaSender;->generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;

    move-result-object v7

    goto :goto_0

    .line 309
    :cond_e
    if-eqz v2, :cond_f

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 311
    :cond_f
    if-eqz v1, :cond_10

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 313
    :cond_10
    if-eqz v6, :cond_11

    .line 314
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 315
    :cond_11
    if-eqz v5, :cond_12

    .line 316
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    :cond_12
    if-eqz v3, :cond_c

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static extractCallPerfStatsXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 421
    sget-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/JingleStanzaSender;->CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractErrorXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 405
    sget-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->ERROR_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/JingleStanzaSender;->ERROR_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractJingleXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 389
    sget-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->JINGLE_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/JingleStanzaSender;->JINGLE_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractSessionXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 373
    sget-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/JingleStanzaSender;->SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractSystemInfoStatsXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 439
    sget-object v0, Lcom/google/android/talk/videochat/JingleStanzaSender;->SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/talk/videochat/JingleStanzaSender;->SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/talk/videochat/JingleStanzaSender;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 10
    .parameter "parentXml"
    .parameter "startTagPattern"
    .parameter "endTagPattern"

    .prologue
    const/4 v6, 0x0

    .line 473
    const/4 v4, -0x1

    .line 474
    .local v4, startIndex:I
    const/4 v0, -0x1

    .line 475
    .local v0, endIndex:I
    const/4 v3, 0x0

    .line 478
    .local v3, offset:I
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 479
    .local v5, startMatcher:Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 508
    :goto_0
    return-object v6

    .line 485
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 486
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 489
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 490
    .local v1, endMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 491
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 503
    :goto_1
    if-gt v0, v4, :cond_3

    .line 504
    const-string v7, "talk"

    const-string v8, "[JingleStanzaSender] extractXmlNode: failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    :cond_1
    const-string v7, "/>"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 495
    .local v2, index:I
    if-gez v2, :cond_2

    .line 496
    const-string v7, "talk"

    const-string v8, "[JingleStanzaSender] extractXmlNode: no close tag:"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v7, "talk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    :cond_2
    add-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 508
    .end local v2           #index:I
    :cond_3
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .locals 13
    .parameter "rawIqStanza"
    .parameter "extension"

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/talk/util/JingleAndGingleStanzaParser;->makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object v9, v0

    .line 332
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .local v9, iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    :goto_0
    :try_start_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, event:I
    const/4 v5, 0x1

    if-eq v7, v5, :cond_0

    .line 333
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, elementName:Ljava/lang/String;
    const/4 v5, 0x2

    if-ne v7, v5, :cond_2

    .line 336
    const-string v5, "iq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 337
    const-string v5, ""

    const-string v12, "from"

    invoke-interface {v10, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, from:Ljava/lang/String;
    const-string v5, ""

    const-string v12, "to"

    invoke-interface {v10, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, to:Ljava/lang/String;
    const-string v5, ""

    const-string v12, "id"

    invoke-interface {v10, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, id:Ljava/lang/String;
    const-string v5, ""

    const-string v12, "type"

    invoke-interface {v10, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, type:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 343
    const-string v5, "talk"

    const-string v12, "more than one <iq> found!"

    invoke-static {v5, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #id:Ljava/lang/String;
    .end local v2           #from:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    .end local v6           #elementName:Ljava/lang/String;
    :cond_0
    move-object v0, v9

    .line 357
    .end local v7           #event:I
    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    :goto_1
    return-object v0

    .line 347
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #from:Ljava/lang/String;
    .restart local v3       #to:Ljava/lang/String;
    .restart local v4       #type:Ljava/lang/String;
    .restart local v6       #elementName:Ljava/lang/String;
    .restart local v7       #event:I
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    new-instance v0, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v1           #id:Ljava/lang/String;
    .end local v2           #from:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    :goto_2
    move-object v9, v0

    .line 350
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    goto :goto_0

    .line 351
    .end local v6           #elementName:Ljava/lang/String;
    .end local v7           #event:I
    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    :catch_0
    move-exception v8

    .line 352
    .local v8, ioEx:Ljava/io/IOException;
    :goto_3
    const-string v5, "talk"

    const-string v12, "[JingleStanzaSender] parseRawIqXml caught "

    invoke-static {v5, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 353
    .end local v8           #ioEx:Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 354
    .local v11, parserEx:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const-string v5, "talk"

    const-string v12, "[JingleStanzaSender] parseRawIqXml caught "

    invoke-static {v5, v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 353
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .end local v11           #parserEx:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v11

    move-object v0, v9

    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    goto :goto_4

    .line 351
    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    :catch_3
    move-exception v8

    move-object v0, v9

    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    goto :goto_3

    .end local v0           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v6       #elementName:Ljava/lang/String;
    .restart local v7       #event:I
    .restart local v9       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    :cond_2
    move-object v0, v9

    .end local v9           #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    .restart local v0       #iqStanza:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    goto :goto_2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 512
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JingleStanzaSender] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public static queryJingleInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "username"

    .prologue
    .line 193
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, barejid:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "GET"

    const-string v6, "<query xmlns=\"google:jingleinfo\" />"

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/videochat/JingleStanzaSender;->sendXmppStanzaViaIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "queryJingleInfo: failed"

    invoke-static {v0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public static sendCallPerfStatsStanza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "username"
    .parameter "stanza"

    .prologue
    const/4 v0, 0x1

    .line 176
    invoke-static {p2, v0, v0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->buildIqStanza(Ljava/lang/String;ZZ)Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;

    move-result-object v7

    .line 179
    .local v7, iq:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    if-nez v7, :cond_1

    .line 180
    const-string v0, "sendCallPerfStatsStanza: not a valid IQ"

    invoke-static {v0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    .line 181
    invoke-static {p2}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getExtension()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/videochat/JingleStanzaSender;->sendXmppStanzaViaIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "sendCallPerfStatsStanza: failed"

    invoke-static {v0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    .line 188
    invoke-static {p2}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendCallSignalingMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "username"
    .parameter "stanza"

    .prologue
    .line 161
    invoke-static {p2}, Lcom/google/android/talk/videochat/JingleStanzaSender;->buildIqStanza(Ljava/lang/String;)Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;

    move-result-object v7

    .line 162
    .local v7, iq:Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;
    if-nez v7, :cond_1

    .line 163
    const-string v0, "sendSessionStanza: not a valid IQ"

    invoke-static {v0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    .line 164
    invoke-static {p2}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/android/talk/videochat/JingleStanzaSender$IQ;->getExtension()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/videochat/JingleStanzaSender;->sendXmppStanzaViaIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "sendSessionStanza: failed"

    invoke-static {v0}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    .line 171
    invoke-static {p2}, Lcom/google/android/talk/videochat/JingleStanzaSender;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static sendXmppStanzaViaIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "username"
    .parameter "id"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    const/4 v2, 0x0

    .line 133
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gtalkservice.intent.SEND_IQ_STANZA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "app"

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    const-string v3, "username"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v3, "attr:id"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "attr:from"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v3, "attr:to"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v3, "attr:type"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v3, "extension"

    invoke-virtual {v1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v2, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendXmppStanzaViaIntent: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unwrapJingleNodeWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "originalStanza"

    .prologue
    .line 451
    sget-object v4, Lcom/google/android/talk/videochat/JingleStanzaSender;->JINGLENODEWRAPPER_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 452
    .local v2, startMatcher:Ljava/util/regex/Matcher;
    sget-object v4, Lcom/google/android/talk/videochat/JingleStanzaSender;->JINGLENODEWRAPPER_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 453
    .local v0, endMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    const/16 v4, 0x3e

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 457
    .local v3, startTagEnd:I
    if-ltz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 458
    move-object v1, p0

    .line 459
    .local v1, old:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 468
    .end local v1           #old:Ljava/lang/String;
    .end local v3           #startTagEnd:I
    :cond_0
    :goto_0
    return-object p0

    .line 464
    .restart local v3       #startTagEnd:I
    :cond_1
    const-string v4, "talk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jinglenodewrapper found, but closing bracket not found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
