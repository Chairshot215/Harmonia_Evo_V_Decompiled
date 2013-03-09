.class public Lcom/htc/android/mail/server/POP3Server;
.super Lcom/htc/android/mail/server/Server;
.source "POP3Server.java"


# static fields
.field private static final BASE64:I = 0x1

.field private static final ENCODE7bit:I = 0x3

.field private static final ERR:Ljava/lang/String; = "-ERR"

.field private static final OK:Ljava/lang/String; = "+OK"

.field private static final QT:I = 0x2

.field private static final STR_EOM:Lcom/htc/android/mail/ByteString; = null

.field private static final STR_EPT:Lcom/htc/android/mail/ByteString; = null

.field private static final STR_ERR:Lcom/htc/android/mail/ByteString; = null

.field private static final STR_OK:Lcom/htc/android/mail/ByteString; = null

.field private static final TAG:Ljava/lang/String; = "POP3Server"


# instance fields
.field comRun:Ljava/lang/Runtime;

.field private encodeType:I

.field private encodeTypeline:I

.field private endofMail:Z

.field private mAccount:Lcom/htc/android/mail/Account;

.field private final mConnectionTimeOut:I

.field private mContext:Landroid/content/Context;

.field private mDelUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/POP3Spec;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchTimeInMillis:J

.field private mIn:Ljava/io/BufferedInputStream;

.field private mInPort:I

.field private mInServer:Ljava/lang/String;

.field private mIndexToUidlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAbnormalListOrder:Z

.field private mIsExchangeServer:Z

.field private mLastUid:Ljava/lang/String;

.field private mMailNum:I

.field private mMailNumByAmouts:I

.field private mOut:Ljava/io/BufferedOutputStream;

.field private final mReadTimeOut:I

.field private mSocket:Ljava/net/Socket;

.field private mSslError:Lcom/htc/android/mail/ssl/MailSslError;

.field private mSyncResult:Lcom/htc/android/mail/server/Server$SyncResult;

.field private mTmpToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToDeleteNonExistMail:I

.field private mUidlToIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUseSSLin:I

.field private mX509Certificate:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/htc/android/mail/ByteString;

    const-string v1, "+OK"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    .line 91
    new-instance v0, Lcom/htc/android/mail/ByteString;

    const-string v1, "-ERR"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/server/POP3Server;->STR_ERR:Lcom/htc/android/mail/ByteString;

    .line 94
    new-instance v0, Lcom/htc/android/mail/ByteString;

    const-string v1, ".\r\n"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/server/POP3Server;->STR_EOM:Lcom/htc/android/mail/ByteString;

    .line 95
    new-instance v0, Lcom/htc/android/mail/ByteString;

    const-string v1, "\r\n"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/server/POP3Server;->STR_EPT:Lcom/htc/android/mail/ByteString;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x7530

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/htc/android/mail/server/Server;-><init>()V

    .line 105
    iput v0, p0, Lcom/htc/android/mail/server/POP3Server;->mConnectionTimeOut:I

    .line 106
    iput v0, p0, Lcom/htc/android/mail/server/POP3Server;->mReadTimeOut:I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mIndexToUidlMap:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mInServer:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Lcom/htc/android/mail/server/POP3Server;->mIsAbnormalListOrder:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/android/mail/server/POP3Server;->endofMail:Z

    .line 119
    iput v1, p0, Lcom/htc/android/mail/server/POP3Server;->encodeType:I

    .line 120
    iput v1, p0, Lcom/htc/android/mail/server/POP3Server;->encodeTypeline:I

    .line 122
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->comRun:Ljava/lang/Runtime;

    .line 123
    iput-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mSslError:Lcom/htc/android/mail/ssl/MailSslError;

    .line 124
    iput-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 125
    iput v1, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNumByAmouts:I

    .line 126
    iput v1, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNum:I

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchTimeInMillis:J

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mLastUid:Ljava/lang/String;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/server/POP3Server;->mToDeleteNonExistMail:I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mTmpToken:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/htc/android/mail/server/Server$SyncResult;

    invoke-direct {v0}, Lcom/htc/android/mail/server/Server$SyncResult;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSyncResult:Lcom/htc/android/mail/server/Server$SyncResult;

    .line 135
    iput-object p1, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    .line 138
    return-void
.end method

.method private checkAccount()V
    .locals 2

    .prologue
    .line 1843
    iget v0, p0, Lcom/htc/android/mail/server/POP3Server;->mUseSSLin:I

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getUseSSLin()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mInServer:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getInServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/mail/server/POP3Server;->mInPort:I

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getInPort()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1847
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    goto :goto_0
.end method

.method private clearPendingFetchMailRequest(Lcom/htc/android/mail/Mailbox;)V
    .locals 9
    .parameter "mailbox"

    .prologue
    .line 1361
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_accountId = \'%d\' AND _fromMailboxId = \'%d\' AND _request = \'%d\'"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1364
    .local v2, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 1366
    .local v0, cp:Landroid/content/IContentProvider;
    :try_start_0
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v2, v4}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    :goto_0
    return-void

    .line 1367
    :catch_0
    move-exception v1

    .line 1368
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "POP3Server"

    const-string v4, "catch exception"

    invoke-static {v3, v4, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private clearTmpTokenFile()V
    .locals 4

    .prologue
    .line 1976
    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mTmpToken:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1977
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mTmpToken:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1978
    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mTmpToken:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1979
    .local v2, tokenFile:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1980
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v1, tmpfile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1982
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1977
    .end local v1           #tmpfile:Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1987
    .end local v0           #i:I
    .end local v2           #tokenFile:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mTmpToken:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1988
    return-void
.end method

.method private final combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "seperator"
    .parameter "escape"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1880
    .local v0, fetchStr:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1881
    const-string v3, ""

    .line 1908
    :goto_0
    return-object v3

    .line 1885
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1886
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1887
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1888
    if-eqz p3, :cond_3

    .line 1889
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1897
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1898
    .restart local v2       #value:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1899
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    if-eqz p3, :cond_4

    .line 1901
    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1891
    .end local v1           #i:I
    :cond_3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1903
    .restart local v1       #i:I
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1908
    .end local v2           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x400

    const/16 v4, 0x7530

    .line 229
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "POP3Server"

    const-string v1, "enter connect"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getUseSSLin()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/server/POP3Server;->mUseSSLin:I

    .line 231
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getInServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mInServer:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getInPort()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/server/POP3Server;->mInPort:I

    .line 234
    iget v0, p0, Lcom/htc/android/mail/server/POP3Server;->mUseSSLin:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/android/mail/server/POP3Server;->mUseSSLin:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 235
    :cond_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    .line 236
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mInServer:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/mail/server/POP3Server;->mInPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 247
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mIn:Ljava/io/BufferedInputStream;

    .line 248
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    .line 249
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "POP3Server"

    const-string v1, "leave connect"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_2
    return-void

    .line 239
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/mail/util/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    .line 240
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mInServer:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/mail/server/POP3Server;->mInPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 242
    iput-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mSslError:Lcom/htc/android/mail/ssl/MailSslError;

    .line 243
    iput-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 244
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0
.end method

.method private enterRfc822Body(Ljava/util/List;)Z
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 979
    .local v4, header:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 980
    .local v6, line:Lcom/htc/android/mail/ByteString;
    const-string v3, "Message.msg"

    .line 981
    .local v3, filename:Ljava/lang/String;
    const/4 v8, 0x0

    .line 982
    .local v8, partialEndBoundary:Ljava/lang/String;
    const/4 v1, 0x0

    .line 983
    .local v1, endBoundary:Ljava/lang/String;
    const/4 v5, 0x0

    .line 984
    .local v5, headerEnd:Z
    const/4 v9, 0x0

    .line 985
    .local v9, result:Z
    const/4 v12, 0x0

    .line 989
    .local v12, type:Lcom/htc/android/mail/ByteString;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v6

    .line 990
    if-nez v6, :cond_1

    .line 991
    const/4 v13, 0x0

    .line 1082
    :goto_1
    return v13

    .line 993
    :cond_1
    new-instance v13, Lcom/htc/android/mail/ByteString;

    const-string v14, "\r\n"

    invoke-direct {v13, v14}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1003
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v14}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v14

    const-string v15, ".Mail"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "token"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v13 .. v17}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1006
    .local v11, tmpFilename:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v2, v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1008
    .local v2, f:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1009
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_3

    const-string v13, "POP3Server"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "## Read:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_3
    new-instance v13, Lcom/htc/android/mail/ByteString;

    const-string v14, "\r\n"

    invoke-direct {v13, v14}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1011
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_4

    const-string v13, "POP3Server"

    const-string v14, "enter body"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_4
    const-string v13, "\r\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 1014
    const/4 v5, 0x1

    .line 1045
    :cond_5
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_6

    const-string v13, "POP3Server"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "headerEnd:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_6
    if-eqz v5, :cond_8

    .line 1047
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1048
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_7

    const-string v13, "POP3Server"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@@ Read:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_7
    new-instance v13, Lcom/htc/android/mail/ByteString;

    const-string v14, ".\r\n"

    invoke-direct {v13, v14}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1050
    const/4 v9, 0x0

    .line 1051
    new-instance v13, Lcom/htc/android/mail/ByteString;

    const-string v14, ".\r\n"

    invoke-direct {v13, v14}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    :cond_8
    :goto_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    if-nez v9, :cond_9

    .line 1077
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v7, outputfile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .end local v7           #outputfile:Ljava/io/File;
    :cond_9
    move v13, v9

    .line 1082
    goto/16 :goto_1

    .line 996
    .end local v2           #f:Ljava/io/FileOutputStream;
    .end local v11           #tmpFilename:Ljava/lang/String;
    :cond_a
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "POP3Server"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rfc822 Header:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1018
    .restart local v2       #f:Ljava/io/FileOutputStream;
    .restart local v11       #tmpFilename:Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "content-type"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "multipart"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1019
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v12

    .line 1020
    invoke-virtual {v12}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\""

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1021
    .local v10, tmp:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_c

    .line 1022
    const-string v13, "="

    const/4 v14, 0x2

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v8, v13, v14

    .line 1023
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_c

    .line 1024
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "--"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1027
    :cond_c
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_d

    const-string v13, "POP3Server"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "### end boundary "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    .end local v10           #tmp:Ljava/lang/String;
    :cond_d
    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "subject:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1030
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_e

    const-string v13, "POP3Server"

    const-string v14, "found filename!"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_e
    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v3, v13, v14

    .line 1032
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_10

    .line 1033
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".msg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    :cond_f
    :goto_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1040
    if-eqz v12, :cond_2

    .line 1041
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1042
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1035
    :cond_10
    const-string v3, "noname.msg"

    goto :goto_5

    .line 1053
    :cond_11
    if-eqz v1, :cond_13

    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1054
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_12

    const-string v13, "POP3Server"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "end boundary got:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_12
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 1056
    new-instance v13, Lcom/htc/android/mail/ByteString;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Type: message/rfc822; name=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    new-instance v13, Lcom/htc/android/mail/ByteString;

    const-string v14, "\r\n"

    invoke-direct {v13, v14}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    new-instance v13, Lcom/htc/android/mail/ByteString;

    invoke-direct {v13, v11}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    const/4 v9, 0x1

    .line 1060
    goto/16 :goto_4

    .line 1061
    :cond_13
    if-nez v1, :cond_15

    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "--"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1062
    sget-boolean v13, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v13, :cond_14

    const-string v13, "POP3Server"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "met end boundary:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_14
    new-instance v13, Lcom/htc/android/mail/ByteString;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Type: message/rfc822; name=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    new-instance v13, Lcom/htc/android/mail/ByteString;

    const-string v14, "\r\n"

    invoke-direct {v13, v14}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v13, Lcom/htc/android/mail/ByteString;

    invoke-direct {v13, v11}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    const/4 v9, 0x1

    .line 1068
    goto/16 :goto_4

    .line 1070
    :cond_15
    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1076
    .end local v2           #f:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v13

    if-nez v9, :cond_16

    .line 1077
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1078
    .restart local v7       #outputfile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1076
    .end local v7           #outputfile:Ljava/io/File;
    :cond_16
    throw v13
