.class public Lcom/htc/android/mail/eassvc/mail/MailSearcher;
.super Ljava/lang/Object;
.source "MailSearcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/mail/MailSearcher$1;,
        Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final INSERT_DB_THRESHOLD:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EAS_MailSearcher"


# instance fields
.field private mCancelSearch:Z

.field private mContext:Landroid/content/Context;

.field private mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

.field private mHttpPost:Lorg/apache/http/client/methods/HttpPost;

.field private mLoginCredential:Ljava/lang/String;

.field private mSearchKey:Ljava/lang/String;

.field private mailboxMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mm:Lcom/htc/android/mail/eassvc/mail/MailManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/SyncManager;)V
    .locals 1
    .parameter "context"
    .parameter "syncMgr"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mailboxMap:Ljava/util/HashMap;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mCancelSearch:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 58
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private createHttpPost(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 7
    .parameter "syncSources"
    .parameter "syncCmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 601
    .local v0, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const-string v3, "https"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Microsoft-Server-ActiveSync?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "User="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DeviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DeviceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, targetURL:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 610
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v3, "Content-Type"

    const-string v4, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v3, "MS-ASProtocolVersion"

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v3, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policyKey:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 614
    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    const-wide/high16 v5, 0x402c

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 615
    const-string v3, "X-MS-PolicyKey"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    :goto_1
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mLoginCredential:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-object v1

    .line 601
    .end local v1           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #targetURL:Ljava/lang/String;
    :cond_1
    const-string v3, "http"

    goto/16 :goto_0

    .line 618
    .restart local v1       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #targetURL:Ljava/lang/String;
    :cond_2
    const-string v3, "X-MS-PolicyKey"

    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policyKey:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createMailSearchWBXMLOutput(Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;IIZ)[B
    .locals 16
    .parameter "searchPara"
    .parameter "from"
    .parameter "to"
    .parameter "rebuild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v8, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;

    invoke-direct {v8}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;-><init>()V

    .line 98
    .local v8, serializer:Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;
    const/16 v12, 0x11

    sget-object v13, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_AIR_SYNC_BASE_TBL:[Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 99
    const/4 v12, 0x0

    sget-object v13, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SYNC_TBL:[Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 100
    const/16 v12, 0xf

    sget-object v13, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SEARCH_TBL:[Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 101
    const/4 v12, 0x2

    sget-object v13, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_EMAIL_TBL:[Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x0

    invoke-virtual {v8, v2, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 105
    const-string v12, "UTF-8"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    const/4 v12, 0x0

    const-string v13, "Search"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const/4 v12, 0x0

    const-string v13, "Store"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const/4 v12, 0x0

    const-string v13, "Name"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string v12, "Mailbox"

    invoke-virtual {v8, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const/4 v12, 0x0

    const-string v13, "Name"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    const/4 v12, 0x0

    const-string v13, "Query"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    if-eqz v12, :cond_7

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 117
    const/4 v4, 0x0

    .local v4, i:I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, querySize:I
    :goto_0
    if-ge v4, v7, :cond_7

    .line 119
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;

    .line 121
    .local v6, queryElement:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;
    iget v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->queryCondition:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 122
    const/4 v12, 0x0

    const-string v13, "And"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    :goto_1
    const/4 v12, 0x0

    const-string v13, "Class"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const-string v12, "Email"

    invoke-virtual {v8, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const/4 v12, 0x0

    const-string v13, "Class"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->collectionId:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 134
    const/4 v12, 0x0

    const-string v13, "CollectionId"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->collectionId:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const/4 v12, 0x0

    const-string v13, "CollectionId"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    :cond_0
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateGreaterThan:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 141
    const/4 v12, 0x0

    const-string v13, "GreaterThan"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const/4 v12, 0x0

    const-string v13, "DateReceived"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const/4 v12, 0x0

    const-string v13, "DateReceived"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const/4 v12, 0x0

    const-string v13, "Value"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateGreaterThan:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const/4 v12, 0x0

    const-string v13, "Value"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const/4 v12, 0x0

    const-string v13, "GreaterThan"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    :cond_1
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateLessThan:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 152
    const/4 v12, 0x0

    const-string v13, "LessThan"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const/4 v12, 0x0

    const-string v13, "DateReceived"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    const/4 v12, 0x0

    const-string v13, "DateReceived"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    const/4 v12, 0x0

    const-string v13, "Value"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateLessThan:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const/4 v12, 0x0

    const-string v13, "Value"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const/4 v12, 0x0

    const-string v13, "LessThan"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    :cond_2
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->FreeText:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 163
    const/4 v12, 0x0

    const-string v13, "FreeText"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->FreeText:Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 166
    .local v11, tmpQuery:[B
    array-length v5, v11

    .line 167
    .local v5, iSize:I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 168
    .local v3, finalQuery:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, t:I
    :goto_2
    if-ge v10, v5, :cond_4

    .line 169
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-byte v13, v11, v10

    and-int/lit16 v13, v13, 0xff

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 124
    .end local v3           #finalQuery:Ljava/lang/String;
    .end local v5           #iSize:I
    .end local v10           #t:I
    .end local v11           #tmpQuery:[B
    :cond_3
    const/4 v12, 0x0

    const-string v13, "Or"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 172
    .restart local v3       #finalQuery:Ljava/lang/String;
    .restart local v5       #iSize:I
    .restart local v10       #t:I
    .restart local v11       #tmpQuery:[B
    :cond_4
    invoke-virtual {v8, v3}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const/4 v12, 0x0

    const-string v13, "FreeText"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-object v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->FreeText:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mSearchKey:Ljava/lang/String;

    .line 178
    .end local v3           #finalQuery:Ljava/lang/String;
    .end local v5           #iSize:I
    .end local v10           #t:I
    .end local v11           #tmpQuery:[B
    :cond_5
    iget v12, v6, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->queryCondition:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 179
    const/4 v12, 0x0

    const-string v13, "And"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 181
    :cond_6
    const/4 v12, 0x0

    const-string v13, "Or"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 185
    .end local v4           #i:I
    .end local v6           #queryElement:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;
    .end local v7           #querySize:I
    :cond_7
    const/4 v12, 0x0

    const-string v13, "Query"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const/4 v12, 0x0

    const-string v13, "Options"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    if-eqz p4, :cond_8

    .line 190
    const/4 v12, 0x0

    const-string v13, "RebuildResults"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const/4 v12, 0x0

    const-string v13, "RebuildResults"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    :cond_8
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->includeSubFolder:Z

    if-eqz v12, :cond_9

    .line 195
    const/4 v12, 0x0

    const-string v13, "DeepTraversal"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const/4 v12, 0x0

    const-string v13, "DeepTraversal"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    :cond_9
    move/from16 v0, p3

    move/from16 v1, p2

    if-lt v0, v1, :cond_b

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, strRange:Ljava/lang/String;
    sget-boolean v12, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "request range: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 202
    :cond_a
    const/4 v12, 0x0

    const-string v13, "Range"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    invoke-virtual {v8, v9}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    const/4 v12, 0x0

    const-string v13, "Range"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    .end local v9           #strRange:Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    const-string v13, "BodyPreference"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const/4 v12, 0x0

    const-string v13, "Type"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    const-string v12, "2"

    invoke-virtual {v8, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const/4 v12, 0x0

    const-string v13, "Type"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const/4 v12, 0x0

    const-string v13, "TruncationSize"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    const-string v12, "0"

    invoke-virtual {v8, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const/4 v12, 0x0

    const-string v13, "TruncationSize"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const/4 v12, 0x0

    const-string v13, "BodyPreference"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    const/4 v12, 0x0

    const-string v13, "MIMESupport"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    const-string v12, "0"

    invoke-virtual {v8, v12}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    const/4 v12, 0x0

    const-string v13, "MIMESupport"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    const/4 v12, 0x0

    const-string v13, "Options"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    const/4 v12, 0x0

    const-string v13, "Store"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const/4 v12, 0x0

    const-string v13, "Search"

    invoke-virtual {v8, v12, v13}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    invoke-virtual {v8}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->endDocument()V

    .line 227
    invoke-virtual {v8}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->flush()V

    .line 228
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    return-object v12
.end method

.method private deleteSearchMoreRecord()V
    .locals 6

    .prologue
    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " _uid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, where:Ljava/lang/StringBuilder;
    sget v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->SearchServerMailAccountId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, strSearchServerMailAccountId:Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method private declared-synchronized doSearch(Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .locals 30
    .parameter "searchPara"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    sget-boolean v26, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v26, :cond_0

    const-string v26, "EAS_MailSearcher"

    const-string v27, "> doSearch"

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4028

    cmpg-double v26, v26, v28

    if-gez v26, :cond_2

    .line 475
    const-string v26, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    const-string v28, "EAS Protocol does not support search on server"

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const/16 v22, 0x0

    .line 595
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v22

    .line 482
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mailboxMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->clear()V

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->getMailBoxToMap()V

    .line 485
    const/4 v12, 0x0

    .line 486
    .local v12, inputStream:Ljava/io/InputStream;
    new-instance v22, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;

    invoke-direct/range {v22 .. v22}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;-><init>()V

    .line 490
    .local v22, searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rangeFrom:I

    .line 491
    .local v7, from:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->rangeTo:I

    move/from16 v25, v0

    .line 492
    .local v25, to:I
    const/16 v18, 0x1

    .line 493
    .local v18, rebuld:Z
    const/4 v5, 0x0

    .line 494
    .local v5, bSearchFlag:Z
    new-instance v17, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;-><init>(Lcom/htc/android/mail/eassvc/mail/MailSearcher;Lcom/htc/android/mail/eassvc/mail/MailSearcher$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v17, range:Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;
    move-object v13, v12

    .line 498
    .end local v12           #inputStream:Ljava/io/InputStream;
    .local v13, inputStream:Ljava/io/InputStream;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mCancelSearch:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 499
    const-string v26, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    const-string v28, "cancel Search #1"

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 500
    const/16 v22, 0x0

    .line 584
    .end local v22           #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    if-eqz v13, :cond_11

    .line 585
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 586
    const/4 v12, 0x0

    .line 588
    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v6

    .line 590
    .local v6, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 471
    .end local v5           #bSearchFlag:Z
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #from:I
    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v17           #range:Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;
    .end local v18           #rebuld:Z
    .end local v25           #to:I
    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26

    .line 503
    .restart local v5       #bSearchFlag:Z
    .restart local v7       #from:I
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v17       #range:Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;
    .restart local v18       #rebuld:Z
    .restart local v22       #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .restart local v25       #to:I
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v18

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->createMailSearchWBXMLOutput(Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;IIZ)[B

    move-result-object v19

    .line 504
    .local v19, reqData:[B
    new-instance v20, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 505
    .local v20, reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    const-string v27, "Search"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->createHttpPost(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v15, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    .line 511
    .local v15, mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    sget-boolean v26, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v26, :cond_4

    const-string v26, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    const-string v28, "> Search on server start"

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 512
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;J)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/core/SyncManager;->getHttpHost(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v24

    .line 514
    .local v24, targetHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 518
    .end local v24           #targetHost:Lorg/apache/http/HttpHost;
    .local v21, resp:Lorg/apache/http/HttpResponse;
    :goto_4
    sget-boolean v26, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v26, :cond_5

    const-string v26, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    const-string v28, "< Search on server finish"

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 520
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mCancelSearch:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 521
    const-string v26, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    const-string v28, "cancel Search #2"

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 522
    const/16 v22, 0x0

    .line 584
    .end local v22           #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    if-eqz v13, :cond_10

    .line 585
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 586
    const/4 v12, 0x0

    .line 588
    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 589
    :catch_1
    move-exception v6

    .line 590
    .restart local v6       #e:Ljava/lang/Exception;
    :goto_6
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 516
    .end local v6           #e:Ljava/lang/Exception;
    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v22       #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    :cond_6
    :try_start_a
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    goto :goto_4

    .line 525
    :cond_7
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    .line 526
    .local v23, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 527
    new-instance v26, Ljava/lang/Exception;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "HTTP Status: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 583
    .end local v15           #mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .end local v19           #reqData:[B
    .end local v20           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    .end local v23           #statusLine:Lorg/apache/http/StatusLine;
    :catchall_1
    move-exception v26

    move-object v12, v13

    .line 584
    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    :goto_7
    if-eqz v12, :cond_8

    .line 585
    :try_start_b
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 586
    const/4 v12, 0x0

    .line 588
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 583
    :goto_8
    :try_start_c
    throw v26
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 529
    .end local v12           #inputStream:Ljava/io/InputStream;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v15       #mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .restart local v19       #reqData:[B
    .restart local v20       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    .restart local v23       #statusLine:Lorg/apache/http/StatusLine;
    :cond_9
    :try_start_d
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->httpStatus:I

    .line 532
    const/4 v8, 0x0

    .line 533
    .local v8, gzipEncoding:Z
    const-string v26, "Content-Encoding"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    .line 534
    .local v10, headers:[Lorg/apache/http/Header;
    if-eqz v10, :cond_b

    array-length v0, v10

    move/from16 v26, v0

    if-lez v26, :cond_b

    .line 535
    move-object v4, v10

    .local v4, arr$:[Lorg/apache/http/Header;
    array-length v14, v4

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_9
    if-ge v11, v14, :cond_b

    aget-object v9, v4, v11

    .line 536
    .local v9, header:Lorg/apache/http/Header;
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    const-string v27, "gzip"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 537
    const/4 v8, 0x1

    .line 535
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 541
    .end local v4           #arr$:[Lorg/apache/http/Header;
    .end local v9           #header:Lorg/apache/http/Header;
    .end local v11           #i$:I
    .end local v14           #len$:I
    :cond_b
    if-eqz v8, :cond_d

    .line 542
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v26, Ljava/util/zip/GZIPInputStream;

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v27, 0x200

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v12, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 547
    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    :goto_a
    :try_start_e
    new-instance v16, Lcom/htc/android/mail/eassvc/core/WbxmlParser;

    invoke-direct/range {v16 .. v16}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;-><init>()V

    .line 548
    .local v16, parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    const/16 v26, 0x0

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SYNC_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 549
    const/16 v26, 0x2

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_EMAIL_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 550
    const/16 v26, 0x9

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_TASKS_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 551
    const/16 v26, 0x5

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_MOVE_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 552
    const/16 v26, 0x6

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_ITEM_ESTIMATE_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 553
    const/16 v26, 0x7

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_FOLDER_SYNC_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 554
    const/16 v26, 0x8

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_MEETING_RESP_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 555
    const/16 v26, 0x10

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_GAL_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 556
    const/16 v26, 0x11

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_AIR_SYNC_BASE_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 557
    const/16 v26, 0x14

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_ITEM_OPERATIONS_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 558
    const/16 v26, 0xf

    sget-object v27, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_SEARCH_TBL:[Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 559
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mCancelSearch:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 562
    const-string v26, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    const-string v28, "cancel Search #3"

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 563
    const/16 v22, 0x0

    .line 584
    .end local v22           #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    if-eqz v12, :cond_c

    .line 585
    :try_start_f
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 586
    const/4 v12, 0x0

    .line 588
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0

    .line 589
    :catch_2
    move-exception v6

    .line 590
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 544
    .end local v6           #e:Ljava/lang/Exception;
    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v16           #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v22       #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    :cond_d
    :try_start_11
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v26

    const/16 v27, 0x200

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v12, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_a

    .line 566
    .restart local v16       #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    :cond_e
    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->processSearchMailResponses(Lcom/htc/android/mail/eassvc/core/WbxmlParser;Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;)V

    .line 569
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->clear()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 580
    if-nez v5, :cond_12

    .line 584
    if-eqz v12, :cond_f

    .line 585
    :try_start_13
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 586
    const/4 v12, 0x0

    .line 588
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 594
    :goto_b
    :try_start_14
    sget-boolean v26, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v26, :cond_1

    const-string v26, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    const-string v28, "< doSearch"

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    .end local v8           #gzipEncoding:Z
    .end local v10           #headers:[Lorg/apache/http/Header;
    .end local v15           #mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .end local v16           #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    .end local v19           #reqData:[B
    .end local v20           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    .end local v23           #statusLine:Lorg/apache/http/StatusLine;
    :catch_3
    move-exception v6

    .line 590
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 589
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #gzipEncoding:Z
    .restart local v10       #headers:[Lorg/apache/http/Header;
    .restart local v15       #mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .restart local v16       #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    .restart local v19       #reqData:[B
    .restart local v20       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    .restart local v23       #statusLine:Lorg/apache/http/StatusLine;
    :catch_4
    move-exception v6

    .line 590
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_b

    .line 589
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #gzipEncoding:Z
    .end local v10           #headers:[Lorg/apache/http/Header;
    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v16           #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    .end local v22           #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .end local v23           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    :catch_5
    move-exception v6

    move-object v12, v13

    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v15           #mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .end local v19           #reqData:[B
    .end local v20           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    :catch_6
    move-exception v6

    move-object v12, v13

    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 583
    .restart local v8       #gzipEncoding:Z
    .restart local v10       #headers:[Lorg/apache/http/Header;
    .restart local v15       #mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .restart local v19       #reqData:[B
    .restart local v20       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    .restart local v22       #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .restart local v23       #statusLine:Lorg/apache/http/StatusLine;
    :catchall_2
    move-exception v26

    goto/16 :goto_7

    .end local v8           #gzipEncoding:Z
    .end local v10           #headers:[Lorg/apache/http/Header;
    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v22           #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .end local v23           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    :cond_10
    move-object v12, v13

    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_5

    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v15           #mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .end local v19           #reqData:[B
    .end local v20           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    :cond_11
    move-object v12, v13

    .end local v13           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_2

    .restart local v8       #gzipEncoding:Z
    .restart local v10       #headers:[Lorg/apache/http/Header;
    .restart local v15       #mailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .restart local v16       #parser:Lcom/htc/android/mail/eassvc/core/WbxmlParser;
    .restart local v19       #reqData:[B
    .restart local v20       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    .restart local v22       #searchResult:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .restart local v23       #statusLine:Lorg/apache/http/StatusLine;
    :cond_12
    move-object v13, v12

    .end local v12           #inputStream:Ljava/io/InputStream;
    .restart local v13       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private getMailBoxToMap()V
    .locals 11

    .prologue
    .line 788
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EAS_MailSearcher"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v2, "- getMailBoxToMap"

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 790
    :cond_0
    const/4 v6, 0x0

    .line 792
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "_account="

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    .local v10, where:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getAccountId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 795
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 796
    :cond_1
    const-string v0, "EAS_MailSearcher"

    const-string v1, "Can\'t retrieve mailbox info"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 810
    .end local v10           #where:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 813
    :cond_2
    return-void

    .line 801
    .restart local v10       #where:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    const-string v0, "_serverid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 802
    .local v9, mailboxSvrId:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 803
    .local v8, mailboxId:Ljava/lang/Long;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mailboxMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "EAS_MailSearcher"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMailBoxToMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 805
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 809
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 806
    .end local v8           #mailboxId:Ljava/lang/Long;
    .end local v9           #mailboxSvrId:Ljava/lang/String;
    .end local v10           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 807
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EAS_MailSearcher"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-static {v0, v1, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 809
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 810
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_5
    throw v0
.end method

.method private processMailAdd(Ljava/util/ArrayList;)V
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_2

    .line 627
    :cond_0
    const-string v18, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v19, v0

    const-string v20, "process mail add failed, parameter is null"

    invoke-static/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 724
    :cond_1
    :goto_0
    return-void

    .line 631
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v16, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 635
    .local v5, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v12, -0x1

    .line 636
    .local v12, index:I
    const/4 v4, -0x1

    .line 638
    .local v4, backReference:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/eassvc/common/EASEMail;

    .line 639
    .local v10, email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mailboxMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/EASEMail;->ClientId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 640
    .local v14, mailboxId:Ljava/lang/Long;
    if-nez v14, :cond_4

    .line 641
    const-string v18, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "process mail add, Can\'t retrieve mailboxId: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/EASEMail;->ClientId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 642
    new-instance v14, Ljava/lang/Long;

    .end local v14           #mailboxId:Ljava/lang/Long;
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 645
    .restart local v14       #mailboxId:Ljava/lang/Long;
    :cond_4
    new-instance v17, Lcom/htc/android/mail/eassvc/mail/MailItem;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/mail/MailItem;-><init>()V

    .line 646
    .local v17, pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->populatePIMItem(JLcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)V

    .line 651
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getMessagesCV()Landroid/content/ContentValues;

    move-result-object v6

    .line 652
    .local v6, cvMessages:Landroid/content/ContentValues;
    if-nez v6, :cond_5

    .line 653
    const-string v18, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v19, v0

    const-string v20, "retrieve cvMessages failed"

    invoke-static/range {v18 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 721
    .end local v6           #cvMessages:Landroid/content/ContentValues;
    .end local v10           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #mailboxId:Ljava/lang/Long;
    .end local v17           #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    :catch_0
    move-exception v9

    .line 722
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 657
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v6       #cvMessages:Landroid/content/ContentValues;
    .restart local v10       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v14       #mailboxId:Ljava/lang/Long;
    .restart local v17       #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    :cond_5
    :try_start_1
    const-string v18, "_collectionId"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/EASEMail;->ClientId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v18, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 660
    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 661
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v12, v12, 0x1

    .line 664
    move v4, v12

    .line 669
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getPartsBodyCV()Landroid/content/ContentValues;

    move-result-object v8

    .line 670
    .local v8, cvPartsMailBody:Landroid/content/ContentValues;
    if-nez v8, :cond_6

    .line 671
    const-string v18, "EAS_MailSearcher"

    const-string v19, "part content value is null"

    invoke-static/range {v18 .. v19}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 678
    :cond_6
    sget-object v18, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 679
    const-string v18, "_message"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 680
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "text/html"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 681
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 682
    const-string v18, "_mimetype"

    const-string v19, "text/html"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v18, "_text"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 685
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    add-int/lit8 v12, v12, 0x1

    .line 700
    :cond_7
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getAttachmentSize()I

    move-result v15

    .line 701
    .local v15, nAttachCount:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    if-ge v13, v15, :cond_3

    .line 702
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getPartsAttachCV(I)Landroid/content/ContentValues;

    move-result-object v7

    .line 703
    .local v7, cvPartsAttach:Landroid/content/ContentValues;
    if-nez v7, :cond_9

    .line 701
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 688
    .end local v7           #cvPartsAttach:Landroid/content/ContentValues;
    .end local v13           #j:I
    .end local v15           #nAttachCount:I
    :cond_8
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "text/plain"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 689
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 690
    const-string v18, "_text"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v5, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 692
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 707
    .restart local v7       #cvPartsAttach:Landroid/content/ContentValues;
    .restart local v13       #j:I
    .restart local v15       #nAttachCount:I
    :cond_9
    sget-object v18, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 708
    const-string v18, "_message"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 709
    invoke-virtual {v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 710
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 718
    .end local v6           #cvMessages:Landroid/content/ContentValues;
    .end local v7           #cvPartsAttach:Landroid/content/ContentValues;
    .end local v8           #cvPartsMailBody:Landroid/content/ContentValues;
    .end local v10           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .end local v13           #j:I
    .end local v14           #mailboxId:Ljava/lang/Long;
    .end local v15           #nAttachCount:I
    .end local v17           #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    :cond_a
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "mail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private processMailFlagCommand(Lcom/htc/android/mail/eassvc/core/WbxmlParser;)Ljava/lang/String;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 818
    .local v0, curTagName:Ljava/lang/String;
    const-string v2, "0"

    .line 819
    .local v2, flagStatus:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 820
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 821
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 832
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->next()I

    goto :goto_0

    .line 822
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 823
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 824
    const-string v3, "Flag"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    :cond_2
    return-object v2

    .line 826
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 827
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, curTagVal:Ljava/lang/String;
    const-string v3, "FlagStatus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 829
    move-object v2, v1

    goto :goto_1
.end method

.method private processSearchMailResponses(Lcom/htc/android/mail/eassvc/core/WbxmlParser;Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;)V
    .locals 17
    .parameter "parser"
    .parameter "searchResult"

    .prologue
    .line 232
    sget-boolean v13, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v15, "> processSearchMailResp"

    invoke-static {v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 234
    :cond_0
    const/4 v12, 0x0

    .line 235
    .local v12, statusLabel:I
    const/4 v3, 0x0

    .line 236
    .local v3, bBody:Z
    const/4 v7, 0x0

    .line 237
    .local v7, email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    const/4 v1, 0x0

    .line 238
    .local v1, attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    const/4 v4, 0x0

    .line 239
    .local v4, curTagName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 240
    .local v5, curTagVal:Ljava/lang/String;
    const/4 v11, 0x0

    .line 241
    .local v11, nCount:I
    const/4 v10, 0x0

    .line 243
    .local v10, nCannotBeInsertCount:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail;>;"
    move-object v2, v1

    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .local v2, attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v8, v7

    .line 246
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .local v8, email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :goto_0
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v14

    if-eq v13, v14, :cond_4b

    .line 247
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mCancelSearch:Z

    if-eqz v13, :cond_1

    .line 248
    const-string v13, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v15, "cancel Search #4"

    invoke-static {v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .line 454
    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :goto_1
    return-void

    .line 252
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_1
    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 254
    const-string v13, "Result"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 255
    new-instance v7, Lcom/htc/android/mail/eassvc/common/EASEMail;

    invoke-direct {v7}, Lcom/htc/android/mail/eassvc/common/EASEMail;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    move-object v1, v2

    .line 426
    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    :goto_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v8, v7

    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto :goto_0

    .line 256
    :cond_2
    :try_start_2
    const-string v13, "Body"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 257
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto :goto_2

    .line 258
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_3
    const-string v13, "Attachment"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 259
    new-instance v1, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;-><init>()V

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto :goto_2

    .line 260
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_4
    const-string v13, "Search"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 261
    const/4 v12, 0x1

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto :goto_2

    .line 262
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_5
    const-string v13, "Store"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 263
    const/4 v12, 0x2

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto :goto_2

    .line 264
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_6
    const-string v13, "Flag"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4a

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextTag()I

    .line 266
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->processMailFlagCommand(Lcom/htc/android/mail/eassvc/core/WbxmlParser;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->FlagStatus:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto :goto_2

    .line 268
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_7
    const/4 v13, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v14

    if-ne v13, v14, :cond_e

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 270
    const-string v13, "Result"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 271
    iget-object v13, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    if-eqz v13, :cond_b

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->resultMailCanBeInsert(Lcom/htc/android/mail/eassvc/common/EASEMail;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 277
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x5

    if-lt v13, v14, :cond_8

    .line 278
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->processMailAdd(Ljava/util/ArrayList;)V

    .line 279
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 286
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 287
    const/4 v3, 0x0

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto :goto_2

    .line 281
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_8
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 448
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .line 449
    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .local v6, e:Ljava/lang/Exception;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    .end local v6           #e:Ljava/lang/Exception;
    :goto_5
    sget-boolean v13, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v13, :cond_9

    const-string v13, "EAS_MailSearcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Result mail can\'t be insert count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_9
    const-string v13, "EAS_MailSearcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "search mail response: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget v15, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->range:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 284
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 289
    :cond_b
    :try_start_3
    const-string v13, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v15, "result mail server id is null"

    invoke-static {v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 291
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_c
    const-string v13, "Attachment"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 292
    iget-object v13, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 293
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_d
    const-string v13, "Properties"

    if-ne v4, v13, :cond_4a

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 296
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_e
    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getEventType()I

    move-result v14

    if-ne v13, v14, :cond_4a

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 298
    const-string v13, "Status"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 299
    sget-boolean v13, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v13, :cond_f

    const-string v13, "EAS_MailSearcher"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "curTagName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", val: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 300
    :cond_f
    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 301
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->searchStatus:I

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 302
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_10
    const/4 v13, 0x2

    if-ne v12, v13, :cond_4a

    .line 303
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 305
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_11
    const-string v13, "Class"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 306
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_12
    const-string v13, "LongId"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 307
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 308
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_13
    const-string v13, "CollectionId"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 312
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->ClientId:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 313
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_14
    const-string v13, "To"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 314
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->decodeMailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->To:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 315
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_15
    const-string v13, "From"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 316
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->From:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 317
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_16
    const-string v13, "ReplyTo"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 318
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->ReplyTo:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 319
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_17
    const-string v13, "CC"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 320
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->decodeMailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->CC:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 321
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_18
    const-string v13, "Subject"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 322
    sget-boolean v13, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v13, :cond_19

    const-string v13, "EAS_MailSearcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curTagName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", val: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_19
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Subject:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 324
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_1a
    const-string v13, "DateReceived"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 325
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->DateReceived:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 326
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_1b
    const-string v13, "DisplayTo"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 327
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->DisplayTo:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 328
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_1c
    const-string v13, "ThreadTopic"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 329
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->ThreadTopic:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 330
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_1d
    const-string v13, "Importance"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 331
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Importance:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 332
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_1e
    const-string v13, "Read"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 333
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Read:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 334
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_1f
    const-string v13, "Type"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 335
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Type:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 336
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_20
    const-string v13, "EstimatedDataSize"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    const/4 v13, 0x1

    if-ne v3, v13, :cond_21

    .line 338
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->EstimatedDataSize:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 339
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_21
    const-string v13, "Truncated"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 340
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Truncated:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 341
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_22
    const-string v13, "Data"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 342
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Data:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 343
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_23
    const-string v13, "MessageClass"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 344
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->MessageClass:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 345
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_24
    const-string v13, "InternetCPID"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 346
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->InternetCPID:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 347
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_25
    const-string v13, "ContentClass"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 348
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->ContentClass:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 349
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_26
    const-string v13, "NativeBodyType"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 350
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->NaviteBodyType:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 351
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_27
    const-string v13, "Range"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 352
    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->range:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 353
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_28
    const-string v13, "Total"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 354
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 355
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_29
    const-string v13, "DisplayName"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 356
    iput-object v5, v2, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentDisplayName:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 357
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_2a
    const-string v13, "AttName"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2b

    const-string v13, "FileReference"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 359
    :cond_2b
    iput-object v5, v2, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentFileRef:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 360
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_2c
    const-string v13, "AttSize"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2d

    const-string v13, "EstimatedDataSize"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    if-nez v3, :cond_2e

    .line 363
    :cond_2d
    iput-object v5, v2, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentEstimatedDataSize:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 364
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_2e
    const-string v13, "AttMethod"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2f

    const-string v13, "Method"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 366
    :cond_2f
    iput-object v5, v2, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentMethod:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 367
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_30
    const-string v13, "IsInline"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    .line 368
    iput-object v5, v2, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 369
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_31
    const-string v13, "ContentId"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_32

    const-string v13, "AttOid"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 371
    :cond_32
    iput-object v5, v2, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentContentId:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 375
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_33
    const-string v13, "AllDayEvent"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 376
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->AllDayEvent:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 377
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_34
    const-string v13, "StartTime"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    .line 378
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->StartTime:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 379
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_35
    const-string v13, "DTStamp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    .line 380
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->DTStamp:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 381
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_36
    const-string v13, "EndTime"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    .line 382
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->EndTime:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 383
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_37
    const-string v13, "InstanceType"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 384
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->InstanceType:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 385
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_38
    const-string v13, "Location"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_39

    .line 386
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Location:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 387
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_39
    const-string v13, "Organizer"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 388
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Organizer:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 389
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_3a
    const-string v13, "RecurrenceId"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 390
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->RecurrenceId:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 391
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_3b
    const-string v13, "Reminder"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 392
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Reminder:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 393
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_3c
    const-string v13, "ResponseRequested"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 394
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->ResponseRequested:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 395
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_3d
    const-string v13, "Sensitivity"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e

    .line 396
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Sensitivity:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 397
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_3e
    const-string v13, "IntDBusyStatus"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 401
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->IntDBusyStatus:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 402
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_3f
    const-string v13, "TimeZone"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 403
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->TimeZone:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 404
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_40
    const-string v13, "GlobalObjId"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    .line 405
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->GlobalObjId:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 406
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_41
    const-string v13, "Category"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 407
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Category:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 408
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_42
    const-string v13, "Recurrence_Type"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 409
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Type:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 410
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_43
    const-string v13, "Recurrence_Occurrences"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_44

    .line 411
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Occurrences:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 412
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_44
    const-string v13, "Recurrence_Interval"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_45

    .line 413
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Interval:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 414
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_45
    const-string v13, "Recurrence_DayOfWeek"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_46

    .line 415
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_DayOfWeek:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 416
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_46
    const-string v13, "Recurrence_DayOfMonth"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 417
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_DayOfMonth:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 418
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_47
    const-string v13, "Recurrence_WeekOfMonth"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_48

    .line 419
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_WeekOfMonth:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 420
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_48
    const-string v13, "Recurrence_MonthOfYear"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 421
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_MonthOfYear:Ljava/lang/String;

    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 422
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_49
    const-string v13, "Recurrence_Until"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4a

    .line 423
    iput-object v5, v8, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Until:Ljava/lang/String;

    :cond_4a
    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_2

    .line 432
    .end local v1           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v7           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v2       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v8       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_4b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4c

    .line 433
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->processMailAdd(Ljava/util/ArrayList;)V

    .line 434
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4c
    move-object v1, v2

    .end local v2           #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v1       #attachInfo:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    move-object v7, v8

    .line 450
    .end local v8           #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v7       #email:Lcom/htc/android/mail/eassvc/common/EASEMail;
    goto/16 :goto_5

    .line 448
    :catch_1
    move-exception v6

    goto/16 :goto_4
.end method

.method private respRange(Ljava/lang/String;Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;)I
    .locals 5
    .parameter "strRange"
    .parameter "range"

    .prologue
    const/4 v2, 0x0

    .line 727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v2

    .line 732
    :cond_1
    :try_start_0
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, rangeAry:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 737
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p2, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->from:I

    .line 738
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p2, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->to:I

    .line 740
    iget v3, p2, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->to:I

    iget v2, p2, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->from:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    .end local v1           #rangeAry:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private resultMailCanBeInsert(Lcom/htc/android/mail/eassvc/common/EASEMail;)Z
    .locals 10
    .parameter "email"

    .prologue
    const/4 v6, 0x0

    .line 758
    const/4 v0, 0x1

    .line 759
    .local v0, bRet:Z
    if-nez p1, :cond_0

    .line 784
    :goto_0
    return v6

    .line 761
    :cond_0
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mSearchKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 762
    const-string v7, "EAS_MailSearcher"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v9, "search key is empty"

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->Subject:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->CC:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->From:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->To:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, data:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 775
    .local v5, lowSearchKey:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 776
    .local v4, index:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 777
    const/4 v0, 0x0

    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #data:Ljava/lang/String;
    .end local v4           #index:I
    .end local v5           #lowSearchKey:Ljava/lang/String;
    :goto_1
    move v6, v0

    .line 784
    goto :goto_0

    .line 779
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #data:Ljava/lang/String;
    .restart local v4       #index:I
    .restart local v5       #lowSearchKey:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 781
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #data:Ljava/lang/String;
    .end local v4           #index:I
    .end local v5           #lowSearchKey:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 782
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "EAS_MailSearcher"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-static {v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelSearchGlobalMail()V
    .locals 4

    .prologue
    .line 81
    sget-boolean v1, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EAS_MailSearcher"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v3, "cancel search global mail"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 82
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mCancelSearch:Z

    .line 83
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_1

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 91
    :cond_1
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public searchGlobalMail(Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;Z)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .locals 3
    .parameter "searchPara"
    .parameter "searchMore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;->queryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 72
    :cond_0
    const-string v0, "EAS_MailSearcher"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v2, "searchGlobalMail failed, parameter is null"

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mCancelSearch:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->doSearch(Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;

    move-result-object v0

    goto :goto_0
.end method

.method public setExchangeSyncSources(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 1
    .parameter "exSyncSource"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mExSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 63
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getManager()Lcom/htc/android/mail/eassvc/mail/MailManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mm:Lcom/htc/android/mail/eassvc/mail/MailManager;

    .line 64
    return-void
.end method

.method public setLoginCredential(Ljava/lang/String;)V
    .locals 0
    .parameter "loginCredential"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->mLoginCredential:Ljava/lang/String;

    .line 68
    return-void
.end method
