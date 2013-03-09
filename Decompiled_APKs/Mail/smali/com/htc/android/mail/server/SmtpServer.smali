.class public Lcom/htc/android/mail/server/SmtpServer;
.super Lcom/htc/android/mail/server/Server;
.source "SmtpServer.java"


# static fields
.field private static final STR_EOM:Lcom/htc/android/mail/ByteString; = null

.field private static final TAG:Ljava/lang/String; = "SmtpServer"

.field static final mDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private AttachNum:I

.field private BoundaryNum:I

.field protected allAddress:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alternativeBoundary:Ljava/lang/String;

.field private attachList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field protected bccText:Ljava/lang/String;

.field protected ccText:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;

.field protected email:Ljava/lang/String;

.field private htmlBodyText:Ljava/lang/String;

.field protected mAccount:Lcom/htc/android/mail/Account;

.field private final mConnectionTimeOut:I

.field protected mContext:Landroid/content/Context;

.field protected mImportance:I

.field private mIn:Ljava/io/BufferedInputStream;

.field private mIsTLSEnable:Z

.field private mOut:Ljava/io/BufferedOutputStream;

.field private mOutPort:I

.field private mOutServer:Ljava/lang/String;

.field private final mReadTimeOut:I

.field private mSocket:Ljava/net/Socket;

.field private mSslError:Lcom/htc/android/mail/ssl/MailSslError;

.field private mSupportEHLO:Z

.field private mUseSSLout:I

.field private mX509Certificate:Ljava/security/cert/X509Certificate;

.field private mixBoundary:Ljava/lang/String;

.field private plainBodyText:Ljava/lang/String;

.field private relatedBoundary:Ljava/lang/String;

.field private relatedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private subjectText:Ljava/lang/String;

.field protected toText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/android/mail/server/SmtpServer;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 72
    new-instance v0, Lcom/htc/android/mail/ByteString;

    const-string v1, "."

    invoke-direct {v0, v1}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/mail/server/SmtpServer;->STR_EOM:Lcom/htc/android/mail/ByteString;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/16 v4, 0x7530

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/htc/android/mail/server/Server;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->allAddress:Ljava/util/HashSet;

    .line 82
    iput v2, p0, Lcom/htc/android/mail/server/SmtpServer;->BoundaryNum:I

    .line 84
    iput v2, p0, Lcom/htc/android/mail/server/SmtpServer;->AttachNum:I

    .line 86
    iput-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mixBoundary:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->alternativeBoundary:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedBoundary:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->displayName:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->email:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->attachList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    .line 93
    iput v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mImportance:I

    .line 101
    iput v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mConnectionTimeOut:I

    .line 102
    iput v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mReadTimeOut:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutServer:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mSslError:Lcom/htc/android/mail/ssl/MailSslError;

    .line 109
    iput-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 111
    iput-boolean v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mIsTLSEnable:Z

    .line 112
    iput-boolean v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mSupportEHLO:Z

    .line 115
    iput-object p1, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    .line 117
    return-void
.end method