.end method

.method private fetchAllInternal(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)J
    .locals 5
    .parameter "mailbox"
    .parameter "uidl"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 692
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 693
    :cond_0
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "POP3Server"

    const-string v4, "fetchAll fail.Maybe mail is not on server."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_1
    new-instance v3, Lcom/htc/android/mail/exception/MailNotFoundException;

    invoke-direct {v3}, Lcom/htc/android/mail/exception/MailNotFoundException;-><init>()V

    throw v3

    .line 697
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 698
    .local v0, index:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RETR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 699
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .line 700
    .local v2, r:Lcom/htc/android/mail/ByteString;
    if-eqz v2, :cond_3

    sget-object v3, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 701
    new-instance v3, Lcom/htc/android/mail/exception/MailNotFoundException;

    invoke-direct {v3}, Lcom/htc/android/mail/exception/MailNotFoundException;-><init>()V

    throw v3

    .line 703
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readResponse()Ljava/util/List;

    move-result-object v1

    .line 704
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/htc/android/mail/server/POP3Server;->processRETR(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;Ljava/util/List;I)J

    move-result-wide v3

    return-wide v3
.end method

.method private fetchHeader(Ljava/lang/String;)J
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 724
    .local v1, r:Lcom/htc/android/mail/ByteString;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 725
    new-instance v2, Lcom/htc/android/mail/exception/MailNotFoundException;

    invoke-direct {v2}, Lcom/htc/android/mail/exception/MailNotFoundException;-><init>()V

    throw v2

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readResponse()Ljava/util/List;

    move-result-object v0

    .line 729
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, v0}, Lcom/htc/android/mail/server/POP3Server;->processHeader(Ljava/util/List;)J

    move-result-wide v2

    return-wide v2
.end method

.method private fetchPartInternal(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)J
    .locals 6
    .parameter "mailbox"
    .parameter "uidl"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 733
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "POP3Server"

    const-string v5, "enter fetchPart"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/Account;->getSizeLimit(Landroid/content/Context;)I

    move-result v0

    .line 737
    .local v0, fetchSize:I
    iget-object v4, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 739
    .local v1, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit16 v5, v0, 0x400

    div-int/lit8 v5, v5, 0x4c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 740
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v3

    .line 741
    .local v3, r:Lcom/htc/android/mail/ByteString;
    if-eqz v3, :cond_1

    sget-object v4, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 742
    new-instance v4, Lcom/htc/android/mail/exception/MailNotFoundException;

    invoke-direct {v4}, Lcom/htc/android/mail/exception/MailNotFoundException;-><init>()V

    throw v4

    .line 745
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readResponse()Ljava/util/List;

    move-result-object v2

    .line 746
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/htc/android/mail/server/POP3Server;->processTOP(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;Ljava/util/List;I)J

    move-result-wide v4

    return-wide v4
.end method

.method private getMessageIdList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1865
    .local p1, mailMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1866
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1868
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1869
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailMessage;

    .line 1870
    .local v2, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-wide v4, v2, Lcom/htc/android/mail/MailMessage;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1871
    iget-wide v4, v2, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1868
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1874
    .end local v2           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_1
    return-object v1
.end method

.method private getPendingFetchMailMap(Lcom/htc/android/mail/Mailbox;)Ljava/util/HashMap;
    .locals 14
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1303
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 1304
    .local v0, cp:Landroid/content/IContentProvider;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1305
    .local v9, pendingFetchMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v8, notExistUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_accountId = \'%d\' AND _fromMailboxId = \'%d\' AND _request = \'%d\'"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v12}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget-wide v12, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x2

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1310
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1312
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_uid"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1314
    if-eqz v6, :cond_5

    .line 1316
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1317
    const-string v1, "_uid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1318
    .local v10, uid:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1320
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1321
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    .end local v10           #uid:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1329
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "POP3Server"

    const-string v2, "catch exception"

    invoke-static {v1, v2, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1331
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1332
    .end local v7           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1336
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1338
    :try_start_2
    const-string v1, ","

    const/4 v2, 0x1

    invoke-direct {p0, v8, v1, v2}, Lcom/htc/android/mail/server/POP3Server;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 1339
    .local v11, uidSeq:Ljava/lang/String;
    const-string v1, "_accountId = \'%d\' AND _fromMailboxId = \'%d\' AND _request = \'%d\' AND _uid in (%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-wide v12, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    aput-object v11, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1343
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1349
    .end local v11           #uidSeq:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v9

    .line 1323
    .restart local v10       #uid:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1331
    .end local v10           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1331
    :cond_4
    throw v1

    .line 1344
    :catch_1
    move-exception v7

    .line 1345
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v1, "POP3Server"

    const-string v2, "catch exception"

    invoke-static {v1, v2, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 1331
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_5
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1
.end method

.method private getServerReplyMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "response"

    .prologue
    .line 1997
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2003
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1998
    .restart local p1
    :cond_1
    const-string v0, "+OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1999
    const-string v0, "+OK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2000
    :cond_2
    const-string v0, "-ERR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2001
    const-string v0, "-ERR"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getShareKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "response"
    .parameter "password"

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 311
    const/16 v10, 0x3c

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 312
    .local v8, startPosition:I
    if-ne v8, v11, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-object v9

    .line 316
    :cond_1
    const/16 v10, 0x3e

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 317
    .local v1, endPosition:I
    if-eq v1, v11, :cond_0

    .line 321
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, seed:Ljava/lang/String;
    :try_start_0
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 324
    .local v5, md:Ljava/security/MessageDigest;
    sget-boolean v10, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "POP3Server"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "seed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_2
    sget-boolean v10, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "POP3Server"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "password: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 327
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 329
    .local v6, messageDigest:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 332
    .local v3, hexString:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v10, v6

    if-ge v4, v10, :cond_5

    .line 333
    aget-byte v10, v6, v4

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, hex:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 335
    const/16 v10, 0x30

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 337
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 339
    .end local v2           #hex:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto/16 :goto_0

    .line 340
    .end local v3           #hexString:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v6           #messageDigest:[B
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v10, "POP3Server"

    const-string v11, "catch NoSuchAlgorithmException"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private getUidList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1852
    .local p1, mailMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/MailMessage;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1853
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1855
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1856
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailMessage;

    .line 1857
    .local v2, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-object v4, v2, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1858
    iget-object v4, v2, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1861
    .end local v2           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_1
    return-object v1
.end method

.method private init()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 141
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "POP3Server"

    const-string v7, "enter init"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->connect()V

    .line 146
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->isStop()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 148
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v5

    .line 160
    .local v5, welcomeMsg:Lcom/htc/android/mail/ByteString;
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getUseSSLin()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 161
    const-string v6, "STLS"

    invoke-direct {p0, v6}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .line 163
    .local v2, r:Lcom/htc/android/mail/ByteString;
    sget-object v6, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 164
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->newTLSSocket()V

    .line 171
    .end local v2           #r:Lcom/htc/android/mail/ByteString;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    if-nez v6, :cond_8

    .line 172
    const-string v4, ""

    .line 173
    .local v4, userName:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 174
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x5c

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 176
    :cond_3
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 177
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "POP3Server"

    const-string v7, "Logging will be disabled totally in CRC build."

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USER "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .line 180
    .restart local v2       #r:Lcom/htc/android/mail/ByteString;
    invoke-direct {p0, v2}, Lcom/htc/android/mail/server/POP3Server;->processUSER(Lcom/htc/android/mail/ByteString;)V

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PASS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .line 184
    invoke-direct {p0, v2}, Lcom/htc/android/mail/server/POP3Server;->processPASS(Lcom/htc/android/mail/ByteString;)V

    .line 198
    .end local v4           #userName:Ljava/lang/String;
    :goto_0
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "POP3Server"

    const-string v7, "issue UIDL"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_5
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 201
    const-string v6, "UIDL"

    invoke-direct {p0, v6}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_6

    sget-object v6, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 204
    :cond_6
    if-eqz v2, :cond_b

    sget-object v6, Lcom/htc/android/mail/server/POP3Server;->STR_ERR:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 205
    new-instance v6, Lcom/htc/android/mail/exception/ServerReplyErrorException;

    invoke-virtual {v2}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/android/mail/server/POP3Server;->getServerReplyMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/android/mail/exception/ServerReplyErrorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 167
    new-instance v6, Lcom/htc/android/mail/exception/NoTLSSupportException;

    invoke-direct {v6}, Lcom/htc/android/mail/exception/NoTLSSupportException;-><init>()V

    throw v6

    .line 187
    .end local v2           #r:Lcom/htc/android/mail/ByteString;
    :cond_8
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v5}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/htc/android/mail/server/POP3Server;->getShareKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, shareKey:Ljava/lang/String;
    if-nez v3, :cond_9

    .line 190
    new-instance v6, Lcom/htc/android/mail/exception/NoSupportAPOPException;

    invoke-direct {v6}, Lcom/htc/android/mail/exception/NoSupportAPOPException;-><init>()V

    throw v6

    .line 192
    :cond_9
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "APOP %s %s"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, cmd:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .line 195
    .restart local v2       #r:Lcom/htc/android/mail/ByteString;
    invoke-direct {p0, v2}, Lcom/htc/android/mail/server/POP3Server;->processPASS(Lcom/htc/android/mail/ByteString;)V

    goto/16 :goto_0

    .line 209
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #shareKey:Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readResponse()Ljava/util/List;

    move-result-object v1

    .line 210
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, v1}, Lcom/htc/android/mail/server/POP3Server;->processUIDL(Ljava/util/List;)V

    .line 211
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 213
    iput v10, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    .line 214
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    :cond_b
    return-void
