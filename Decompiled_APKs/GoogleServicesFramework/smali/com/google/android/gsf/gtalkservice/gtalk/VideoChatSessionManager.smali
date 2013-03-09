.class public Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;,
        Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$SessionPacketListener;
    }
.end annotation


# static fields
.field public static final CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

.field private mContext:Landroid/content/Context;

.field private mIncomingJingleInfoStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mIncomingSessionStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field public mJingleInfoListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mJingleInfoPacketListener:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;

.field private mLastJingleInfoStanza:Ljava/lang/String;

.field public mListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/ISessionStanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteSessionStanzaListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/ISessionStanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionPacketListener:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$SessionPacketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "<(\\s+)?(\\w+?:)?session\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?session(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "<(\\s+)?(\\w+?:)?callPerfStats\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?callPerfStats(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "<(\\s+)?(\\w+?:)?systemInfoStats\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 96
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?systemInfoStats(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    .line 107
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$SessionPacketListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$SessionPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mSessionPacketListener:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$SessionPacketListener;

    .line 114
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mJingleInfoListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    .line 117
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mJingleInfoPacketListener:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 143
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mIncomingSessionStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 155
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 156
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$2;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mIncomingJingleInfoStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 166
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->processJingleInfoPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->tryRemoveSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->notifyEachJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "sessionXml"

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 308
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$5;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$5;-><init>()V

    .line 318
    .local v0, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_0
    return-object v0

    .line 314
    .end local v0           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;-><init>()V

    .restart local v0       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move-object v1, v0

    .line 315
    check-cast v1, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;

    invoke-virtual {v1, p0}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->setSessionRawXml(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static extractCallPerfStatsXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 511
    sget-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractSessionXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 495
    sget-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractSystemInfoStatsXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 529
    sget-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

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

    .line 536
    const/4 v4, -0x1

    .line 537
    .local v4, startIndex:I
    const/4 v0, -0x1

    .line 538
    .local v0, endIndex:I
    const/4 v3, 0x0

    .line 541
    .local v3, offset:I
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 542
    .local v5, startMatcher:Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 571
    :goto_0
    return-object v6

    .line 548
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 549
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 552
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 553
    .local v1, endMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 554
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 566
    :goto_1
    if-gt v0, v4, :cond_3

    .line 567
    const-string v7, "GTalkService"

    const-string v8, "[VideoChatSessionMgr] extractXmlNode: failed"

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_1
    const-string v7, "/>"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 558
    .local v2, index:I
    if-gez v2, :cond_2

    .line 559
    const-string v7, "GTalkService"

    const-string v8, "[VideoChatSessionMgr] extractXmlNode: no close tag:"

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v7, "GTalkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_2
    add-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 571
    .end local v2           #index:I
    :cond_3
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 24
    .parameter "rawIqStanza"
    .parameter "sessionXml"

    .prologue
    .line 385
    const/4 v15, 0x0

    .line 388
    .local v15, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 389
    .local v3, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 390
    .local v17, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v21, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 393
    const/4 v13, 0x0

    .line 394
    .local v13, inErrorNode:Z
    const/4 v7, 0x0

    .line 396
    .local v7, error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, event:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v8, v0, :cond_1

    .line 397
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, elementName:Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v16

    .line 400
    .local v16, namespace:Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v8, v0, :cond_a

    .line 401
    const-string v21, "iq"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 402
    const-string v21, ""

    const-string v22, "from"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, from:Ljava/lang/String;
    const-string v21, ""

    const-string v22, "to"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 404
    .local v19, to:Ljava/lang/String;
    const-string v21, ""

    const-string v22, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 405
    .local v12, id:Ljava/lang/String;
    const-string v21, ""

    const-string v22, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 409
    .local v20, type:Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 410
    const-string v21, "GTalkService"

    const-string v22, "more than one <iq> found!"

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #bais:Ljava/io/ByteArrayInputStream;
    .end local v6           #elementName:Ljava/lang/String;
    .end local v7           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v8           #event:I
    .end local v11           #from:Ljava/lang/String;
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #inErrorNode:Z
    .end local v16           #namespace:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v19           #to:Ljava/lang/String;
    .end local v20           #type:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v21, v15

    .line 479
    :goto_2
    return-object v21

    .line 414
    .restart local v3       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #elementName:Ljava/lang/String;
    .restart local v7       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v8       #event:I
    .restart local v11       #from:Ljava/lang/String;
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #inErrorNode:Z
    .restart local v16       #namespace:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19       #to:Ljava/lang/String;
    .restart local v20       #type:Ljava/lang/String;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->createIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v15

    .line 417
    invoke-virtual {v15, v11}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v15, v12}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 421
    const-string v21, "set"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 422
    sget-object v21, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 473
    .end local v3           #bais:Ljava/io/ByteArrayInputStream;
    .end local v6           #elementName:Ljava/lang/String;
    .end local v7           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v8           #event:I
    .end local v11           #from:Ljava/lang/String;
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #inErrorNode:Z
    .end local v16           #namespace:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v19           #to:Ljava/lang/String;
    .end local v20           #type:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 474
    .local v14, ioEx:Ljava/io/IOException;
    const-string v21, "GTalkService"

    const-string v22, "[VideoChatSessionMgr] parseRawIqXml caught "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 423
    .end local v14           #ioEx:Ljava/io/IOException;
    .restart local v3       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #elementName:Ljava/lang/String;
    .restart local v7       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v8       #event:I
    .restart local v11       #from:Ljava/lang/String;
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #inErrorNode:Z
    .restart local v16       #namespace:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19       #to:Ljava/lang/String;
    .restart local v20       #type:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v21, "get"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 424
    sget-object v21, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 475
    .end local v3           #bais:Ljava/io/ByteArrayInputStream;
    .end local v6           #elementName:Ljava/lang/String;
    .end local v7           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v8           #event:I
    .end local v11           #from:Ljava/lang/String;
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #inErrorNode:Z
    .end local v16           #namespace:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v19           #to:Ljava/lang/String;
    .end local v20           #type:Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 476
    .local v18, parserEx:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v21, "GTalkService"

    const-string v22, "[VideoChatSessionMgr] parseRawIqXml caught "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 425
    .end local v18           #parserEx:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #elementName:Ljava/lang/String;
    .restart local v7       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v8       #event:I
    .restart local v11       #from:Ljava/lang/String;
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #inErrorNode:Z
    .restart local v16       #namespace:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19       #to:Ljava/lang/String;
    .restart local v20       #type:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v21, "result"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 426
    sget-object v21, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto/16 :goto_0

    .line 427
    :cond_5
    const-string v21, "error"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 428
    sget-object v21, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto/16 :goto_0

    .line 430
    :cond_6
    const-string v21, "GTalkService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseRawIqXml: BAD IQ type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 433
    .end local v11           #from:Ljava/lang/String;
    .end local v12           #id:Ljava/lang/String;
    .end local v19           #to:Ljava/lang/String;
    .end local v20           #type:Ljava/lang/String;
    :cond_7
    const-string v21, "error"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 434
    const-string v21, ""

    const-string v22, "code"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, codeStr:Ljava/lang/String;
    const-string v21, ""

    const-string v22, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v20

    .line 436
    .restart local v20       #type:Ljava/lang/String;
    const/4 v4, 0x0

    .line 439
    .local v4, code:I
    :try_start_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 440
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    .line 446
    :cond_8
    :goto_3
    :try_start_4
    new-instance v7, Lorg/jivesoftware/smack/packet/XMPPError;

    .end local v7           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-direct {v7}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>()V

    .line 447
    .restart local v7       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {v7, v4}, Lorg/jivesoftware/smack/packet/XMPPError;->setCode(I)V

    .line 448
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smack/packet/XMPPError;->setType(Ljava/lang/String;)V

    .line 449
    const/4 v13, 0x1

    .line 450
    goto/16 :goto_0

    .line 442
    :catch_2
    move-exception v9

    .line 443
    .local v9, ex:Ljava/lang/NumberFormatException;
    const-string v21, "GTalkService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseRawIqXml: caught "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 452
    .end local v4           #code:I
    .end local v5           #codeStr:Ljava/lang/String;
    .end local v9           #ex:Ljava/lang/NumberFormatException;
    .end local v20           #type:Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_0

    if-eqz v7, :cond_0

    .line 454
    :try_start_5
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v6, v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v10

    .line 456
    .local v10, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-virtual {v7, v10}, Lorg/jivesoftware/smack/packet/XMPPError;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 457
    .end local v10           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    :catch_3
    move-exception v9

    .line 458
    .local v9, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v21, "GTalkService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parseRawIqXml: caught "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    .end local v9           #ex:Ljava/lang/Exception;
    :cond_a
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v8, v0, :cond_0

    .line 463
    const-string v21, "error"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 464
    if-eqz v15, :cond_b

    .line 465
    invoke-virtual {v15, v7}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 469
    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 467
    :cond_b
    const-string v21, "GTalkService"

    const-string v22, "parseRawIqXml: found Error node before IQ"

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 771
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VideoChatSessionMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method private notifyEachJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z
    .locals 8
    .parameter "listener"
    .parameter "jingleInfo"

    .prologue
    const/4 v4, 0x0

    .line 746
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->getAccountId()J

    move-result-wide v2

    .line 747
    .local v2, listenerAccountId:J
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    .line 767
    .end local v2           #listenerAccountId:J
    :goto_0
    return v4

    .line 751
    .restart local v2       #listenerAccountId:J
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->onStanzaReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    const/4 v4, 0x1

    goto :goto_0

    .line 753
    .end local v2           #listenerAccountId:J
    :catch_0
    move-exception v0

    .line 754
    .local v0, ex:Landroid/os/RemoteException;
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VideoChatSessionMgr] notifyEachJingleInfoListener caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", removing listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 759
    :try_start_2
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 760
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 761
    :catch_1
    move-exception v1

    .line 762
    .local v1, ex1:Ljava/lang/Exception;
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove JingleInfoStanzaListener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyIncomingSessionStanza(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 10
    .parameter "fromJid"
    .parameter "iqStanza"

    .prologue
    const/4 v2, 0x0

    .line 584
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v9

    .line 586
    .local v9, messageXml:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v3, "voice.google.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const-string v0, "GTalkService"

    const-string v2, "[VideoChatSessionMgr] dropping incoming google voice call"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$6;

    invoke-direct {v4, p0, p1, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$6;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v8

    .line 613
    .local v8, handled:Z
    if-nez v8, :cond_0

    .line 614
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.android.videochat.RECEIVED_MESSAGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "from"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string v0, "accountId"

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 619
    const-string v0, "message"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v0, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyIncomingStanza: no listener, send intent broadcast "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private notifyResponse(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "fromJid"
    .parameter "original"
    .parameter "response"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$7;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    .line 657
    return-void
.end method

.method public static parseRawIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "rawIqStanza"

    .prologue
    .line 335
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "GTalkService"

    const-string v1, "[VideoChatSessionMgr] parseRawIqXml: invalid xml!"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->extractSessionXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseRawIqStanzaWithCallPerfStats(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 7
    .parameter "rawIqStanza"

    .prologue
    const/4 v4, 0x0

    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    const-string v5, "GTalkService"

    const-string v6, "[VideoChatSessionMgr] parseRawIqXml: invalid xml!"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_0
    return-object v4

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->extractCallPerfStatsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, callPerfStatsXml:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->extractSessionXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, sessionXml:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_2
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->extractSystemInfoStatsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, systemInfoStatsXml:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 378
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    goto :goto_0
.end method

.method private processJingleInfoPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 724
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    .line 726
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 727
    const-string v1, "processJingleInfoPacket: "

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mJingleInfoListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$9;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$9;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v0

    .line 738
    .local v0, handled:Z
    if-nez v0, :cond_1

    .line 739
    const-string v1, "processJingleInfoPacket: cannot find listener, drop packet"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 741
    :cond_1
    return-void
.end method

.method private tryRemoveSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    monitor-exit v2

    .line 226
    :goto_0
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRemoveSessionStanzaListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addRemoteJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 665
    if-nez p1, :cond_0

    .line 684
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 671
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 672
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

    .line 673
    .local v2, rl:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 674
    monitor-exit v4

    goto :goto_0

    .line 683
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #rl:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 677
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 681
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->notifyEachJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z

    .line 683
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public addRemoteSessionListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 195
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 196
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/ISessionStanzaListener;

    .line 197
    .local v2, rl:Lcom/google/android/gtalkservice/ISessionStanzaListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 198
    monitor-exit v4

    goto :goto_0

    .line 202
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #rl:Lcom/google/android/gtalkservice/ISessionStanzaListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 201
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V
    .locals 0
    .parameter "context"
    .parameter "connectionContext"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    .line 171
    return-void
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mSessionPacketListener:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$SessionPacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mIncomingSessionStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mJingleInfoPacketListener:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$JingleInfoPacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mIncomingJingleInfoStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    goto :goto_0
.end method

.method processIncomingSessionPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 576
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    .end local p1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->notifyIncomingSessionStanza(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;)V

    .line 577
    return-void
.end method

.method processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 1
    .parameter "original"
    .parameter "response"

    .prologue
    .line 580
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->notifyResponse(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V

    .line 581
    return-void
.end method

.method public queryJingleInfo()V
    .locals 5

    .prologue
    .line 700
    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;-><init>()V

    .line 702
    .local v2, query:Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    .line 703
    .local v1, connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 704
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->setFrom(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->setTo(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->makeQuery()V

    .line 712
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 714
    .local v0, conn:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v3

    new-instance v4, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$8;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$8;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z

    .line 720
    return-void
.end method

.method public removeRemoteJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 687
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 689
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 690
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

    .line 691
    .local v2, rl:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 692
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 693
    monitor-exit v4

    .line 697
    .end local v2           #rl:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    :goto_0
    return-void

    .line 696
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeRemoteSessionListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 206
    invoke-interface {p1}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 208
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/ISessionStanzaListener;

    .line 210
    .local v2, rl:Lcom/google/android/gtalkservice/ISessionStanzaListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 211
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v4

    .line 216
    .end local v2           #rl:Lcom/google/android/gtalkservice/ISessionStanzaListener;
    :goto_0
    return-void

    .line 215
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public sendCallPerfStatsStanza(Ljava/lang/String;)V
    .locals 5
    .parameter "callPerfStatsStanza"

    .prologue
    .line 273
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->parseRawIqStanzaWithCallPerfStats(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 275
    .local v0, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    if-nez v0, :cond_1

    .line 276
    const-string v2, "sendCallPerfStatsStanza: stanza is not an IQ!"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    .line 283
    .local v1, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_0

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v2

    new-instance v3, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$4;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$4;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    goto :goto_0
.end method

.method public sendSessionStanza(Ljava/lang/String;)V
    .locals 5
    .parameter "stanza"

    .prologue
    .line 229
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->parseRawIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 231
    .local v1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    if-nez v1, :cond_0

    .line 232
    const-string v3, "sendSessionStanza: stanza is not an IQ!"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 233
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v0

    .line 243
    .local v0, conn:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    .line 244
    .local v2, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v2, v3, :cond_2

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v3

    new-instance v4, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$3;

    invoke-direct {v4, p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$3;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lorg/jivesoftware/smack/packet/IQ;)V

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 268
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    goto :goto_0
.end method