.method private GenRelatedAttachAndBound(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, relatedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 1098
    :cond_0
    return-void

    .line 1041
    :cond_1
    const/4 v2, 0x0

    .line 1042
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 1043
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .local v8, num:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_0

    .line 1045
    :try_start_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    if-eqz v11, :cond_2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    if-eqz v11, :cond_2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v11, :cond_4

    .line 1092
    :cond_2
    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1043
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1048
    :cond_4
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5

    .line 1049
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    move-result v11

    if-nez v11, :cond_7

    .line 1092
    :cond_5
    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_2
    move-object v2, v3

    .line 1050
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .line 1051
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_7
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedBoundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 1052
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6

    .line 1053
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    const-string v12, "utf-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1054
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";\r\n\tname="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-static {v11}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 1057
    :goto_3
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    const-string v12, "utf-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1058
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Disposition: inline;\r\n\tfilename=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-static {v11}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 1061
    :goto_4
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->cid:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 1062
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-ID: <"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->cid:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 1063
    :cond_8
    const-string v11, "Content-Transfer-Encoding: base64"

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 1064
    const-string v11, ""

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 1067
    sget v9, Lcom/htc/android/mail/server/ImapServer;->ONETIME_ENCODE_SIZE:I

    .line 1068
    .local v9, oneTime:I
    new-array v0, v9, [B

    .line 1071
    .local v0, content:[B
    const/4 v6, 0x0

    .line 1072
    .local v6, i:I
    :goto_5
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v9}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0

    move-result v10

    .line 1073
    .local v10, size:I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    .line 1084
    const/4 v0, 0x0

    .line 1092
    if-eqz v5, :cond_9

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_9
    :goto_6
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 1096
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto/16 :goto_1

    .line 1056
    .end local v0           #content:[B
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .end local v9           #oneTime:I
    .end local v10           #size:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_a
    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";\r\n\tname="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 1087
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 1088
    .end local v3           #file:Ljava/io/File;
    .local v1, e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #file:Ljava/io/File;
    :goto_7
    :try_start_9
    iget-object v11, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    const v13, 0x7f0b01a6

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1089
    new-instance v11, Ljava/lang/OutOfMemoryError;

    invoke-direct {v11}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1091
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v11

    .line 1092
    :goto_8
    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 1091
    :cond_b
    :goto_9
    throw v11

    .line 1060
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_c
    :try_start_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Disposition: inline;\r\n\tfilename=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/Attachment;

    iget-object v11, v11, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1091
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_8

    .line 1076
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v0       #content:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #i:I
    .restart local v9       #oneTime:I
    .restart local v10       #size:I
    :cond_d
    if-ne v10, v9, :cond_e

    .line 1077
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write([B)V

    .line 1071
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 1079
    :cond_e
    new-array v7, v10, [B

    .line 1080
    .local v7, lessContent:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v11, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/android/mail/server/SmtpServer;->write([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_a

    .line 1093
    .end local v0           #content:[B
    .end local v3           #file:Ljava/io/File;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .end local v7           #lessContent:[B
    .end local v9           #oneTime:I
    .end local v10           #size:I
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 1094
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1093
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1094
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1093
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_3
    move-exception v1

    .line 1094
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1093
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v0       #content:[B
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #i:I
    .restart local v9       #oneTime:I
    .restart local v10       #size:I
    :catch_4
    move-exception v1

    .line 1094
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1091
    .end local v0           #content:[B
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .end local v9           #oneTime:I
    .end local v10           #size:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_8

    .line 1087
    :catch_5
    move-exception v1

    goto/16 :goto_7

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto/16 :goto_7
.end method

.method static synthetic access$000(Lcom/htc/android/mail/server/SmtpServer;Ljava/lang/String;Ljava/io/BufferedOutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;Ljava/io/BufferedOutputStream;)V

    return-void
.end method

.method public static addEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .local v3, tmp:Ljava/lang/StringBuilder;
    const/4 v4, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    .line 884
    .local v2, mBadChar:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 885
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 886
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-char v5, v2, v1

    if-ne v4, v5, :cond_0

    .line 885
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 890
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    .end local v1           #j:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 882
    :array_0
    .array-data 0x2
        0x22t 0x0t
        0x5ct 0x0t
    .end array-data
.end method

.method public static combine([Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "sep"

    .prologue
    .line 896
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 897
    :cond_0
    const/4 v2, 0x0

    .line 906
    :goto_0
    return-object v2

    .line 898
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .local v1, mystr:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 902
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 903
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 906
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    .line 576
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getUseSSLout()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mUseSSLout:I

    .line 577
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getOutServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutServer:Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getOutPort()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutPort:I

    .line 579
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmtpServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mUseSSLout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mUseSSLout:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mUseSSLout:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 582
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SmtpServer"

    const-string v1, "no ssl or tls"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    .line 584
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutServer:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 594
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mIn:Ljava/io/BufferedInputStream;

    .line 595
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    .line 596
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SmtpServer"

    const-string v1, "leave connect"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_3
    return-void

    .line 586
    :cond_4
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SmtpServer"

    const-string v1, "ssl"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/mail/util/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    .line 588
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutServer:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 589
    iput-object v6, p0, Lcom/htc/android/mail/server/SmtpServer;->mSslError:Lcom/htc/android/mail/ssl/MailSslError;

    .line 590
    iput-object v6, p0, Lcom/htc/android/mail/server/SmtpServer;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 591
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0
.end method

.method private doEHLO()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    iget-boolean v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mSupportEHLO:Z

    if-nez v3, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->doHELO()V

    .line 397
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, localIp:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EHLO ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;

    move-result-object v1

    .line 388
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, v1}, Lcom/htc/android/mail/server/SmtpServer;->processEHLO(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Lcom/htc/android/mail/exception/SmtpException;
    invoke-virtual {v0}, Lcom/htc/android/mail/exception/SmtpException;->printStackTrace()V

    .line 391
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mSupportEHLO:Z

    .line 392
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    .line 394
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->init()V

    goto :goto_0
.end method

.method private doHELO()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, localIp:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HELO ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct {p0, v0}, Lcom/htc/android/mail/server/SmtpServer;->processHELO(Ljava/util/List;)V

    .line 405
    return-void
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filepath"

    .prologue
    .line 1134
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1135
    .local v1, location:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1136
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return-object v0

    .line 1138
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, filename:Ljava/lang/String;
    goto :goto_0
.end method

.method private includeAttach(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "fileFullpath"
    .parameter "filename"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 947
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 948
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 952
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    const-string v9, "message/rfc822"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 953
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 954
    const-string v9, ""

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    .line 956
    .local v8, value:I
    :goto_0
    if-eq v8, v11, :cond_7

    .line 957
    iget-object v9, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v9, v8}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 958
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    goto :goto_0

    .line 963
    .end local v8           #value:I
    :cond_0
    const-string v9, "utf-8"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 964
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";\r\n\tname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 967
    :goto_1
    const-string v9, "Content-Transfer-Encoding: base64"

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 968
    const-string v9, "utf-8"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 969
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Disposition: attachment;\r\n\tfilename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 973
    :goto_2
    const-string v9, ""

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 975
    sget v6, Lcom/htc/android/mail/server/ImapServer;->ONETIME_ENCODE_SIZE:I

    .line 976
    .local v6, oneTime:I
    new-array v0, v6, [B

    .line 979
    .local v0, content:[B
    const/4 v4, 0x0

    .line 980
    .local v4, i:I
    :goto_3
    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 981
    .local v7, size:I
    if-ne v7, v11, :cond_5

    .line 994
    const/4 v0, 0x0

    .line 1008
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1014
    .end local v0           #content:[B
    .end local v4           #i:I
    .end local v6           #oneTime:I
    .end local v7           #size:I
    :cond_1
    :goto_4
    return-void

    .line 966
    :cond_2
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";\r\n\tname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v1

    .line 1003
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    iget-object v9, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    const v11, 0x7f0b01a6

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1004
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1007
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v9

    .line 1008
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1007
    :cond_3
    :goto_5
    throw v9

    .line 971
    :cond_4
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Disposition: attachment;\r\n\tfilename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 984
    .restart local v0       #content:[B
    .restart local v4       #i:I
    .restart local v6       #oneTime:I
    .restart local v7       #size:I
    :cond_5
    if-ne v7, v6, :cond_6

    .line 985
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write([B)V

    .line 979
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 987
    :cond_6
    new-array v5, v7, [B

    .line 988
    .local v5, lessContent:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 989
    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/mail/server/SmtpServer;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .line 1009
    .end local v0           #content:[B
    .end local v4           #i:I
    .end local v5           #lessContent:[B
    .end local v6           #oneTime:I
    .end local v7           #size:I
    :catch_1
    move-exception v1

    .line 1010
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1008
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v8       #value:I
    :cond_7
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 1009
    :catch_2
    move-exception v1

    .line 1010
    .end local v8           #value:I
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1009
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #content:[B
    .restart local v4       #i:I
    .restart local v6       #oneTime:I
    .restart local v7       #size:I
    :catch_3
    move-exception v1

    goto :goto_7
.end method

.method private initMail(Landroid/os/Bundle;)V
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    .line 157
    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->displayName:Ljava/lang/String;

    .line 158
    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->email:Ljava/lang/String;

    .line 161
    const-string v5, "to"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->toText:Ljava/lang/String;

    .line 162
    const-string v5, "cc"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->ccText:Ljava/lang/String;

    .line 163
    const-string v5, "bcc"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->bccText:Ljava/lang/String;

    .line 164
    const-string v5, "importance"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/server/SmtpServer;->mImportance:I

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v4, totalText:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->toText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/server/SmtpServer;->ccText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/server/SmtpServer;->bccText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/Mailaddress;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 171
    .local v1, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->allAddress:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mailaddress;

    .line 174
    .local v0, address:Lcom/htc/android/mail/Mailaddress;
    if-eqz v0, :cond_0

    .line 175
    iget-object v5, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 176
    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->allAddress:Ljava/util/HashSet;

    iget-object v6, v0, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0           #address:Lcom/htc/android/mail/Mailaddress;
    :cond_1
    const-string v5, "subject"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->subjectText:Ljava/lang/String;

    .line 185
    const-string v5, "htmlBody"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->htmlBodyText:Ljava/lang/String;

    .line 186
    const-string v5, "plainBody"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->plainBodyText:Ljava/lang/String;

    .line 188
    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->plainBodyText:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/mail/server/SmtpServer;->htmlBodyText:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/htc/android/mail/server/SmtpServer;->parsingMailBodyFromDraft(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, bodyArray:[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 190
    const/4 v5, 0x0

    aget-object v5, v2, v5

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->plainBodyText:Ljava/lang/String;

    .line 191
    aget-object v5, v2, v7

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->htmlBodyText:Ljava/lang/String;

    .line 194
    :cond_2
    const-string v5, "attachment"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->attachList:Ljava/util/ArrayList;

    .line 195
    iget-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->attachList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/server/SmtpServer;->AttachNum:I

    .line 196
    const-string v5, "related"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    .line 197
    return-void
.end method

.method private issue(Ljava/lang/String;Ljava/io/BufferedOutputStream;)V
    .locals 3
    .parameter "cmd"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    if-eqz p1, :cond_1

    .line 570
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmtpServer"

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

    .line 571
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;Ljava/io/BufferedOutputStream;)V

    .line 573
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
    .line 553
    if-eqz p1, :cond_1

    .line 554
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmtpServer"

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

    .line 555
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 557
    :cond_1
    return-void
.end method

.method private issueBody()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 213
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmtpServer"

    const-string v4, "** Issuing BODY"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->toText:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->toText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_1

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->toText:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/server/SmtpServer;->multiEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->displayName:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->displayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->ccText:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->ccText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->ccText:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/server/SmtpServer;->multiEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 236
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->subjectText:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047SegmentedBase64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/server/SmtpServer;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->writeImportanceHeader()V

    .line 241
    const-string v3, "MIME-Version: 1.0"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 243
    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->AttachNum:I

    if-lez v3, :cond_3

    .line 245
    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->BoundaryNum:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/android/mail/server/SmtpServer;->BoundaryNum:I

    invoke-static {v3}, Lcom/htc/android/mail/Util;->GenBoundary(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mixBoundary:Ljava/lang/String;

    .line 247
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 248
    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->BoundaryNum:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/android/mail/server/SmtpServer;->BoundaryNum:I

    invoke-static {v3}, Lcom/htc/android/mail/Util;->GenBoundary(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedBoundary:Ljava/lang/String;

    .line 250
    :cond_4
    sget-boolean v3, Lcom/htc/android/mail/Mime;->supportHTML:Z

    if-eqz v3, :cond_5

    .line 251
    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->BoundaryNum:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/android/mail/server/SmtpServer;->BoundaryNum:I

    invoke-static {v3}, Lcom/htc/android/mail/Util;->GenBoundary(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->alternativeBoundary:Ljava/lang/String;

    .line 254
    :cond_5
    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->AttachNum:I

    if-lez v3, :cond_6

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: multipart/mixed;\r\n\tboundary=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mixBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 256
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mixBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 259
    :cond_6
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: multipart/related;\r\n\tboundary=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 261
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 264
    :cond_7
    sget-boolean v3, Lcom/htc/android/mail/Mime;->supportHTML:Z

    if-eqz v3, :cond_8

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: multipart/alternative;\r\n\tboundary=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->alternativeBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 266
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->alternativeBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 271
    :cond_8
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->plainBodyText:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 273
    const-string v3, "Content-Type: text/plain;\r\n\tcharset=utf-8"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 274
    const-string v3, "Content-Transfer-Encoding: base64"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 275
    const-string v3, "Content-Disposition: inline"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 276
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 279
    .local v1, comRun:Ljava/lang/Runtime;
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 281
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->plainBodyText:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write([B)V

    .line 295
    :goto_1
    sget-boolean v3, Lcom/htc/android/mail/Mime;->supportHTML:Z

    if-eqz v3, :cond_9

    .line 296
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->alternativeBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 302
    :cond_9
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->htmlBodyText:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 304
    const-string v3, "Content-Type: text/html;\r\n\tcharset=utf-8"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 305
    const-string v3, "Content-Transfer-Encoding: base64"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 306
    const-string v3, "Content-Disposition: inline"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 307
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 312
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->htmlBodyText:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write([B)V

    .line 326
    :goto_2
    sget-boolean v3, Lcom/htc/android/mail/Mime;->supportHTML:Z

    if-eqz v3, :cond_a

    .line 327
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->alternativeBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 329
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 332
    :cond_a
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 333
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->GenRelatedAttachAndBound(Ljava/util/ArrayList;)V

    .line 335
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->relatedBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 337
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 340
    :cond_b
    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->AttachNum:I

    if-lez v3, :cond_11

    .line 341
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->AttachNum:I

    if-ge v2, v3, :cond_10

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mixBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 345
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->attachList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Attachment;

    .line 346
    .local v0, attach:Lcom/htc/android/mail/Attachment;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "SmtpServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file full path is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_c
    iget-object v3, v0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    iget-object v5, v0, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/android/mail/server/SmtpServer;->includeAttach(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 222
    .end local v0           #attach:Lcom/htc/android/mail/Attachment;
    .end local v1           #comRun:Ljava/lang/Runtime;
    .end local v2           #i:I
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->displayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/server/SmtpServer;->addEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_e
    const-string v3, "Content-Type: text/plain;\r\n\tcharset=ISO-8859-1"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 286
    const-string v3, "Content-Transfer-Encoding: 7bit"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 287
    const-string v3, "Content-Disposition: inline"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 288
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 291
    .restart local v1       #comRun:Ljava/lang/Runtime;
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 292
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->plainBodyText:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 316
    :cond_f
    const-string v3, "Content-Type: text/html;\r\n\tcharset=ISO-8859-1"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 317
    const-string v3, "Content-Transfer-Encoding: 7bit"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 318
    const-string v3, "Content-Disposition: inline"

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 319
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 323
    iget-object v3, p0, Lcom/htc/android/mail/server/SmtpServer;->htmlBodyText:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 354
    .restart local v2       #i:I
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/server/SmtpServer;->mixBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 358
    .end local v2           #i:I
    :cond_11
    sget-object v3, Lcom/htc/android/mail/server/SmtpServer;->STR_EOM:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;

    .line 360
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "SmtpServer"

    const-string v4, "[ATS][com.htc.android.mail][send_mail][successful]"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_12
    return-void
.end method

.method private loginAUTH()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 495
    const-string v3, "AUTH LOGIN"

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;
    :try_end_0
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->getUserNameForLoginAUTH()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, userName:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmtpServer"

    const-string v4, "Logging will be disabled totally in CRC build."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "us-ascii"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;
    :try_end_1
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->getPasswordForLoginAUTH()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, password:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v4, "us-ascii"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;
    :try_end_2
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    return-void

    .line 498
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #userName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Lcom/htc/android/mail/exception/SmtpException;
    new-instance v3, Lcom/htc/android/mail/exception/NoSupportAuthException;

    invoke-virtual {v0}, Lcom/htc/android/mail/exception/SmtpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/android/mail/exception/NoSupportAuthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    .end local v0           #e:Lcom/htc/android/mail/exception/SmtpException;
    .restart local v2       #userName:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 510
    .restart local v0       #e:Lcom/htc/android/mail/exception/SmtpException;
    new-instance v3, Lcom/htc/android/mail/exception/AuthorizationException;

    invoke-virtual {v0}, Lcom/htc/android/mail/exception/SmtpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/android/mail/exception/AuthorizationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 517
    .end local v0           #e:Lcom/htc/android/mail/exception/SmtpException;
    .restart local v1       #password:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 518
    .restart local v0       #e:Lcom/htc/android/mail/exception/SmtpException;
    new-instance v3, Lcom/htc/android/mail/exception/AuthorizationException;

    invoke-virtual {v0}, Lcom/htc/android/mail/exception/SmtpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/android/mail/exception/AuthorizationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private loginPlain()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->getInfosForLoginPlain()[Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, infos:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, authString:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmtpServer"

    const-string v4, "Logging will be disabled totally in CRC build."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTH PLAIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "us-ascii"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;
    :try_end_0
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    return-void

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, e:Lcom/htc/android/mail/exception/SmtpException;
    new-instance v3, Lcom/htc/android/mail/exception/AuthorizationException;

    invoke-virtual {v1}, Lcom/htc/android/mail/exception/SmtpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/android/mail/exception/AuthorizationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static multiEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "str"

    .prologue
    .line 823
    const-string v3, ""

    .line 846
    .local v3, result:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v2, mAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 849
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    move-object v4, v3

    .line 877
    .end local v3           #result:Ljava/lang/String;
    .local v4, result:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 852
    .end local v4           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 853
    .local v5, token:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 855
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 856
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 853
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 860
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/Util;->needEncode([B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"=?utf-8?B?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 866
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/Mailaddress;

    iget-object v7, v7, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/android/mail/server/SmtpServer;->addEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 867
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_3

    const-string v7, "SmtpServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDisplayName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 876
    :cond_4
    const/16 v6, 0x2c

    invoke-static {v5, v6}, Lcom/htc/android/mail/server/SmtpServer;->combine([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 877
    .end local v3           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private newTLSSocket()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x1

    .line 473
    invoke-static {v4}, Lcom/htc/android/mail/util/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutServer:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutPort:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    .line 474
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 475
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mIn:Ljava/io/BufferedInputStream;

    .line 476
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    .line 477
    return-void
.end method

.method public static parsingMailBodyFromDraft(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .parameter "plainBodyText"
    .parameter "htmlBodyText"

    .prologue
    const/4 v10, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1144
    const-string v2, ""

    .line 1145
    .local v2, editText:Ljava/lang/String;
    const-string v3, ""

    .line 1146
    .local v3, headerText:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1148
    .local v5, htmlBodyExist:Z
    if-eqz p1, :cond_0

    .line 1149
    const/4 v5, 0x1

    .line 1150
    const-string v7, "<!-- HTC Mail Separation -->"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1151
    .local v4, html:[Ljava/lang/String;
    array-length v7, v4

    if-ne v7, v10, :cond_3

    .line 1152
    aget-object v2, v4, v11

    .line 1153
    aget-object v3, v4, v12

    .line 1154
    aget-object p1, v4, v13

    .line 1170
    .end local v4           #html:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 1171
    const/4 v5, 0x0

    .line 1172
    const-string v7, "<!-- HTC Mail Separation -->"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1173
    .local v6, plain:[Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v10, :cond_7

    .line 1174
    aget-object v2, v6, v11

    .line 1175
    aget-object v3, v6, v12

    .line 1176
    aget-object p0, v6, v13

    .line 1192
    .end local v6           #plain:[Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v5, :cond_d

    .line 1193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v12}, Lcom/htc/android/mail/MailTextUtils;->addArabicAlign(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->fnParseHTMLLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<br><br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, ""

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, ""

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1219
    :cond_2
    :goto_4
    new-array v0, v13, [Ljava/lang/String;

    .line 1220
    .local v0, bodyArray:[Ljava/lang/String;
    aput-object p0, v0, v11

    .line 1221
    aput-object p1, v0, v12

    .line 1222
    return-object v0

    .line 1155
    .end local v0           #bodyArray:[Ljava/lang/String;
    .restart local v4       #html:[Ljava/lang/String;
    :cond_3
    array-length v7, v4

    if-ne v7, v13, :cond_4

    .line 1156
    aget-object v2, v4, v11

    .line 1157
    aget-object v3, v4, v12

    .line 1158
    const-string p1, ""

    goto/16 :goto_0

    .line 1159
    :cond_4
    array-length v7, v4

    if-nez v7, :cond_5

    .line 1160
    const-string v2, ""

    .line 1161
    const-string v3, ""

    .line 1162
    const-string p1, ""

    goto/16 :goto_0

    .line 1163
    :cond_5
    array-length v7, v4

    if-ne v7, v12, :cond_0

    .line 1164
    const-string v2, ""

    .line 1165
    const-string v3, ""

    .line 1166
    aget-object v7, v4, v11

    if-eqz v7, :cond_6

    aget-object v7, v4, v11

    const-string v8, "<!-- HTC Mail Separation -->"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    goto/16 :goto_0

    :cond_6
    const-string p1, ""

    goto :goto_5

    .line 1177
    .end local v4           #html:[Ljava/lang/String;
    .restart local v6       #plain:[Ljava/lang/String;
    :cond_7
    array-length v7, v6

    if-ne v7, v13, :cond_8

    .line 1178
    aget-object v2, v6, v11

    .line 1179
    aget-object v3, v6, v12

    .line 1180
    const-string p0, ""

    goto/16 :goto_1

    .line 1181
    :cond_8
    array-length v7, v6

    if-nez v7, :cond_9

    .line 1182
    const-string v2, ""

    .line 1183
    const-string v3, ""

    .line 1184
    const-string p0, ""

    goto/16 :goto_1

    .line 1185
    :cond_9
    array-length v7, v6

    if-ne v7, v12, :cond_1

    .line 1186
    aget-object v7, v6, v11

    if-eqz v7, :cond_a

    aget-object v7, v6, v11

    const-string v8, "<!-- HTC Mail Separation -->"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1187
    :goto_6
    const-string v3, ""

    .line 1188
    const-string p0, ""

    goto/16 :goto_1

    .line 1186
    :cond_a
    const-string v2, ""

    goto :goto_6

    .line 1193
    .end local v6           #plain:[Ljava/lang/String;
    :cond_b
    const-string v7, "<br>"

    goto/16 :goto_2

    .line 1198
    :cond_c
    const-string v7, "\n"

    goto :goto_3

    .line 1203
    :cond_d
    if-eqz v5, :cond_2

    .line 1204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<br>"

    const-string v9, "\n"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, ""

    :goto_7
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<br>"

    const-string v9, "\n"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1210
    .local v1, bodyHeader:Ljava/lang/StringBuilder;
    invoke-static {p1, v1}, Lcom/htc/android/mail/ComposeActivity;->stripBody(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 1211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v12}, Lcom/htc/android/mail/MailTextUtils;->addArabicAlign(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->fnParseHTMLLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<br><br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, ""

    :goto_8
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 1204
    .end local v1           #bodyHeader:Ljava/lang/StringBuilder;
    :cond_e
    const-string v7, "\n"

    goto :goto_7

    .line 1211
    .restart local v1       #bodyHeader:Ljava/lang/StringBuilder;
    :cond_f
    const-string v7, "<br>"

    goto :goto_8
.end method

.method private processEHLO(Ljava/util/List;)V
    .locals 9
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    const/4 v8, 0x1

    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 411
    .local v2, size:I
    const/4 v3, 0x0

    .line 412
    .local v3, supportAuthLogin:Z
    const/4 v4, 0x0

    .line 413
    .local v4, supportAuthPlainLogin:Z
    const/4 v5, 0x0

    .line 415
    .local v5, supportTLS:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 416
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/ByteString;

    invoke-virtual {v6}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, capa:Ljava/lang/String;
    const-string v6, "AUTH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "LOGIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    const/4 v3, 0x1

    .line 422
    :cond_0
    const-string v6, "AUTH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "PLAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 423
    const/4 v4, 0x1

    .line 426
    :cond_1
    const-string v6, "STARTTLS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 427
    const/4 v5, 0x1

    .line 415
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v0           #capa:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getUseSSLout()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    iget-boolean v6, p0, Lcom/htc/android/mail/server/SmtpServer;->mIsTLSEnable:Z

    if-nez v6, :cond_6

    .line 432
    if-nez v5, :cond_4

    .line 433
    new-instance v6, Lcom/htc/android/mail/exception/NoTLSSupportException;

    invoke-direct {v6}, Lcom/htc/android/mail/exception/NoTLSSupportException;-><init>()V

    throw v6

    .line 435
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->startTLS()V

    .line 452
    :cond_5
    :goto_1
    return-void

    .line 440
    :cond_6
    iget-object v6, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->needSmtpauth()I

    move-result v6

    if-ne v6, v8, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    .line 441
    new-instance v6, Lcom/htc/android/mail/exception/NoSupportAuthException;

    invoke-direct {v6}, Lcom/htc/android/mail/exception/NoSupportAuthException;-><init>()V

    throw v6

    .line 443
    :cond_7
    iget-object v6, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->needSmtpauth()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 444
    if-eqz v3, :cond_8

    .line 445
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->loginAUTH()V

    goto :goto_1

    .line 446
    :cond_8
    if-eqz v4, :cond_5

    .line 447
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->loginPlain()V

    goto :goto_1
.end method

.method private processHELO(Ljava/util/List;)V
    .locals 1
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    new-instance v0, Lcom/htc/android/mail/exception/SmtpException;

    invoke-direct {v0}, Lcom/htc/android/mail/exception/SmtpException;-><init>()V

    throw v0

    .line 458
    :cond_1
    return-void
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

    .line 642
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 644
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmtpServer"

    const-string v3, "enter readLine"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, d:I
    if-eq v0, v4, :cond_2

    .line 646
    int-to-char v2, v0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 647
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 649
    :cond_1
    int-to-char v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 650
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 656
    :cond_2
    if-ne v0, v4, :cond_4

    .line 657
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    .line 658
    const/4 v2, 0x0

    .line 660
    :goto_1
    return-object v2

    .line 653
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 660
    :cond_4
    new-instance v2, Lcom/htc/android/mail/ByteString;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/android/mail/ByteString;-><init>([B)V

    goto :goto_1
.end method

.method private replaceWebLinkToRealLink(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 10
    .parameter "source"
    .parameter "needDecodeBeforeReplace"
    .parameter "needEncodeAfterReturn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1102
    const-string v5, "[weblink]"

    .line 1103
    .local v5, startTag:Ljava/lang/String;
    const-string v1, "[/weblink]"

    .line 1104
    .local v1, endTag:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1105
    .local v4, start:I
    const/4 v0, 0x0

    .line 1106
    .local v0, end:I
    const-string v6, ""

    .line 1107
    .local v6, url:Ljava/lang/String;
    const-string v2, ""

    .line 1109
    .local v2, result:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1110
    invoke-static {p1}, Lcom/htc/android/mail/MailTextUtils;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    :goto_0
    invoke-virtual {v2, v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1116
    invoke-virtual {v2, v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1118
    if-ltz v4, :cond_1

    if-ltz v0, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    if-le v0, v7, :cond_1

    .line 1119
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "</a>"

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1112
    :cond_0
    move-object v2, p1

    goto :goto_0

    .line 1123
    :cond_1
    if-eqz p3, :cond_2

    .line 1124
    invoke-static {v2}, Lcom/htc/android/mail/MailTextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1128
    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    :goto_1
    return-object v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method public static rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 910
    const-string v1, ""

    .line 913
    .local v1, result:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=?utf-8?B?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 918
    :goto_0
    return-object v1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static rfc2047SegmentedBase64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, bufferLen:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 924
    .local v3, stringSize:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    .local v4, subject:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .local v1, bufferStr:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 928
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/16 v6, 0x30

    if-gt v5, v6, :cond_0

    .line 929
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 930
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v5, "\r\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #bufferStr:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .restart local v1       #bufferStr:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 939
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 940
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/server/SmtpServer;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private startTLS()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 461
    const-string v1, "STARTTLS"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;

    .line 464
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->newTLSSocket()V

    .line 465
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mIsTLSEnable:Z

    .line 466
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->doEHLO()V
    :try_end_0
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Lcom/htc/android/mail/exception/SmtpException;
    new-instance v1, Lcom/htc/android/mail/exception/NoTLSSupportException;

    invoke-virtual {v0}, Lcom/htc/android/mail/exception/SmtpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/android/mail/exception/NoTLSSupportException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateMailFrom()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/exception/InvalidMailAddressException;
        }
    .end annotation

    .prologue
    .line 1018
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAIL FROM:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;
    :try_end_0
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    return-void

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, e:Lcom/htc/android/mail/exception/SmtpException;
    new-instance v1, Lcom/htc/android/mail/exception/InvalidMailAddressException;

    invoke-direct {v1}, Lcom/htc/android/mail/exception/InvalidMailAddressException;-><init>()V

    throw v1
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
    .line 664
    const-string v1, "us-ascii"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 666
    .local v0, bytes:[B
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 669
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 670
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 671
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 673
    :cond_0
    return-void
.end method

.method private final write(Ljava/lang/String;Ljava/io/BufferedOutputStream;)V
    .locals 2
    .parameter "data"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    const-string v1, "us-ascii"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 678
    .local v0, bytes:[B
    if-eqz p2, :cond_0

    .line 680
    invoke-virtual {p2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 681
    const/16 v1, 0xd

    invoke-virtual {p2, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 682
    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 683
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 685
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
    .line 689
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 691
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 692
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 693
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 695
    :cond_0
    return-void
.end method

.method private writeImportanceHeader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    iget v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mImportance:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    :pswitch_0
    return-void

    .line 202
    :pswitch_1
    const-string v0, "Importance: low"

    invoke-direct {p0, v0}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_2
    const-string v0, "Importance: high"

    invoke-direct {p0, v0}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final writeWithoutNewLine([B)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 701
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 703
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkAccount()V
    .locals 2

    .prologue
    .line 815
    iget v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mUseSSLout:I

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getUseSSLout()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutServer:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getOutServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOutPort:I

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getOutPort()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSupportEHLO:Z

    goto :goto_0
.end method

.method public checkNewAccount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1026
    iget v0, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    if-eq v0, v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    .line 1029
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    if-ne v0, v1, :cond_1

    .line 1030
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->init()V

    .line 1031
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->validateMailFrom()V

    .line 1033
    :cond_1
    iget v0, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    if-eq v0, v1, :cond_2

    .line 1034
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    .line 1035
    :cond_2
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    .line 707
    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    .line 708
    .local v2, socket:Ljava/net/Socket;
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    .line 709
    .local v1, out:Ljava/io/BufferedOutputStream;
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mIn:Ljava/io/BufferedInputStream;

    .line 711
    .local v0, in:Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/mail/server/SmtpServer$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/htc/android/mail/server/SmtpServer$1;-><init>(Lcom/htc/android/mail/server/SmtpServer;Ljava/io/BufferedOutputStream;Ljava/net/Socket;Ljava/io/BufferedInputStream;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 744
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    .line 746
    return-void
.end method

.method public getInfosForLoginPlain()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 523
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 524
    .local v0, infos:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmail.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 526
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getOutuserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 527
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getOutpassword()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 533
    :goto_0
    return-object v0

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getOutuserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 530
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getOutuserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 531
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getOutpassword()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public getPasswordForLoginAUTH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getOutpassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslError()Lcom/htc/android/mail/ssl/MailSslError;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSslError:Lcom/htc/android/mail/ssl/MailSslError;

    return-object v0
.end method

.method public getUserNameForLoginAUTH()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x2f

    .line 480
    const-string v0, ""

    .line 482
    .local v0, userName:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProviderGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProviderGroup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getOutuserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mX509Certificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method protected init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 364
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmtpServer"

    const-string v1, "enter init"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    iput-boolean v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mIsTLSEnable:Z

    .line 368
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->connect()V

    .line 369
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;

    .line 371
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->doEHLO()V

    .line 373
    iput v2, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    .line 374
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer;->mSocket:Ljava/net/Socket;

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

.method protected issue(Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    if-eqz p1, :cond_1

    .line 562
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmtpServer"

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

    .line 563
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/SmtpServer;->write(Ljava/lang/String;)V

    .line 565
    :cond_1
    return-void
.end method

.method public probe()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->checkAccount()V

    .line 767
    iget v1, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 784
    :goto_0
    return-void

    .line 772
    :cond_0
    :try_start_0
    const-string v1, "NOOP"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SmtpServer"

    const-string v2, "probe fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->isStop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    throw v0

    .line 779
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    goto :goto_0

    .line 780
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 781
    .local v0, e:Lcom/htc/android/mail/exception/SmtpException;
    const-string v1, "SmtpServer"

    const-string v2, "probe fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    goto :goto_0
.end method

.method protected readResponse()Ljava/util/List;
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
            Ljava/io/IOException;,
            Lcom/htc/android/mail/exception/SmtpException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x35

    const/16 v6, 0x34

    const/4 v5, 0x0

    .line 600
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ByteString;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v0, errorMessage:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 608
    .local v1, line:Lcom/htc/android/mail/ByteString;
    if-nez v1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    .line 610
    new-instance v3, Lcom/htc/android/mail/exception/SmtpException;

    invoke-direct {v3}, Lcom/htc/android/mail/exception/SmtpException;-><init>()V

    throw v3

    .line 612
    :cond_0
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmtpServer"

    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :goto_0
    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_6

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_6

    .line 617
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v3

    if-eq v3, v6, :cond_2

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v3

    if-ne v3, v7, :cond_3

    .line 618
    :cond_2
    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->readLine()Lcom/htc/android/mail/ByteString;

    move-result-object v1

    .line 621
    if-nez v1, :cond_4

    .line 622
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    .line 623
    new-instance v3, Lcom/htc/android/mail/exception/SmtpException;

    invoke-direct {v3}, Lcom/htc/android/mail/exception/SmtpException;-><init>()V

    throw v3

    .line 625
    :cond_4
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "SmtpServer"

    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_6
    invoke-virtual {v1, v5}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v3

    if-eq v3, v6, :cond_7

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/ByteString;->byteAt(I)B

    move-result v3

    if-ne v3, v7, :cond_a

    .line 630
    :cond_7
    invoke-virtual {v1}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "SmtpServer"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "challenge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 633
    new-instance v3, Lcom/htc/android/mail/exception/AolSpamException;

    invoke-direct {v3}, Lcom/htc/android/mail/exception/AolSpamException;-><init>()V

    throw v3

    .line 635
    :cond_9
    new-instance v3, Lcom/htc/android/mail/exception/SmtpException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/android/mail/exception/SmtpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 638
    :cond_a
    return-object v2
.end method

.method public refresh(Lcom/htc/android/mail/Mailbox;)I
    .locals 1
    .parameter "mailbox"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I
    .locals 1
    .parameter "mailbox"
    .parameter "parameter"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public sendMail(Landroid/os/Bundle;)V
    .locals 3
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->checkAccount()V

    .line 133
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->probe()V

    .line 135
    iget v1, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->init()V

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/SmtpServer;->initMail(Landroid/os/Bundle;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAIL FROM:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;

    .line 144
    iget-object v1, p0, Lcom/htc/android/mail/server/SmtpServer;->allAddress:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCPT TO:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;

    goto :goto_0

    .line 150
    :cond_1
    const-string v1, "DATA"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->readResponse()Ljava/util/List;

    .line 153
    invoke-direct {p0}, Lcom/htc/android/mail/server/SmtpServer;->issueBody()V

    .line 154
    return-void
.end method

.method public setAccount(Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 788
    iput-object p1, p0, Lcom/htc/android/mail/server/SmtpServer;->mAccount:Lcom/htc/android/mail/Account;

    .line 790
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 794
    iput-object p1, p0, Lcom/htc/android/mail/server/SmtpServer;->mContext:Landroid/content/Context;

    .line 796
    return-void
.end method

.method public setX509Certificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 800
    iput-object p1, p0, Lcom/htc/android/mail/server/SmtpServer;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 801
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/SmtpServer;->stop(Z)V

    .line 806
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 810
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/SmtpServer;->setStop(Z)V

    .line 811
    invoke-virtual {p0}, Lcom/htc/android/mail/server/SmtpServer;->close()V

    .line 812
    return-void
.end method
