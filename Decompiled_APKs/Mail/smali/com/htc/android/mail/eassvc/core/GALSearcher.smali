.class public Lcom/htc/android/mail/eassvc/core/GALSearcher;
.super Ljava/lang/Object;
.source "GALSearcher.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "EAS_GALSearcher"


# instance fields
.field private MaxRange:I

.field private MinRange:I

.field private defaultSearchCount:I

.field private mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field private mContext:Landroid/content/Context;

.field private mHttpClient:Landroid/net/http/AndroidHttpClient;

.field private mLoginCredential:Ljava/lang/String;

.field private policyKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Z)V
    .locals 3
    .parameter "context"
    .parameter "exSyncSources"
    .parameter "fromComposeActivity"

    .prologue
    const/16 v2, 0x63

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MinRange:I

    .line 45
    iput v2, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MaxRange:I

    .line 47
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MaxRange:I

    iget v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MinRange:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->defaultSearchCount:I

    .line 57
    if-eqz p3, :cond_0

    .line 58
    iput v2, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MaxRange:I

    .line 62
    :goto_0
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MaxRange:I

    iget v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MinRange:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->defaultSearchCount:I

    .line 63
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->init(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 64
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policyKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->policyKey:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mContext:Landroid/content/Context;

    .line 66
    return-void

    .line 60
    :cond_0
    iput v2, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MaxRange:I

    goto :goto_0
.end method

.method private createGALSearch25WBXMLOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .parameter "name"
    .parameter "query"
    .parameter "range"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 75
    new-instance v4, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;

    invoke-direct {v4}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;-><init>()V

    .line 77
    .local v4, serializer:Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;
    const/16 v6, 0xf

    sget-object v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SEARCH_TBL:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v4, v0, v8}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 83
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6, v8}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    const-string v6, "Search"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string v6, "Store"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v6, "Name"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    invoke-virtual {v4, p1}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v6, "Name"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const-string v6, "Query"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v6, "UTF-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 96
    .local v5, tmpQuery:[B
    array-length v3, v5

    .line 97
    .local v3, iSize:I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 98
    .local v1, finalQuery:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v5, v2

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v4, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string v6, "Query"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string v6, "Options"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v6, "Range"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    invoke-virtual {v4, p3}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string v6, "Range"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string v6, "Options"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string v6, "Store"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string v6, "Search"

    invoke-virtual {v4, v8, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endDocument()V

    .line 115
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->flush()V

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 5
    .parameter "syncCmd"
    .parameter "strProtocal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-boolean v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "https"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Microsoft-Server-ActiveSync?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "User="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DeviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DeviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, targetURL:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "Content-Type"

    const-string v3, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "MS-ASProtocolVersion"

    invoke-virtual {v0, v2, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->policyKey:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 344
    const-string v2, "X-MS-PolicyKey"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_1
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mLoginCredential:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-object v0

    .line 323
    .end local v0           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v1           #targetURL:Ljava/lang/String;
    :cond_0
    const-string v2, "http"

    goto/16 :goto_0

    .line 346
    .restart local v0       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #targetURL:Ljava/lang/String;
    :cond_1
    const-string v2, "X-MS-PolicyKey"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->policyKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized doSearch(Ljava/lang/String;II)Lcom/htc/android/pim/eas/EASGalSearchResult;
    .locals 20
    .parameter "strParam"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    new-instance v11, Lcom/htc/android/pim/eas/EASGalSearchResult;

    invoke-direct {v11}, Lcom/htc/android/pim/eas/EASGalSearchResult;-><init>()V

    .line 246
    .local v11, searchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;
    const-string v13, ""

    .line 247
    .local v13, strRange:Ljava/lang/String;
    const/4 v4, 0x0

    .line 249
    .local v4, inputStream:Ljava/io/InputStream;
    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v17, "%s-%s"

    const/4 v15, 0x2

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MinRange:I

    move/from16 v0, p2

    if-lt v0, v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MaxRange:I

    move/from16 v0, p2

    if-gt v0, v15, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_7

    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MinRange:I

    :goto_0
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v18, v19

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MaxRange:I

    move/from16 v19, v0

    move/from16 v0, p3

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MinRange:I

    move/from16 v19, v0

    move/from16 v0, p3

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->MaxRange:I

    move/from16 p3, v0

    .end local p3
    :cond_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v15

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 254
    :try_start_1
    const-string v15, "Search"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    .line 256
    .local v6, p:Lorg/apache/http/client/methods/HttpPost;
    sget-boolean v15, Lcom/htc/android/mail/eassvc/core/GALSearcher;->DEBUG:Z

    if-eqz v15, :cond_3

    const-string v15, "EAS_GALSearcher"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "doSearch(), GAL, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_3
    const-string v15, "GAL"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1, v13}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->createGALSearch25WBXMLOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 261
    .local v8, reqData:[B
    new-instance v9, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v9, v8}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 262
    .local v9, reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v6, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;J)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/eassvc/core/SyncManager;->getHttpHost(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v14

    .line 266
    .local v14, targetHost:Lorg/apache/http/HttpHost;
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v15

    invoke-virtual {v15, v14, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 271
    .end local v14           #targetHost:Lorg/apache/http/HttpHost;
    .local v10, resp:Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 272
    .local v12, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 274
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    .line 275
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0x1f4

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 276
    const/4 v15, -0x2

    iput v15, v11, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    .line 277
    new-instance v15, Ljava/lang/Exception;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HTTP Status: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    .end local v6           #p:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #reqData:[B
    .end local v9           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    .end local v12           #statusLine:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v2

    .line 293
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v3

    .line 295
    .local v3, errorCode:I
    const/16 v15, 0x204

    if-eq v3, v15, :cond_4

    const/16 v15, 0x205

    if-eq v3, v15, :cond_4

    const/16 v15, 0x207

    if-eq v3, v15, :cond_4

    const/16 v15, 0x206

    if-ne v3, v15, :cond_d

    .line 299
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1, v3, v2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->saveCertificateError(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 311
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 318
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #errorCode:I
    :goto_3
    monitor-exit p0

    return-object v11

    .restart local p3
    :cond_7
    move/from16 v15, p2

    .line 249
    goto/16 :goto_0

    .line 268
    .end local p3
    .restart local v6       #p:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #reqData:[B
    .restart local v9       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    :cond_8
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .restart local v10       #resp:Lorg/apache/http/HttpResponse;
    goto/16 :goto_1

    .line 280
    .restart local v12       #statusLine:Lorg/apache/http/StatusLine;
    :cond_9
    invoke-static {v12}, Lcom/htc/android/mail/eassvc/core/SyncManager;->getHttpStatusError(Lorg/apache/http/StatusLine;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v15

    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 309
    .end local v6           #p:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #reqData:[B
    .end local v9           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    .end local v12           #statusLine:Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v15

    .line 310
    if-eqz v4, :cond_a

    .line 311
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 309
    :goto_4
    :try_start_6
    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 244
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v11           #searchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;
    .end local v13           #strRange:Ljava/lang/String;
    :catchall_1
    move-exception v15

    monitor-exit p0

    throw v15

    .line 284
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v6       #p:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #reqData:[B
    .restart local v9       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v10       #resp:Lorg/apache/http/HttpResponse;
    .restart local v11       #searchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;
    .restart local v12       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v13       #strRange:Ljava/lang/String;
    :cond_b
    :try_start_7
    new-instance v7, Lcom/htc/android/mail/eassvc/core/WbxmlParser;

    invoke-direct {v7}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;-><init>()V

    .line 286
    .local v7, parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    const/16 v15, 0xf

    sget-object v16, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SEARCH_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 287
    const/16 v15, 0x10

    sget-object v16, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_GAL_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 288
    const/4 v15, 0x0

    invoke-virtual {v7, v4, v15}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->processSearchGALResponses(Lcom/htc/android/mail/eassvc/core/WbxmlParser;Lcom/htc/android/pim/eas/EASGalSearchResult;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 310
    if-eqz v4, :cond_c

    .line 311
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 313
    :catch_1
    move-exception v2

    .line 314
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 301
    .end local v6           #p:Lorg/apache/http/client/methods/HttpPost;
    .end local v7           #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    .end local v8           #reqData:[B
    .end local v9           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    .end local v12           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v3       #errorCode:I
    :cond_d
    const/16 v15, 0x1c1

    if-ne v3, v15, :cond_5

    .line 302
    :try_start_a
    new-instance v5, Landroid/content/Intent;

    const-string v15, "com.htc.android.mail.intent.folderUpdate"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v5, intent:Landroid/content/Intent;
    const-string v15, "accountName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v15, "accountId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 305
    const-string v15, "com.htc.android.mail"

    const-string v16, "com.htc.android.mail.eassvc.EASAppSvc"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 313
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #errorCode:I
    .end local v5           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 314
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 313
    .restart local v3       #errorCode:I
    :catch_3
    move-exception v2

    .line 314
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3
.end method

.method private getHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method private processSearchGALResponses(Lcom/htc/android/mail/eassvc/core/WbxmlParser;Lcom/htc/android/pim/eas/EASGalSearchResult;)V
    .locals 8
    .parameter "parser"
    .parameter "searchResult"

    .prologue
    .line 120
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/GALSearcher;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "EAS_GALSearcher"

    const-string v6, "> PSR()"

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 123
    .local v0, curTagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 125
    .local v1, curTagVal:Ljava/lang/String;
    const/4 v3, 0x0

    .line 127
    .local v3, galElement:Lcom/htc/android/pim/eas/EASGalElement;
    iget-object v5, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    :cond_1
    move-object v4, v3

    .line 131
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .local v4, galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :goto_0
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v6

    if-eq v5, v6, :cond_14

    .line 135
    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v5, "Properties"

    if-ne v0, v5, :cond_13

    .line 139
    new-instance v3, Lcom/htc/android/pim/eas/EASGalElement;

    invoke-direct {v3}, Lcom/htc/android/pim/eas/EASGalElement;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v3

    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto :goto_0

    .line 145
    :cond_2
    const/4 v5, 0x3

    :try_start_2
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 146
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v5, "Properties"

    if-ne v0, v5, :cond_13

    .line 149
    iget-object v5, v4, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 150
    iget-object v5, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto :goto_1

    .line 152
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_3
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/GALSearcher;->DEBUG:Z

    if-eqz v5, :cond_13

    const-string v5, "EAS_GALSearcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has null Email Address"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto :goto_1

    .line 160
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_4
    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v6

    if-ne v5, v6, :cond_13

    .line 161
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v5, "Status"

    if-ne v0, v5, :cond_6

    .line 164
    iget v5, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    if-gez v5, :cond_5

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto :goto_1

    .line 167
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_5
    iget v5, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    if-gez v5, :cond_13

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto :goto_1

    .line 173
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_6
    const-string v5, "DisplayName"

    if-ne v0, v5, :cond_7

    .line 174
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto :goto_1

    .line 177
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_7
    const-string v5, "Phone"

    if-ne v0, v5, :cond_8

    .line 178
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto :goto_1

    .line 181
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_8
    const-string v5, "Office"

    if-ne v0, v5, :cond_9

    .line 182
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->Office:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 185
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_9
    const-string v5, "Title"

    if-ne v0, v5, :cond_a

    .line 186
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->Title:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 189
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_a
    const-string v5, "Company"

    if-ne v0, v5, :cond_b

    .line 190
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->Company:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 193
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_b
    const-string v5, "Alias"

    if-ne v0, v5, :cond_c

    .line 194
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->Alias:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 197
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_c
    const-string v5, "FirstName"

    if-ne v0, v5, :cond_d

    .line 198
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->FirstName:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 201
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_d
    const-string v5, "LastName"

    if-ne v0, v5, :cond_e

    .line 202
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->LastName:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 205
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_e
    const-string v5, "HomePhone"

    if-ne v0, v5, :cond_f

    .line 206
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 209
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_f
    const-string v5, "MobilePhone"

    if-ne v0, v5, :cond_10

    .line 210
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 213
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_10
    const-string v5, "EmailAddress"

    if-ne v0, v5, :cond_11

    .line 214
    iput-object v1, v4, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 217
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_11
    const-string v5, "Range"

    if-ne v0, v5, :cond_12

    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .line 221
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_12
    const-string v5, "Total"

    if-ne v0, v5, :cond_13

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_13
    move-object v3, v4

    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    goto/16 :goto_1

    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :cond_14
    move-object v3, v4

    .line 233
    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :goto_2
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/GALSearcher;->DEBUG:Z

    if-eqz v5, :cond_15

    const-string v5, "EAS_GALSearcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "< PSR(), # = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_15
    return-void

    .line 229
    .end local v3           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .restart local v4       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 230
    .end local v4           #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #galElement:Lcom/htc/android/pim/eas/EASGalElement;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 229
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public init(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 2
    .parameter "exAccount"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 363
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mLoginCredential:Ljava/lang/String;

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mLoginCredential:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mLoginCredential:Ljava/lang/String;

    .line 372
    return-void

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mLoginCredential:Ljava/lang/String;

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 376
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 377
    return-void
.end method

.method public declared-synchronized searchGAL(Ljava/lang/String;)Lcom/htc/android/pim/eas/EASGalSearchResult;
    .locals 2
    .parameter "criteria"

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/GALSearcher;->defaultSearchCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->doSearch(Ljava/lang/String;II)Lcom/htc/android/pim/eas/EASGalSearchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