.end method

.method private insertPendingFetchMailRequest(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 10
    .parameter "mailbox"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/POP3Spec;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1385
    .local p2, pop3SpceListForFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/POP3Spec;>;"
    .local p3, pendingFetchMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v6, valuesArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/POP3Spec;

    .line 1387
    .local v3, spec:Lcom/htc/android/mail/POP3Spec;
    if-eqz v3, :cond_0

    .line 1388
    iget-object v7, v3, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1389
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1390
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "_accountId"

    iget-object v8, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1391
    const-string v7, "_request"

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    const-string v7, "_fromMailboxId"

    iget-wide v8, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1393
    const-string v7, "_uid"

    iget-object v8, v3, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1399
    .end local v3           #spec:Lcom/htc/android/mail/POP3Spec;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1400
    const/4 v7, 0x0

    new-array v7, v7, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    .line 1401
    .local v5, valuesArray:[Landroid/content/ContentValues;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 1403
    .local v0, cp:Landroid/content/IContentProvider;
    :try_start_0
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    invoke-interface {v0, v7, v5}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    .end local v0           #cp:Landroid/content/IContentProvider;
    .end local v5           #valuesArray:[Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 1404
    .restart local v0       #cp:Landroid/content/IContentProvider;
    .restart local v5       #valuesArray:[Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1405
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "POP3Server"

    const-string v8, "catch exception"

    invoke-static {v7, v8, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private isCompleteResponse(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v2, 0x0

    .line 1197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1198
    .local v1, size:I
    if-nez v1, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return v2

    .line 1203
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ByteString;

    .line 1204
    .local v0, r:Lcom/htc/android/mail/ByteString;
    sget-object v3, Lcom/htc/android/mail/server/POP3Server;->STR_EOM:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1208
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isFinishSyncPendingRequest()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 552
    const/4 v6, 0x0

    .line 554
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_accountId = \'%d\' AND _request in (\'%d\', \'%d\', \'%d\', \'%d\', \'%d\')"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id) as _total"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 559
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    const-string v0, "_total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 561
    .local v8, total:I
    if-nez v8, :cond_3

    .line 568
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v9

    .line 572
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #total:I
    :goto_0
    return v0

    .line 565
    :catch_0
    move-exception v7

    .line 566
    .local v7, re:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "POP3Server"

    const-string v1, "query pending_request table fail"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    .end local v7           #re:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v10

    .line 572
    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_2
    throw v0

    .restart local v3       #where:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method private isIncrease()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1273
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1274
    .local v1, size:I
    const/4 v7, 0x2

    if-ge v1, v7, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return v6

    .line 1279
    :cond_1
    :try_start_0
    const-string v7, "1"

    invoke-direct {p0, v7}, Lcom/htc/android/mail/server/POP3Server;->fetchHeader(Ljava/lang/String;)J

    move-result-wide v2

    .line 1280
    .local v2, t1:J
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/android/mail/server/POP3Server;->fetchHeader(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 1281
    .local v4, t2:J
    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    .line 1284
    const/4 v6, 0x0

    goto :goto_0

    .line 1286
    .end local v2           #t1:J
    .end local v4           #t2:J
    :catch_0
    move-exception v0

    .line 1287
    .local v0, e:Ljava/io/IOException;
    throw v0

    .line 1288
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1289
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "POP3Server"

    const-string v8, "catch exception"

    invoke-static {v7, v8, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private issue(Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    if-eqz p1, :cond_1

    .line 911
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "POP3Server"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->write(Ljava/lang/String;)V

    .line 914
    :cond_1
    return-void
.end method

.method private issue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"
    .parameter "logStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    if-eqz p1, :cond_1

    .line 903
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "POP3Server"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->write(Ljava/lang/String;)V

    .line 906
    :cond_1
    return-void
.end method

.method private makeToken(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v4, 0x1

    .line 1087
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v0

    .local v0, line:Lcom/htc/android/mail/ByteString;
    if-eqz v0, :cond_3

    .line 1088
    sget-object v1, Lcom/htc/android/mail/server/POP3Server;->STR_EPT:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1089
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/android/mail/server/POP3Server;->encodeTypeline:I

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/htc/android/mail/server/POP3Server;->encodeType:I

    if-ne v1, v4, :cond_1

    .line 1091
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->savingToken(Ljava/util/List;)V

    .line 1102
    :cond_1
    :goto_0
    sget-object v1, Lcom/htc/android/mail/server/POP3Server;->STR_EOM:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/android/mail/server/POP3Server;->endofMail:Z

    if-eqz v1, :cond_0

    .line 1103
    :cond_2
    iput-boolean v4, p0, Lcom/htc/android/mail/server/POP3Server;->endofMail:Z

    .line 1107
    :cond_3
    return-void

    .line 1094
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-virtual {v0}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content-transfer-encoding: base64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    iput v4, p0, Lcom/htc/android/mail/server/POP3Server;->encodeType:I

    .line 1097
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/server/POP3Server;->encodeTypeline:I

    .line 1098
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_1

    .line 1099
    const-string v1, "POP3Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encode type and line"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/server/POP3Server;->encodeType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/server/POP3Server;->encodeTypeline:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private newTLSSocket()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/htc/android/mail/util/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mInServer:Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/mail/server/POP3Server;->mInPort:I

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    .line 255
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mIn:Ljava/io/BufferedInputStream;

    .line 256
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    .line 258
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/mail/server/Server;->socketState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method private final processCAPA(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v3, 0x0

    .line 1165
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->isCompleteResponse(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1166
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "POP3Server"

    const-string v5, "response is not validate"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :cond_0
    :goto_0
    return v3

    .line 1170
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1171
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1172
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ByteString;

    .line 1173
    .local v1, r:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "STLS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1174
    const/4 v3, 0x1

    goto :goto_0

    .line 1171
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final processFetchList(Lcom/htc/android/mail/Mailbox;)I
    .locals 13
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/exception/MailException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1602
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "POP3Server"

    const-string v8, "enter processFetchList"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_0
    const/4 v2, 0x0

    .line 1606
    .local v2, entry:Lcom/htc/android/mail/POP3Spec;
    const/4 v5, 0x0

    .line 1607
    .local v5, i:I
    const/4 v6, 0x0

    .line 1610
    .local v6, newMailNum:I
    iput v9, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNumByAmouts:I

    .line 1611
    iput v9, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNum:I

    .line 1614
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_0
    if-ltz v5, :cond_2

    .line 1615
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNumByAmouts:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNumByAmouts:I

    .line 1614
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1617
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_1
    if-ltz v5, :cond_7

    .line 1618
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/android/mail/POP3Spec;

    move-object v2, v0

    .line 1619
    if-eqz v2, :cond_4

    .line 1620
    iget v7, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNum:I

    .line 1621
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "POP3Server"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "uidl %s size %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v2, Lcom/htc/android/mail/POP3Spec;->size:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :cond_3
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v8, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/Account;->getSizeLimit(Landroid/content/Context;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 1629
    iget-object v7, v2, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    iget v8, v2, Lcom/htc/android/mail/POP3Spec;->size:I

    invoke-direct {p0, p1, v7, v8}, Lcom/htc/android/mail/server/POP3Server;->fetchAllInternal(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)J

    move-result-wide v3

    .line 1638
    .local v3, fetchResult:J
    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_4

    .line 1639
    add-int/lit8 v6, v6, 0x1

    .line 1640
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mSyncResult:Lcom/htc/android/mail/server/Server$SyncResult;

    iput v6, v7, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    .line 1641
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mSyncResult:Lcom/htc/android/mail/server/Server$SyncResult;

    iget-wide v7, v7, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 1642
    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mSyncResult:Lcom/htc/android/mail/server/Server$SyncResult;

    iput-wide v3, v7, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    .line 1617
    .end local v3           #fetchResult:J
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1631
    :cond_5
    iget v7, v2, Lcom/htc/android/mail/POP3Spec;->size:I

    iget-object v8, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v9, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/Account;->getSizeLimit(Landroid/content/Context;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x400

    if-gt v7, v8, :cond_6

    .line 1632
    iget-object v7, v2, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    iget v8, v2, Lcom/htc/android/mail/POP3Spec;->size:I

    invoke-direct {p0, p1, v7, v8}, Lcom/htc/android/mail/server/POP3Server;->fetchAllInternal(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)J

    move-result-wide v3

    .restart local v3       #fetchResult:J
    goto :goto_2

    .line 1634
    .end local v3           #fetchResult:J
    :cond_6
    iget-object v7, v2, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    iget v8, v2, Lcom/htc/android/mail/POP3Spec;->size:I

    invoke-direct {p0, p1, v7, v8}, Lcom/htc/android/mail/server/POP3Server;->fetchPartInternal(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)J
    :try_end_0
    .catch Lcom/htc/android/mail/exception/MailOutOfDateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .restart local v3       #fetchResult:J
    goto :goto_2

    .line 1647
    .end local v3           #fetchResult:J
    :catch_0
    move-exception v1

    .line 1648
    .local v1, e:Lcom/htc/android/mail/exception/MailOutOfDateException;
    const-string v7, "TAG"

    const-string v8, "fetch MailOutOfDateException"

    invoke-static {v7, v8, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1650
    .end local v1           #e:Lcom/htc/android/mail/exception/MailOutOfDateException;
    :cond_7
    return v6
.end method

.method private final processHeader(Ljava/util/List;)J
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v6, 0x0

    .line 1678
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->isCompleteResponse(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1679
    const-wide/16 v1, -0x1

    .line 1687
    :goto_0
    return-wide v1

    .line 1682
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1684
    new-instance v0, Lcom/htc/android/mail/Rfc2822;

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    const-string v5, ""

    const/4 v7, 0x0

    move v8, v6

    move v9, v6

    move v10, v6

    move v11, v6

    invoke-direct/range {v0 .. v11}, Lcom/htc/android/mail/Rfc2822;-><init>(Landroid/content/Context;JLjava/util/ArrayList;Ljava/lang/String;ZLcom/htc/android/mail/Mailbox;IIII)V

    .line 1687
    .local v0, message:Lcom/htc/android/mail/Rfc2822;
    invoke-virtual {v0}, Lcom/htc/android/mail/Rfc2822;->getInternalDateInMillis()J

    move-result-wide v1

    goto :goto_0
.end method

.method private final processLIST(Ljava/util/List;Lcom/htc/android/mail/Mailbox;)V
    .locals 9
    .parameter
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;",
            "Lcom/htc/android/mail/Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v8, 0x0

    .line 1236
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1238
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->isCompleteResponse(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1270
    :goto_0
    return-void

    .line 1247
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1

    .line 1248
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ByteString;

    .line 1249
    .local v2, r:Lcom/htc/android/mail/ByteString;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ByteString;->indexOf(I)I

    move-result v4

    .line 1250
    .local v4, space:I
    invoke-virtual {v2, v8, v4}, Lcom/htc/android/mail/ByteString;->parseInt(II)I

    move-result v1

    .line 1251
    .local v1, index:I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ByteString;->parseInt(I)I

    move-result v3

    .line 1252
    .local v3, size:I
    new-instance v5, Lcom/htc/android/mail/POP3Spec;

    invoke-direct {v5}, Lcom/htc/android/mail/POP3Spec;-><init>()V

    .line 1254
    .local v5, spec:Lcom/htc/android/mail/POP3Spec;
    iput v1, v5, Lcom/htc/android/mail/POP3Spec;->index:I

    .line 1255
    iput v3, v5, Lcom/htc/android/mail/POP3Spec;->size:I

    .line 1256
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mIndexToUidlMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    .line 1257
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1260
    .end local v1           #index:I
    .end local v2           #r:Lcom/htc/android/mail/ByteString;
    .end local v3           #size:I
    .end local v4           #space:I
    .end local v5           #spec:Lcom/htc/android/mail/POP3Spec;
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->isIncrease()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1261
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1264
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1265
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/POP3Spec;

    iget-object v6, v6, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mLastUid:Ljava/lang/String;

    .line 1266
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mLastUid:Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/htc/android/mail/server/POP3Server;->updateLastUid(Ljava/lang/String;Lcom/htc/android/mail/Mailbox;)V

    goto :goto_0

    .line 1268
    :cond_3
    const-string v6, ""

    invoke-virtual {p0, v6, p2}, Lcom/htc/android/mail/server/POP3Server;->updateLastUid(Ljava/lang/String;Lcom/htc/android/mail/Mailbox;)V

    goto :goto_0
.end method

.method private final processPASS(Lcom/htc/android/mail/ByteString;)V
    .locals 3
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/exception/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 1189
    if-eqz p1, :cond_0

    sget-object v0, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {p1, v0}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1190
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "POP3Server"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authroize failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 1192
    new-instance v0, Lcom/htc/android/mail/exception/AuthorizationException;

    invoke-direct {v0}, Lcom/htc/android/mail/exception/AuthorizationException;-><init>()V

    throw v0

    .line 1194
    :cond_2
    return-void
.end method

.method private processRETR(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;Ljava/util/List;I)J
    .locals 12
    .parameter "mailbox"
    .parameter "uidl"
    .parameter
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/exception/MailOutOfDateException;
        }
    .end annotation

    .prologue
    .line 1655
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, p3}, Lcom/htc/android/mail/server/POP3Server;->isCompleteResponse(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1656
    const-wide/16 v1, -0x1

    .line 1674
    :goto_0
    return-wide v1

    .line 1659
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1661
    new-instance v0, Lcom/htc/android/mail/Rfc2822;

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    move-object v4, p3

    check-cast v4, Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p2

    move-object v7, p1

    move/from16 v8, p4

    move/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/htc/android/mail/Rfc2822;-><init>(Landroid/content/Context;JLjava/util/ArrayList;Ljava/lang/String;ZLcom/htc/android/mail/Mailbox;IIII)V

    .line 1664
    .local v0, message:Lcom/htc/android/mail/Rfc2822;
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/android/mail/Rfc2822;->getInternalDateInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchTimeInMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1666
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_1

    .line 1667
    const-string v1, "POP3Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailOutOfDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/android/mail/Rfc2822;->getInternalDateInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchTimeInMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->clearTmpTokenFile()V

    .line 1670
    new-instance v1, Lcom/htc/android/mail/exception/MailOutOfDateException;

    invoke-direct {v1}, Lcom/htc/android/mail/exception/MailOutOfDateException;-><init>()V

    throw v1

    .line 1672
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->updateDownloadProgressStatus()V

    .line 1674
    invoke-virtual {v0}, Lcom/htc/android/mail/Rfc2822;->save()J

    move-result-wide v1

    goto :goto_0
.end method

.method private final processTOP(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;Ljava/util/List;I)J
    .locals 14
    .parameter "mailbox"
    .parameter "uidl"
    .parameter
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/exception/MailOutOfDateException;
        }
    .end annotation

    .prologue
    .line 1693
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/htc/android/mail/server/POP3Server;->isCompleteResponse(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1694
    const-wide/16 v2, -0x1

    .line 1724
    :goto_0
    return-wide v2

    .line 1697
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1699
    const/4 v10, 0x0

    .line 1700
    .local v10, currentSize:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 1701
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ByteString;

    invoke-virtual {v2}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v2

    add-int/2addr v10, v2

    .line 1700
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1704
    :cond_1
    add-int/lit8 v10, v10, -0x2

    .line 1705
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "POP3Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Account;->getSizeLimitIndex(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    move/from16 v0, p4

    if-lt v10, v0, :cond_3

    .line 1709
    add-int/lit8 v10, p4, -0x1

    .line 1712
    :cond_3
    new-instance v1, Lcom/htc/android/mail/Rfc2822;

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    move-object/from16 v5, p3

    check-cast v5, Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    move-object v8, p1

    move/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lcom/htc/android/mail/Rfc2822;-><init>(Landroid/content/Context;JLjava/util/ArrayList;Ljava/lang/String;ZLcom/htc/android/mail/Mailbox;IIII)V

    .line 1715
    .local v1, message:Lcom/htc/android/mail/Rfc2822;
    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/htc/android/mail/Rfc2822;->getInternalDateInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchTimeInMillis:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 1717
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_4

    .line 1718
    const-string v2, "POP3Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MailOutOfDate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/android/mail/Rfc2822;->getInternalDateInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchTimeInMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :cond_4
    new-instance v2, Lcom/htc/android/mail/exception/MailOutOfDateException;

    invoke-direct {v2}, Lcom/htc/android/mail/exception/MailOutOfDateException;-><init>()V

    throw v2

    .line 1722
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->updateDownloadProgressStatus()V

    .line 1724
    invoke-virtual {v1}, Lcom/htc/android/mail/Rfc2822;->save()J

    move-result-wide v2

    goto/16 :goto_0
.end method

.method private processUIDL(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->isCompleteResponse(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1213
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "POP3Server"

    const-string v7, "response is not validate"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_0
    return-void

    .line 1217
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1222
    .local v3, size:I
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 1223
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mIndexToUidlMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 1224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-ge v0, v6, :cond_0

    .line 1225
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ByteString;

    .line 1226
    .local v2, r:Lcom/htc/android/mail/ByteString;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ByteString;->indexOf(I)I

    move-result v4

    .line 1227
    .local v4, space:I
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Lcom/htc/android/mail/ByteString;->parseInt(II)I

    move-result v1

    .line 1228
    .local v1, index:I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/ByteString;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1229
    .local v5, uidl:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mIndexToUidlMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final processUSER(Lcom/htc/android/mail/ByteString;)V
    .locals 3
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/exception/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 1181
    if-eqz p1, :cond_0

    sget-object v0, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {p1, v0}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1182
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "POP3Server"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authroize failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 1184
    new-instance v0, Lcom/htc/android/mail/exception/AuthorizationException;

    invoke-direct {v0}, Lcom/htc/android/mail/exception/AuthorizationException;-><init>()V

    throw v0

    .line 1186
    :cond_2
    return-void
.end method

.method private final pruneFetchCheckMoreList()V
    .locals 18

    .prologue
    .line 1521
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "POP3Server"

    const-string v2, "enter pruneFetchCheckMoreList"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1597
    :cond_1
    :goto_0
    return-void

    .line 1528
    :cond_2
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1529
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    .local v10, i:I
    :goto_1
    if-ltz v10, :cond_3

    .line 1530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/POP3Spec;

    .line 1531
    .local v16, spec:Lcom/htc/android/mail/POP3Spec;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1538
    .end local v16           #spec:Lcom/htc/android/mail/POP3Spec;
    :cond_3
    const/4 v7, 0x0

    .line 1540
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_uid"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1551
    if-eqz v7, :cond_6

    .line 1552
    :cond_4
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1553
    const-string v1, "_uid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1555
    .local v17, uidl:Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 1557
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 1559
    .local v14, position:Ljava/lang/Integer;
    if-eqz v14, :cond_4

    .line 1560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1542
    .end local v14           #position:Ljava/lang/Integer;
    .end local v17           #uidl:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1543
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1544
    if-eqz v7, :cond_1

    .line 1545
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1563
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1566
    :cond_6
    const/4 v13, 0x0

    .line 1569
    .local v13, num:I
    const/4 v9, 0x0

    .line 1572
    .local v9, hasOldestUIDL:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1573
    .local v15, size:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_3
    if-ge v11, v15, :cond_7

    .line 1574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/POP3Spec;

    .line 1575
    .restart local v16       #spec:Lcom/htc/android/mail/POP3Spec;
    if-nez v16, :cond_8

    .line 1576
    const/4 v9, 0x1

    .line 1581
    .end local v16           #spec:Lcom/htc/android/mail/POP3Spec;
    :cond_7
    if-eqz v9, :cond_b

    .line 1583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    :goto_4
    if-lt v10, v11, :cond_9

    .line 1584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1583
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 1573
    .restart local v16       #spec:Lcom/htc/android/mail/POP3Spec;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1587
    .end local v16           #spec:Lcom/htc/android/mail/POP3Spec;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    :goto_5
    if-ltz v10, :cond_1

    .line 1588
    add-int/lit8 v13, v13, 0x1

    .line 1589
    const/16 v1, 0xa

    if-le v13, v1, :cond_a

    .line 1590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1587
    :cond_a
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 1594
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private final pruneFetchRefreshList(Lcom/htc/android/mail/Mailbox;)V
    .locals 25
    .parameter "mailbox"

    .prologue
    .line 1411
    const-string v3, "POP3Server"

    const-string v4, "enter pruneFetchRefreshList"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1413
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->clearPendingFetchMailRequest(Lcom/htc/android/mail/Mailbox;)V

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->getPendingFetchMailMap(Lcom/htc/android/mail/Mailbox;)Ljava/util/HashMap;

    move-result-object v17

    .line 1418
    .local v17, pendingFetchMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1423
    .local v16, pendingFetchMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/POP3Spec;>;"
    const-string v3, "POP3Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch mail num value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/htc/android/mail/Account;->getFetchMailNum(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/Account;->getFetchMailNum(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v13, v3, -0x1

    .local v13, i:I
    :goto_1
    if-ltz v13, :cond_3

    .line 1427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/android/mail/POP3Spec;

    .line 1428
    .local v19, spec:Lcom/htc/android/mail/POP3Spec;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1429
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1425
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 1435
    .end local v19           #spec:Lcom/htc/android/mail/POP3Spec;
    :cond_3
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1436
    .local v15, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    :goto_2
    if-ltz v13, :cond_4

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/android/mail/POP3Spec;

    .line 1438
    .restart local v19       #spec:Lcom/htc/android/mail/POP3Spec;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 1442
    .end local v19           #spec:Lcom/htc/android/mail/POP3Spec;
    :cond_4
    const/4 v9, 0x0

    .line 1445
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_account = \'%d\' AND _mailboxId = \'%d\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1446
    .local v6, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_uid"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "_del"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1456
    if-nez v9, :cond_5

    .line 1457
    const-string v3, "POP3Server"

    const-string v4, "cursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1448
    .end local v6           #where:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1449
    .local v11, e:Ljava/lang/Exception;
    const-string v3, "POP3Server"

    const-string v4, "catch exception"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1450
    if-eqz v9, :cond_0

    .line 1451
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1462
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v6       #where:Ljava/lang/String;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->toDeleteNonExistMail()Z

    move-result v21

    .line 1466
    .local v21, toDeleteNonExistMail:Z
    const/4 v10, 0x0

    .line 1468
    .local v10, del:I
    const/4 v12, 0x0

    .line 1469
    .local v12, haveMailInDb:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1470
    :cond_6
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1471
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1472
    .local v22, uidl:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1474
    if-eqz v22, :cond_6

    .line 1476
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 1478
    .local v18, position:Ljava/lang/Integer;
    if-eqz v18, :cond_7

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1480
    const/4 v12, 0x1

    .line 1484
    :cond_7
    const/4 v3, 0x1

    if-ne v10, v3, :cond_8

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    :cond_8
    if-eqz v21, :cond_6

    .line 1492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1497
    .end local v18           #position:Ljava/lang/Integer;
    .end local v22           #uidl:Ljava/lang/String;
    :cond_9
    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 1498
    const/4 v15, 0x0

    .line 1503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/Account;->getFetchMailNum(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_a

    .line 1504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1505
    if-nez v12, :cond_a

    .line 1506
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->clearPendingFetchMailRequest(Lcom/htc/android/mail/Mailbox;)V

    .line 1507
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 1508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4, v7, v8}, Lcom/htc/android/mail/MailProvider;->deleteMessagesByMailbox(JJ)V

    .line 1512
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/android/mail/server/POP3Server;->insertPendingFetchMailRequest(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1513
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/android/mail/POP3Spec;

    .line 1514
    .local v20, tmpSpec:Lcom/htc/android/mail/POP3Spec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1517
    .end local v20           #tmpSpec:Lcom/htc/android/mail/POP3Spec;
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private pruneFetchRefreshListByDate(Lcom/htc/android/mail/Mailbox;)V
    .locals 19
    .parameter "mailbox"

    .prologue
    .line 484
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "POP3Server"

    const-string v3, "enter pruneFetchRefreshList"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 549
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    const/4 v8, 0x0

    .line 491
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account = \'%d\' AND _mailboxId = \'%d\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_uid"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_del"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 505
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 506
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .local v11, i:I
    :goto_1
    if-ltz v11, :cond_3

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/POP3Spec;

    .line 508
    .local v14, spec:Lcom/htc/android/mail/POP3Spec;
    iget-object v2, v14, Lcom/htc/android/mail/POP3Spec;->uidl:Ljava/lang/String;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 494
    .end local v5           #where:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14           #spec:Lcom/htc/android/mail/POP3Spec;
    :catch_0
    move-exception v10

    .line 495
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    if-eqz v8, :cond_1

    .line 497
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 512
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v12       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->toDeleteNonExistMail()Z

    move-result v15

    .line 518
    .local v15, toDeleteNonExistMail:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 519
    :cond_4
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 520
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 521
    .local v16, uidl:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 523
    .local v9, del:I
    if-eqz v16, :cond_4

    .line 525
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 527
    .local v13, position:Ljava/lang/Integer;
    if-eqz v13, :cond_5

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_5
    const/4 v2, 0x1

    if-ne v9, v2, :cond_6

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_6
    if-eqz v15, :cond_4

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 545
    .end local v9           #del:I
    .end local v13           #position:Ljava/lang/Integer;
    .end local v16           #uidl:Ljava/lang/String;
    :cond_7
    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 546
    const/4 v12, 0x0

    .line 548
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private readLine()Lcom/htc/android/mail/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1143
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1146
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, d:I
    if-eq v0, v4, :cond_1

    .line 1147
    int-to-char v2, v0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 1148
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1150
    :cond_0
    int-to-char v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 1151
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1157
    :cond_1
    if-ne v0, v4, :cond_3

    .line 1158
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 1159
    const/4 v2, 0x0

    .line 1161
    :goto_1
    return-object v2

    .line 1154
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1161
    :cond_3
    new-instance v2, Lcom/htc/android/mail/ByteString;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/android/mail/ByteString;-><init>([B)V

    goto :goto_1
.end method

.method private readOneLineResponse()Lcom/htc/android/mail/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v0

    .line 918
    .local v0, line:Lcom/htc/android/mail/ByteString;
    if-nez v0, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 920
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "POP3Server"

    const-string v2, "null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_0
    :goto_0
    return-object v0

    .line 922
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "POP3Server"

    invoke-virtual {v0}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readResponse()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 928
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    iput v5, p0, Lcom/htc/android/mail/server/POP3Server;->encodeTypeline:I

    .line 931
    iput-boolean v5, p0, Lcom/htc/android/mail/server/POP3Server;->endofMail:Z

    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, checkString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 935
    .local v1, len:I
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .local v2, line:Lcom/htc/android/mail/ByteString;
    if-eqz v2, :cond_4

    .line 936
    const/4 v1, 0x0

    .line 937
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "POP3Server"

    invoke-virtual {v2}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_1
    invoke-virtual {v2}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 940
    const/16 v5, 0x1f

    if-lt v1, v5, :cond_6

    const-string v5, "content-disposition: attachment"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 941
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "POP3Server"

    const-string v6, "found attachment:"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/POP3Server;->makeToken(Ljava/util/List;)V

    .line 965
    :cond_3
    :goto_0
    sget-object v5, Lcom/htc/android/mail/server/POP3Server;->STR_EOM:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/htc/android/mail/server/POP3Server;->endofMail:Z

    if-eqz v5, :cond_0

    .line 970
    :cond_4
    if-nez v2, :cond_5

    .line 971
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 974
    :cond_5
    :goto_1
    return-object v3

    .line 944
    :cond_6
    const/16 v5, 0x11

    if-le v1, v5, :cond_8

    const-string v5, "content-type:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 947
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "POP3Server"

    const-string v6, "found attachment:"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_7
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/POP3Server;->makeToken(Ljava/util/List;)V

    goto :goto_0

    .line 950
    :cond_8
    const-string v5, "content-type: message/rfc822"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 952
    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/POP3Server;->enterRfc822Body(Ljava/util/List;)Z

    move-result v4

    .line 953
    .local v4, result:Z
    if-nez v4, :cond_3

    goto :goto_1

    .line 957
    .end local v4           #result:Z
    :cond_9
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    const/16 v5, 0x21

    if-lt v1, v5, :cond_3

    const-string v5, "content-transfer-encoding: base64"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 959
    const/4 v5, 0x1

    iput v5, p0, Lcom/htc/android/mail/server/POP3Server;->encodeType:I

    .line 960
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/android/mail/server/POP3Server;->encodeTypeline:I

    .line 961
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_3

    .line 962
    const-string v5, "POP3Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encode type and line"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/mail/server/POP3Server;->encodeType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/mail/server/POP3Server;->encodeTypeline:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private savingToken(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v12, 0x1

    .line 1112
    const/4 v4, 0x0

    .line 1115
    .local v4, result:Z
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v7

    const-string v8, ".Mail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "token"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v6, v7, v8, v9, v10}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1118
    .local v5, tmpFilename:Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1120
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mIn:Ljava/io/BufferedInputStream;

    invoke-static {v6, v1}, Lcom/htc/android/mail/Base64;->decodepopFile(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1126
    if-ne v4, v12, :cond_2

    .line 1127
    new-instance v6, Lcom/htc/android/mail/ByteString;

    invoke-direct {v6, v5}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .line 1129
    .local v2, line:Lcom/htc/android/mail/ByteString;
    new-instance v6, Lcom/htc/android/mail/ByteString;

    const-string v7, "-"

    invoke-direct {v6, v7}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/htc/android/mail/ByteString;->concat(Lcom/htc/android/mail/ByteString;)Lcom/htc/android/mail/ByteString;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "POP3Server"

    const-string v7, "token generated..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/server/POP3Server;->mTmpToken:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    :goto_0
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "POP3Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " endofMail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/htc/android/mail/server/POP3Server;->endofMail:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_1
    return-void

    .line 1121
    .end local v2           #line:Lcom/htc/android/mail/ByteString;
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v3, outputfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1124
    throw v0

    .line 1133
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #outputfile:Ljava/io/File;
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1134
    .restart local v3       #outputfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1135
    iput-boolean v12, p0, Lcom/htc/android/mail/server/POP3Server;->endofMail:Z

    .line 1136
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v2

    .line 1137
    .restart local v2       #line:Lcom/htc/android/mail/ByteString;
    new-instance v6, Lcom/htc/android/mail/ByteString;

    const-string v7, ".\r\n"

    invoke-direct {v6, v7}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private toDeleteNonExistMail()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1934
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->syncWithServer()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDownloadProgressStatus()V
    .locals 4

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNum:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNumByAmouts:I

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget v1, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNum:I

    iget v2, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNumByAmouts:I

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/android/mail/server/POP3Server;->getDownloadingStatus(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 1931
    :cond_0
    :goto_0
    return-void

    .line 1928
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNum:I

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/server/POP3Server;->mMailNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateExistSize(Lcom/htc/android/mail/Mailbox;)V
    .locals 6
    .parameter "mailbox"

    .prologue
    .line 650
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 651
    .local v0, cp:Landroid/content/IContentProvider;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 652
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_existsize"

    iget-object v4, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "POP3Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_existsize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v2, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_1
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, re:Landroid/os/RemoteException;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "POP3Server"

    const-string v4, "update mailbox exist size"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final write(Ljava/lang/String;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1787
    const-string v1, "us-ascii"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1789
    .local v0, bytes:[B
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 1791
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1792
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1793
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1794
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1796
    :cond_0
    return-void
.end method

.method private final write([B)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1802
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1803
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1804
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1806
    :cond_0
    return-void
.end method


# virtual methods
.method public checkMore(Lcom/htc/android/mail/Mailbox;)V
    .locals 4
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 620
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "POP3Server"

    const-string v3, "enter checkMore()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->checkAccount()V

    .line 623
    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->probe()V

    .line 625
    iget v2, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->init()V

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 631
    const-string v2, "LIST"

    invoke-direct {p0, v2}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 634
    .local v1, r:Lcom/htc/android/mail/ByteString;
    if-eqz v1, :cond_2

    sget-object v2, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 646
    :cond_2
    :goto_0
    return-void

    .line 637
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readResponse()Ljava/util/List;

    move-result-object v0

    .line 638
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, v0, p1}, Lcom/htc/android/mail/server/POP3Server;->processLIST(Ljava/util/List;Lcom/htc/android/mail/Mailbox;)V

    .line 640
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->updateExistSize(Lcom/htc/android/mail/Mailbox;)V

    .line 642
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->pruneFetchCheckMoreList()V

    .line 643
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/POP3Server;->processFetchList(Lcom/htc/android/mail/Mailbox;)I

    .line 645
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    goto :goto_0
.end method

.method public checkNewAccount()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    .line 265
    iget v4, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    if-ne v4, v9, :cond_3

    .line 266
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "POP3Server"

    const-string v5, "enter checkNewAccount"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->connect()V

    .line 270
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v3

    .line 272
    .local v3, welcomeMsg:Lcom/htc/android/mail/ByteString;
    iget-object v4, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getUseSSLin()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 273
    const-string v4, "STLS"

    invoke-direct {p0, v4}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 275
    .local v1, r:Lcom/htc/android/mail/ByteString;
    sget-object v4, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 276
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->newTLSSocket()V

    .line 283
    .end local v1           #r:Lcom/htc/android/mail/ByteString;
    :cond_1
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "POP3Server"

    const-string v5, "Logging will be disabled totally in CRC build."

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    if-nez v4, :cond_6

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 288
    .restart local v1       #r:Lcom/htc/android/mail/ByteString;
    invoke-direct {p0, v1}, Lcom/htc/android/mail/server/POP3Server;->processUSER(Lcom/htc/android/mail/ByteString;)V

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PASS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 292
    invoke-direct {p0, v1}, Lcom/htc/android/mail/server/POP3Server;->processPASS(Lcom/htc/android/mail/ByteString;)V

    .line 306
    .end local v1           #r:Lcom/htc/android/mail/ByteString;
    .end local v3           #welcomeMsg:Lcom/htc/android/mail/ByteString;
    :cond_3
    :goto_0
    iget v4, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    if-eq v4, v9, :cond_4

    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 307
    :cond_4
    return-void

    .line 278
    .restart local v1       #r:Lcom/htc/android/mail/ByteString;
    .restart local v3       #welcomeMsg:Lcom/htc/android/mail/ByteString;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 279
    new-instance v4, Lcom/htc/android/mail/exception/NoTLSSupportException;

    invoke-direct {v4}, Lcom/htc/android/mail/exception/NoTLSSupportException;-><init>()V

    throw v4

    .line 295
    .end local v1           #r:Lcom/htc/android/mail/ByteString;
    :cond_6
    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/htc/android/mail/server/POP3Server;->getShareKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, shareKey:Ljava/lang/String;
    if-nez v2, :cond_7

    .line 297
    new-instance v4, Lcom/htc/android/mail/exception/NoSupportAPOPException;

    invoke-direct {v4}, Lcom/htc/android/mail/exception/NoSupportAPOPException;-><init>()V

    throw v4

    .line 299
    :cond_7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "APOP %s %s"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v2, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, cmd:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 302
    .restart local v1       #r:Lcom/htc/android/mail/ByteString;
    invoke-direct {p0, v1}, Lcom/htc/android/mail/server/POP3Server;->processPASS(Lcom/htc/android/mail/ByteString;)V

    goto :goto_0
.end method

.method public close()V
    .locals 5

    .prologue
    .line 1731
    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1732
    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mIndexToUidlMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1733
    iget-object v3, p0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1736
    :try_start_0
    const-string v3, "QUIT"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    .line 1742
    .local v2, socket:Ljava/net/Socket;
    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    .line 1743
    .local v1, out:Ljava/io/BufferedOutputStream;
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mIn:Ljava/io/BufferedInputStream;

    .line 1745
    .local v0, in:Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/mail/server/POP3Server$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/htc/android/mail/server/POP3Server$1;-><init>(Lcom/htc/android/mail/server/POP3Server;Ljava/net/Socket;Ljava/io/BufferedOutputStream;Ljava/io/BufferedInputStream;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1772
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    .line 1773
    return-void

    .line 1737
    .end local v0           #in:Ljava/io/BufferedInputStream;
    .end local v1           #out:Ljava/io/BufferedOutputStream;
    .end local v2           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public deleteMail(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "POP3Server"

    const-string v1, "deleteMail"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    return-void
.end method

.method public deleteMail(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "mailbox"
    .parameter
    .parameter "onlyOnServer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "POP3Server"

    const-string v1, "deleteMail on Server"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_0
    return-void
.end method

.method public deleteMail(Lcom/htc/android/mail/server/Server$PendingRequestList;)V
    .locals 16
    .parameter "pendingRequestList"

    .prologue
    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->checkAccount()V

    .line 838
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->probe()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/server/Server$PendingRequestList;->size()I

    move-result v6

    .line 846
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 847
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/server/Server$PendingRequestList;->get(I)Lcom/htc/android/mail/server/Server$PendingRequest;

    move-result-object v5

    .line 849
    .local v5, pendingRequest:Lcom/htc/android/mail/server/Server$PendingRequest;
    :try_start_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 850
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->init()V

    .line 856
    :cond_0
    iget-object v7, v5, Lcom/htc/android/mail/server/Server$PendingRequest;->uid:Ljava/lang/String;

    .line 857
    .local v7, uid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 858
    .local v4, indexInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 859
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/server/POP3Server;->mUidlToIndexMap:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 860
    .local v3, index:I
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "DELE %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    .line 864
    .end local v3           #index:I
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 865
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "_local"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 866
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "_account = \'%d\' AND _uid = \'%s\' AND _del = -1"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v14}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 868
    .local v9, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v10

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v8, v9, v12}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 871
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "_account = \'%d\' AND _uid = \'%s\' AND _del <> -1"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v14}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 872
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v10

    sget-object v11, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v9, v12}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 874
    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server$PendingRequest;->delete()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 846
    .end local v4           #indexInteger:Ljava/lang/Integer;
    .end local v7           #uid:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    .end local v9           #where:Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 839
    .end local v2           #i:I
    .end local v5           #pendingRequest:Lcom/htc/android/mail/server/Server$PendingRequest;
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 840
    .local v1, e:Ljava/io/IOException;
    const-string v10, "POP3Server"

    const-string v11, "catch IOException"

    invoke-static {v10, v11, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 875
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v5       #pendingRequest:Lcom/htc/android/mail/server/Server$PendingRequest;
    .restart local v6       #size:I
    :catch_1
    move-exception v1

    .line 876
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "POP3Server"

    const-string v11, "delete remote mail fail, insert into pending_requests table"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    goto :goto_2

    .line 878
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 879
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "POP3Server"

    const-string v11, "Unknow Exception"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server$PendingRequest;->delete()I

    goto :goto_2

    .line 883
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #pendingRequest:Lcom/htc/android/mail/server/Server$PendingRequest;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 884
    return-void
.end method

.method public fetchAll(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V
    .locals 2
    .parameter "mailbox"
    .parameter "uidl"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->checkAccount()V

    .line 664
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->probe()V

    .line 665
    iget v0, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->init()V

    .line 668
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/server/POP3Server;->fetchAllInternal(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)J

    .line 670
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_1

    const-string v0, "hotmail"

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :goto_0
    return-void

    .line 671
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    goto :goto_0
.end method

.method public fetchPart(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V
    .locals 2
    .parameter "mailbox"
    .parameter "uidl"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->checkAccount()V

    .line 711
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->probe()V

    .line 712
    iget v0, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 713
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->init()V

    .line 715
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/server/POP3Server;->fetchPartInternal(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)J

    .line 716
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 717
    return-void
.end method

.method public getSslError()Lcom/htc/android/mail/ssl/MailSslError;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSslError:Lcom/htc/android/mail/ssl/MailSslError;

    return-object v0
.end method

.method public getSyncResult()[Lcom/htc/android/mail/server/Server$SyncResult;
    .locals 3

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSyncResult:Lcom/htc/android/mail/server/Server$SyncResult;

    iget-object v1, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->accountId:J

    .line 1993
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/android/mail/server/Server$SyncResult;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/android/mail/server/POP3Server;->mSyncResult:Lcom/htc/android/mail/server/Server$SyncResult;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mX509Certificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveMail(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;)V
    .locals 19
    .parameter "fromMailbox"
    .parameter
    .parameter "toMailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Lcom/htc/android/mail/Mailbox;",
            ")V"
        }
    .end annotation

    .prologue
    .line 753
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    const-string v14, "POP3Server"

    const-string v15, "enter moveMail"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 762
    .local v2, cp:Landroid/content/IContentProvider;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/android/mail/server/POP3Server;->getUidList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 763
    .local v10, uidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, ","

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15}, Lcom/htc/android/mail/server/POP3Server;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 765
    .local v11, uidSeq:Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_uid in (%s) AND _del = 1 AND _mailboxId = ?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 766
    .local v13, where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v2, v14, v13, v15}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 769
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 771
    .local v12, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/android/mail/server/POP3Server;->getMessageIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 772
    .local v7, msgIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, ","

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcom/htc/android/mail/server/POP3Server;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 773
    .local v8, msgIdSeq:Ljava/lang/String;
    const-string v14, "POP3Server"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "msgIdSeq: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id in (%s) AND _del = \'-1\' AND _mailboxId = ?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 777
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 778
    const-string v14, "_mailboxId"

    move-object/from16 v0, p3

    iget-wide v15, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v2, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    sget-object v14, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v14}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 784
    sget-object v14, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_2

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 789
    .local v4, handler:Landroid/os/Handler;
    if-eqz v4, :cond_2

    .line 790
    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 795
    .end local v4           #handler:Landroid/os/Handler;
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    if-eqz v14, :cond_0

    .line 798
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 799
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/MailMessage;

    iget-object v9, v14, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 800
    .local v9, uid:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/MailMessage;

    iget-object v6, v14, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 801
    .local v6, msgIdInHeader:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 802
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 803
    const-string v14, "_uid"

    invoke-virtual {v12, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v14, "_del"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    const-string v14, "_mailboxId"

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 806
    const-string v14, "_account"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 807
    const-string v14, "_messageid"

    invoke-virtual {v12, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sNoNotifyMessagesURI:Landroid/net/Uri;

    invoke-interface {v2, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 812
    .end local v5           #i:I
    .end local v6           #msgIdInHeader:Ljava/lang/String;
    .end local v7           #msgIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #msgIdSeq:Ljava/lang/String;
    .end local v9           #uid:Ljava/lang/String;
    .end local v10           #uidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #uidSeq:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v13           #where:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 813
    .local v3, e:Landroid/os/RemoteException;
    const-string v14, "POP3Server"

    const-string v15, "moveMail fail"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public probe()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1817
    iget v1, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1830
    :goto_0
    return-void

    .line 1821
    :cond_0
    :try_start_0
    const-string v1, "NOOP"

    invoke-direct {p0, v1}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 1822
    invoke-direct {p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1823
    :catch_0
    move-exception v0

    .line 1824
    .local v0, e:Ljava/io/IOException;
    const-string v1, "POP3Server"

    const-string v2, "probe fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1825
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->isStop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1826
    throw v0

    .line 1828
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    goto :goto_0
.end method

.method public refresh(Lcom/htc/android/mail/Mailbox;)I
    .locals 1
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/server/POP3Server;->refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I
    .locals 18
    .parameter "mailbox"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 354
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "POP3Server"

    const-string v4, "refresh()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    new-instance v3, Lcom/htc/android/mail/server/Server$SyncResult;

    invoke-direct {v3}, Lcom/htc/android/mail/server/Server$SyncResult;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mSyncResult:Lcom/htc/android/mail/server/Server$SyncResult;

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->refresh()V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->init()V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->clearMails()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "POP3Server"

    const-string v4, "clearMails"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_1
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->clearPendingFetchMailRequest(Lcom/htc/android/mail/Mailbox;)V

    .line 373
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_account = \'%d\' AND _uid is not null"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 374
    .local v17, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Handler;

    .line 379
    .local v12, handler:Landroid/os/Handler;
    if-eqz v12, :cond_2

    .line 380
    const/16 v3, 0xc

    invoke-virtual {v12, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 384
    .end local v12           #handler:Landroid/os/Handler;
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_id = \'%d\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 385
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 386
    .local v16, values:Landroid/content/ContentValues;
    const-string v3, "_fetchMailType"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->setClearMails(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v16           #values:Landroid/content/ContentValues;
    .end local v17           #where:Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->syncPendingRequests()V

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->isFinishSyncPendingRequest()Z

    move-result v3

    if-nez v3, :cond_5

    .line 397
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "TAG"

    const-string v4, "can\'t finish SyncPendingRequest"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_4
    const/4 v14, 0x0

    .line 480
    :goto_1
    return v14

    .line 389
    :catch_0
    move-exception v11

    .line 390
    .local v11, e:Landroid/os/RemoteException;
    const-string v3, "POP3Server"

    const-string v4, "catch remote exception"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 403
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/android/mail/server/POP3Server;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 404
    const-string v3, "LIST"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/server/POP3Server;->issue(Ljava/lang/String;)V

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->readOneLineResponse()Lcom/htc/android/mail/ByteString;

    move-result-object v15

    .line 407
    .local v15, r:Lcom/htc/android/mail/ByteString;
    if-eqz v15, :cond_6

    sget-object v3, Lcom/htc/android/mail/server/POP3Server;->STR_OK:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v15, v3}, Lcom/htc/android/mail/ByteString;->startsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 408
    :cond_6
    const/4 v14, -0x1

    goto :goto_1

    .line 410
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->readResponse()Ljava/util/List;

    move-result-object v13

    .line 411
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/htc/android/mail/server/POP3Server;->processLIST(Ljava/util/List;Lcom/htc/android/mail/Mailbox;)V

    .line 413
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->updateExistSize(Lcom/htc/android/mail/Mailbox;)V

    .line 415
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "POP3Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "For ITS #4225, 9198: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_8
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "POP3Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchMailNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Account;->getFetchMailNum(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_9
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "POP3Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchMailDays: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Account;->getFetchMailDays(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_a
    const/4 v14, 0x0

    .line 420
    .local v14, newMailNum:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_d

    .line 421
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->pruneFetchRefreshList(Lcom/htc/android/mail/Mailbox;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 423
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_account = \'%d\' AND _mailboxId = \'%d\' AND _uid in (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    const-string v8, ","

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/htc/android/mail/server/POP3Server;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 425
    .restart local v17       #where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 428
    .end local v17           #where:Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->processFetchList(Lcom/htc/android/mail/Mailbox;)I

    move-result v14

    .line 468
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->toDeleteNonExistMail()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 470
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_account = \'%d\' AND _mailboxId = \'%d\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 472
    .restart local v17       #where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    .end local v17           #where:Ljava/lang/String;
    :cond_c
    const-string v3, "POP3Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newMailNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 479
    new-instance v3, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v3}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    int-to-long v7, v14

    const-wide/16 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/htc/android/mail/ulog/MULogMgr;->updateMailCountRecord(Landroid/content/Context;JJJ)V

    goto/16 :goto_1

    .line 430
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 431
    .local v2, cal:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->getFetchMailDays(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_10

    .line 434
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/Account;->getFetchMailDays(Landroid/content/Context;)I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchTimeInMillis:J

    .line 441
    :goto_3
    :try_start_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_account = \'%d\' AND (_internaldate < \'%d\' AND _internaldate > \'0\')"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchTimeInMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 444
    .restart local v17       #where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_e

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Handler;

    .line 449
    .restart local v12       #handler:Landroid/os/Handler;
    if-eqz v12, :cond_e

    .line 450
    const/16 v3, 0xc

    invoke-virtual {v12, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 458
    .end local v12           #handler:Landroid/os/Handler;
    .end local v17           #where:Ljava/lang/String;
    :cond_e
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->pruneFetchRefreshListByDate(Lcom/htc/android/mail/Mailbox;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 460
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_account = \'%d\' AND _mailboxId = \'%d\' AND _uid in (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    const-string v8, ","

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/htc/android/mail/server/POP3Server;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 462
    .restart local v17       #where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/POP3Server;->mDelUidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 465
    .end local v17           #where:Ljava/lang/String;
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/server/POP3Server;->processFetchList(Lcom/htc/android/mail/Mailbox;)I

    move-result v14

    goto/16 :goto_2

    .line 437
    :cond_10
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/server/POP3Server;->mFetchTimeInMillis:J

    goto/16 :goto_3

    .line 454
    :catch_1
    move-exception v11

    .line 455
    .restart local v11       #e:Landroid/os/RemoteException;
    const-string v3, "POP3Server"

    const-string v4, "catch remore exception"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public setAccount(Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    .line 1840
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1834
    iput-object p1, p0, Lcom/htc/android/mail/server/POP3Server;->mContext:Landroid/content/Context;

    .line 1835
    return-void
.end method

.method public setReadMail(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;Z)V
    .locals 0
    .parameter "mailbox"
    .parameter "mailMessage"
    .parameter "bNotifyChange"

    .prologue
    .line 892
    return-void
.end method

.method public setUnreadMail(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;Z)V
    .locals 0
    .parameter "mailbox"
    .parameter "mailMessage"
    .parameter "bNotifyChange"

    .prologue
    .line 899
    return-void
.end method

.method public setX509Certificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/android/mail/server/POP3Server;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 226
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/POP3Server;->stop(Z)V

    .line 1778
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 1782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/POP3Server;->setStop(Z)V

    .line 1783
    invoke-virtual {p0}, Lcom/htc/android/mail/server/POP3Server;->close()V

    .line 1784
    return-void
.end method

.method public syncPendingRequests()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 577
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "POP3Server"

    const-string v3, "syncPendingRequests()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    const/16 v17, 0x0

    .line 580
    .local v17, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_accountId = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/server/POP3Server;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v4, v14

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 586
    new-instance v19, Lcom/htc/android/mail/server/Server$PendingRequestList;

    invoke-direct/range {v19 .. v19}, Lcom/htc/android/mail/server/Server$PendingRequestList;-><init>()V

    .line 587
    .local v19, pendingRequestList:Lcom/htc/android/mail/server/Server$PendingRequestList;
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    const-string v2, "_accountId"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 589
    .local v9, accountId:J
    const-string v2, "_messageId"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 590
    .local v11, messageId:J
    const-string v2, "_uid"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 591
    .local v13, uid:Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 593
    .local v7, id:J
    new-instance v6, Lcom/htc/android/mail/server/Server$PendingRequest;

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    invoke-direct/range {v6 .. v16}, Lcom/htc/android/mail/server/Server$PendingRequest;-><init>(JJJLjava/lang/String;Ljava/lang/String;J)V

    .line 594
    .local v6, request:Lcom/htc/android/mail/server/Server$PendingRequest;
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/server/Server$PendingRequestList;->add(Lcom/htc/android/mail/server/Server$PendingRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #request:Lcom/htc/android/mail/server/Server$PendingRequest;
    .end local v7           #id:J
    .end local v9           #accountId:J
    .end local v11           #messageId:J
    .end local v13           #uid:Ljava/lang/String;
    .end local v19           #pendingRequestList:Lcom/htc/android/mail/server/Server$PendingRequestList;
    :catch_0
    move-exception v18

    .line 601
    .local v18, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "POP3Server"

    const-string v3, "query pending_request table fail"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 604
    .end local v18           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_1
    return-void

    .line 597
    .restart local v5       #where:Ljava/lang/String;
    .restart local v19       #pendingRequestList:Lcom/htc/android/mail/server/Server$PendingRequestList;
    :cond_2
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/server/Server$PendingRequestList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/POP3Server;->deleteMail(Lcom/htc/android/mail/server/Server$PendingRequestList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 603
    :cond_3
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .end local v5           #where:Ljava/lang/String;
    .end local v19           #pendingRequestList:Lcom/htc/android/mail/server/Server$PendingRequestList;
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 604
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 603
    :cond_4
    throw v2
.end method

.method public updateLastUid(Ljava/lang/String;Lcom/htc/android/mail/Mailbox;)V
    .locals 6
    .parameter "uid"
    .parameter "mailbox"

    .prologue
    .line 1912
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 1913
    .local v0, cp:Landroid/content/IContentProvider;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1914
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_lastuid"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "POP3Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_lastuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v2, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    :goto_0
    return-void

    .line 1918
    :catch_0
    move-exception v1

    .line 1919
    .local v1, re:Landroid/os/RemoteException;
    const-string v3, "POP3Server"

    const-string v4, "update mailbox last uid fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
