.class public Lcom/htc/bluetooth/map/email/MAPEmailProvider;
.super Lcom/broadcom/bt/service/map/provider/BaseProvider;
.source "MAPEmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;
    }
.end annotation


# static fields
.field static final DEFAULT_TMP_DIR:Ljava/lang/String; = "/data/data/com.htc.bluetooth.map.email/map"

.field private static final DS_EMAIL_DISPLAY_NAME_ID:I = 0x0

.field private static final DS_EMAIL_ID:Ljava/lang/String; = "EMAIL"

.field private static final ENCODED_WORDS_END:Ljava/lang/String; = "?="

.field private static final ENCODED_WORDS_START:Ljava/lang/String; = "=?UTF-8?Q?"

.field private static final MAXIMUM_NUM_NOTIFICATIONS:I = 0x32

.field private static final MailProviderSizeLimit:J = 0xc8000L

.field static final OPERATION_GET_MSG:I = 0x2

.field static final OPERATION_GET_MSG_LISTING:I = 0x1

.field static final OPERATION_NONE:I = 0x0

.field static final OPERATION_SET_READ_STATUS:I = 0x3

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet; = null

.field private static final PROVIDER_DISPLAY_NAME_ID:I = 0x0

.field private static final PROVIDER_ID:Ljava/lang/String; = "com.broadcom.map.email"

.field private static final TAG:Ljava/lang/String; = "MAPEmailProvider "


# instance fields
.field mCurrentEmailsCount:J

.field mGetMsgDataSourceId:Ljava/lang/String;

.field mGetMsgFolderPath:Ljava/lang/String;

.field mGetMsgMessage:Lcom/htc/util/mail/MailMessage;

.field mGetMsgMessageId:Ljava/lang/String;

.field mGetMsgRequestId:I

.field mGetMsgVirtualFolder:Ljava/lang/String;

.field mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field mInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

.field private mMailAccount:Lcom/htc/util/mail/MailAccount;

.field mOpCode:I

.field mReadStatusMessage:Lcom/htc/util/mail/MailMessage;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTmpDirectory:Ljava/io/File;

.field mfRead:Z

.field mfRegistered:Z

.field msgListNumMsgs:I

.field msgListStartOffset:I

.field msgListSubjectMaxLength:I

.field msgListdatasourceId:Ljava/lang/String;

.field msgListfolderPath:Ljava/lang/String;

.field msgListrequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->PRINTABLE_CHARS:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;-><init>()V

    .line 100
    new-instance v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    invoke-direct {v0, p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;-><init>(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)V

    iput-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    .line 103
    iput-boolean v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRegistered:Z

    .line 120
    iput v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListStartOffset:I

    .line 127
    iput v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    .line 129
    iput v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListSubjectMaxLength:I

    .line 132
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mInfos:Ljava/util/LinkedList;

    .line 135
    iput v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgRequestId:I

    .line 144
    iput-boolean v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRead:Z

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mCurrentEmailsCount:J

    .line 153
    return-void
.end method

.method private GetFolderIgnoreCase(Ljava/lang/String;)Lcom/htc/util/mail/Folder;
    .locals 6
    .parameter "folderName"

    .prologue
    .line 953
    const-string v3, "MAPEmailProvider "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetFolderIgnoreCase  folderName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailAccount;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 955
    .local v0, fList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 956
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/Folder;

    .line 957
    .local v1, fTemp:Lcom/htc/util/mail/Folder;
    invoke-virtual {v1}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 958
    const-string v3, "MAPEmailProvider "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetFolderIgnoreCase  Got folder Name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .end local v1           #fTemp:Lcom/htc/util/mail/Folder;
    :goto_1
    return-object v1

    .line 955
    .restart local v1       #fTemp:Lcom/htc/util/mail/Folder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 962
    .end local v1           #fTemp:Lcom/htc/util/mail/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mNotificationsEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/util/mail/MailAccount;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/bluetooth/map/email/MAPEmailProvider;Lcom/htc/util/mail/MailAccount;)Lcom/htc/util/mail/MailAccount;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->PRINTABLE_CHARS:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mNotificationsEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->start()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/bluetooth/map/email/MAPEmailProvider;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->unregisterDS(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/bluetooth/map/email/MAPEmailProvider;)Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    return-object v0
.end method

.method private deleteTemporaryMessageFile(Ljava/lang/String;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 1332
    if-nez p1, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    const/4 v1, 0x0

    .line 1336
    .local v1, filePath:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    .line 1337
    move-object v1, p1

    .line 1342
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1344
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    .end local v0           #f:Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1338
    :cond_3
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1339
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getBMsgBody(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;)Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .locals 3
    .parameter "p_env"

    .prologue
    .line 1404
    const/4 v0, 0x0

    .line 1406
    .local v0, msgBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez p1, :cond_0

    .line 1408
    const-string v1, "MAPEmailProvider "

    const-string v2, "Envelope is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v1, 0x0

    .line 1423
    :goto_0
    return-object v1

    .line 1415
    :cond_0
    invoke-virtual {p1}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v0

    .line 1416
    if-eqz v0, :cond_1

    .line 1418
    const-string v1, "MAPEmailProvider "

    const-string v2, "Found bmessage body"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, v0

    .line 1423
    goto :goto_0

    .line 1421
    :cond_1
    invoke-virtual {p1}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getChildEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1
.end method


# virtual methods
.method protected disableNotifications(Ljava/lang/String;)Z
    .locals 2
    .parameter "datasourceId"

    .prologue
    .line 877
    const-string v0, "MAPEmailProvider "

    const-string v1, "disableNotifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mNotificationsEnabled:Z

    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method protected enableNotifications(Ljava/lang/String;)Z
    .locals 3
    .parameter "datasourceId"

    .prologue
    const/4 v2, 0x1

    .line 869
    const-string v0, "MAPEmailProvider "

    const-string v1, "enableNotifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iput-boolean v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mNotificationsEnabled:Z

    .line 872
    return v2
.end method

.method getFolderMappings()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 751
    const-string v4, "MAPEmailProvider "

    const-string v5, "getFolderMappings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-array v2, v8, [Ljava/lang/String;

    .line 753
    .local v2, folderMappings:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 754
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 753
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    :cond_0
    iget-object v4, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v4}, Lcom/htc/util/mail/MailAccount;->getFolderPathNameList()[Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, folderList:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_6

    .line 761
    iget-object v4, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/htc/util/mail/MailAccount;->getFolder(Ljava/lang/String;)Lcom/htc/util/mail/Folder;

    move-result-object v0

    .line 763
    .local v0, f:Lcom/htc/util/mail/Folder;
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->isInBoxFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 765
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inbox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 768
    :cond_1
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->isOutFolder()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 769
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outbox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 773
    :cond_2
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->isSentFolder()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 775
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 778
    :cond_3
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->isTrashFolder()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 779
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 782
    :cond_4
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->isDraftFolder()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 783
    const/4 v4, 0x4

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "draft="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 760
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 786
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_7

    .line 787
    const-string v4, "MAPEmailProvider "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Folder Mapping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 789
    :cond_7
    return-object v2
.end method

.method protected getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    const-string v0, "com.broadcom.map.email"

    return-object v0
.end method

.method protected onClientConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 885
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void
.end method

.method protected onClientDisconnected()V
    .locals 2

    .prologue
    .line 891
    const-string v0, "MAPEmailProvider "

    const-string v1, "onClientDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method protected declared-synchronized onDSDiscoverEvent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1430
    monitor-enter p0

    :try_start_0
    const-string v1, "ds_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, providerId:Ljava/lang/String;
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onDSDiscoverEvent] provider Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const-string v1, "EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1435
    iget-boolean v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mIsStarted:Z

    if-nez v1, :cond_0

    .line 1437
    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    :goto_0
    monitor-exit p0

    return-void

    .line 1440
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->registerDatasources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1430
    .end local v0           #providerId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1445
    .restart local v0       #providerId:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v1, "MAPEmailProvider "

    const-string v2, "Ignore this DS event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "request_id"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 897
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetFolderListing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {p3}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetFolderListing(): EMAIL only contains root folders...Request path is not the root folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V

    .line 921
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v1}, Lcom/htc/util/mail/MailAccount;->getFolderPathNameList()[Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, folderList:[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 912
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetFolderListing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " No folders found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :cond_1
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 4
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSet"
    .parameter "includeAttachment"

    .prologue
    .line 926
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetMsg MsgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", folder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->GetFolderIgnoreCase(Ljava/lang/String;)Lcom/htc/util/mail/Folder;

    move-result-object v0

    .line 931
    .local v0, f:Lcom/htc/util/mail/Folder;
    if-nez v0, :cond_0

    .line 932
    const-string v1, "MAPEmailProvider "

    const-string v2, "Error getting folder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v1, p1, p2, p5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    .line 937
    iput p1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgRequestId:I

    .line 938
    iput-object p2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgDataSourceId:Ljava/lang/String;

    .line 939
    iput-object p3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgFolderPath:Ljava/lang/String;

    .line 940
    iput-object p5, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgMessageId:Ljava/lang/String;

    .line 941
    iput p1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgRequestId:I

    .line 942
    iput-object p4, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mGetMsgVirtualFolder:Ljava/lang/String;

    .line 944
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/Folder;->getMessage(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 945
    const-string v1, "MAPEmailProvider "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling getMessage, messageId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v1, p1, p2, p5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_1
    return-void
.end method

.method protected onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 27
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxListCnt"
    .parameter "listStartOffset"
    .parameter "subjectLength"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 969
    const-string v10, "MAPEmailProvider "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onGetMsgListing folderPath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " listStartOffset = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  maxListCnt = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "parameterMask = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " pri_status = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p14

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " subjectLength = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    move/from16 v23, p7

    .line 972
    .local v23, maxSubjectLength:I
    if-gez v23, :cond_0

    const/16 v10, -0x80

    move/from16 v0, v23

    if-lt v0, v10, :cond_0

    .line 973
    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    .line 977
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_2

    .line 978
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_1
    :goto_0
    return-void

    .line 982
    :cond_2
    and-int/lit8 v10, p8, 0x4

    const/4 v13, 0x4

    if-ne v10, v13, :cond_3

    .line 986
    const-string v10, "MAPEmailProvider "

    const-string v13, "onGetMsgListing - Filtering out email - no responses send"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 990
    :cond_3
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->GetFolderIgnoreCase(Ljava/lang/String;)Lcom/htc/util/mail/Folder;

    move-result-object v3

    .line 991
    .local v3, f:Lcom/htc/util/mail/Folder;
    if-eqz v3, :cond_12

    .line 994
    if-lez p5, :cond_d

    .line 995
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    invoke-virtual {v3, v10}, Lcom/htc/util/mail/Folder;->setMailMessageListener(Lcom/htc/util/mail/IMailMessageListener;)V

    .line 997
    const/4 v12, 0x0

    .line 998
    .local v12, filterMask:I
    const-wide/16 v4, 0x0

    .line 999
    .local v4, periodBeginMilliSec:J
    const-wide/16 v6, 0x0

    .line 1000
    .local v6, periodEndMilliSec:J
    const/4 v11, 0x0

    .line 1001
    .local v11, filterPriority:I
    const/4 v8, 0x0

    .line 1002
    .local v8, filterReadStatus:I
    if-eqz p9, :cond_4

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    if-eqz p10, :cond_4

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1003
    new-instance v25, Landroid/text/format/Time;

    invoke-direct/range {v25 .. v25}, Landroid/text/format/Time;-><init>()V

    .line 1004
    .local v25, time:Landroid/text/format/Time;
    const-string v10, "MAPEmailProvider "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Filter for Time period begin = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " end = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p10

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    move-object/from16 v0, v25

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1006
    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 1008
    move-object/from16 v0, v25

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1009
    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 1011
    or-int/lit8 v12, v12, 0x1

    .line 1013
    .end local v25           #time:Landroid/text/format/Time;
    :cond_4
    invoke-static/range {p11 .. p11}, Lcom/broadcom/bt/service/map/BluetoothMAP;->isValidMsgStatus(B)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1015
    const/4 v10, 0x2

    move/from16 v0, p11

    if-ne v0, v10, :cond_a

    .line 1017
    const-string v10, "MAPEmailProvider "

    const-string v13, "Filter for Read emails"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v8, 0x0

    .line 1024
    :goto_1
    or-int/lit8 v12, v12, 0x2

    .line 1028
    :cond_5
    if-eqz p12, :cond_6

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    const-string v10, "*"

    move-object/from16 v0, p12

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_6

    .line 1029
    const-string v10, "MAPEmailProvider "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Filter for recipient  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p12

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    or-int/lit8 v12, v12, 0x4

    .line 1033
    :cond_6
    if-eqz p13, :cond_7

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    const-string v10, "*"

    move-object/from16 v0, p13

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    .line 1034
    const-string v10, "MAPEmailProvider "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Filter for originator = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    or-int/lit8 v12, v12, 0x8

    .line 1038
    :cond_7
    const-string v10, "MAPEmailProvider "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parameter = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " PRIORITY MASK = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x800

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    move/from16 v0, p4

    and-int/lit16 v10, v0, 0x800

    if-eqz v10, :cond_8

    .line 1042
    packed-switch p14, :pswitch_data_0

    .line 1058
    :cond_8
    :goto_2
    const/16 v22, 0x0

    .line 1059
    .local v22, fResult:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mInfos:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    .line 1060
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListdatasourceId:Ljava/lang/String;

    .line 1061
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListrequestId:I

    .line 1062
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListfolderPath:Ljava/lang/String;

    .line 1064
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListSubjectMaxLength:I

    .line 1066
    if-eqz p6, :cond_9

    .line 1067
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListStartOffset:I

    .line 1069
    :cond_9
    if-eqz p5, :cond_b

    .line 1070
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    .line 1076
    :goto_3
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    .line 1077
    if-eqz v12, :cond_c

    .line 1079
    const-string v10, "MAPEmailProvider "

    const-string v13, "onGetMsgListing filtering enabled"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v9, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p12

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p13

    .line 1082
    invoke-virtual/range {v3 .. v12}, Lcom/htc/util/mail/Folder;->getMessages(JJILjava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v22

    .line 1088
    .end local v9           #recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    if-nez v22, :cond_1

    .line 1089
    const-string v10, "MAPEmailProvider "

    const-string v13, "onGetMsgListing - failed to call either getMessages or getAllMessages"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1020
    .end local v22           #fResult:Z
    :cond_a
    const-string v10, "MAPEmailProvider "

    const-string v13, "Filter for Unread emails"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1044
    :pswitch_0
    const-string v10, "MAPEmailProvider "

    const-string v13, "No filtering for priority"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1047
    :pswitch_1
    const-string v10, "MAPEmailProvider "

    const-string v13, "filtering for high priority"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    or-int/lit8 v12, v12, 0x10

    .line 1049
    const/4 v11, 0x4

    .line 1050
    goto/16 :goto_2

    .line 1052
    :pswitch_2
    const-string v10, "MAPEmailProvider "

    const-string v13, "filtering for non-high priority"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    or-int/lit8 v12, v12, 0x10

    .line 1054
    const/4 v11, 0x3

    goto/16 :goto_2

    .line 1072
    .restart local v22       #fResult:Z
    :cond_b
    const v10, 0xffff

    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->msgListNumMsgs:I

    goto :goto_3

    .line 1084
    :cond_c
    const-string v10, "MAPEmailProvider "

    const-string v13, "onGetMsgListing filtering disabled"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getAllMessages()Z

    move-result v22

    goto :goto_4

    .line 1092
    .end local v4           #periodBeginMilliSec:J
    .end local v6           #periodEndMilliSec:J
    .end local v8           #filterReadStatus:I
    .end local v11           #filterPriority:I
    .end local v12           #filterMask:I
    .end local v22           #fResult:Z
    :cond_d
    if-nez p5, :cond_11

    .line 1094
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getMessageNum()I

    move-result v26

    .line 1095
    .local v26, totalMsgCount:I
    const/16 v20, 0x0

    .line 1097
    .local v20, newMsg:B
    const-string v10, "MAPEmailProvider "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "msg size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    if-lez v26, :cond_10

    .line 1100
    move/from16 v0, v26

    new-array v0, v0, [Lcom/broadcom/bt/service/map/MessageInfo;

    move-object/from16 v21, v0

    .line 1102
    .local v21, msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getUnReadMessageNum()I

    move-result v24

    .line 1103
    .local v24, numOfUnreadMsg:I
    const-string v10, "MAPEmailProvider "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unread msg size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    if-lez v24, :cond_e

    .line 1106
    const/16 v20, 0x1

    .line 1109
    :cond_e
    if-nez v21, :cond_f

    .line 1110
    const-string v10, "MAPEmailProvider "

    const-string v13, "onGetMsgListing(): Unable to get memory!"

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v15, "com.broadcom.map.email"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v14, p2

    move-object/from16 v16, p1

    move-object/from16 v17, p3

    invoke-virtual/range {v13 .. v21}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)Z

    goto/16 :goto_0

    .line 1116
    .end local v21           #msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v24           #numOfUnreadMsg:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1119
    .end local v20           #newMsg:B
    .end local v26           #totalMsgCount:I
    :cond_11
    const-string v10, "MAPEmailProvider "

    const-string v13, "onGetMsgListing - invaild max list count"

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1124
    :cond_12
    const-string v10, "MAPEmailProvider "

    const-string v13, "OnGetMsgListing - did not get folder for path"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 37
    .parameter "request_id"
    .parameter "data_source_id"
    .parameter "msg_transparent"
    .parameter "msg_retry"
    .parameter "msg_charset"
    .parameter "msgContentUri"
    .parameter "folderPath"
    .parameter "virtualFolderPath"

    .prologue
    .line 1134
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onPushMsg folderPath = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " Virtual Folder Path = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "Content URI = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/16 v33, 0x1

    move-object/from16 v0, p7

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->GetFolderIgnoreCase(Ljava/lang/String;)Lcom/htc/util/mail/Folder;

    move-result-object v17

    .line 1138
    .local v17, f:Lcom/htc/util/mail/Folder;
    if-nez v17, :cond_0

    .line 1139
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg  getFolder failed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1329
    :goto_0
    return-void

    .line 1144
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/mail/Folder;->isDraftFolder()Z

    move-result v33

    if-nez v33, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/mail/Folder;->isOutFolder()Z

    move-result v33

    if-nez v33, :cond_1

    .line 1145
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg can push only to draft or outbox folders"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto :goto_0

    .line 1153
    :cond_1
    const/16 v33, 0x1

    move-object/from16 v0, p7

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1154
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg  Push not allowed to root folder"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto :goto_0

    .line 1158
    :cond_2
    const/4 v14, 0x0

    .line 1159
    .local v14, content:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1160
    .local v15, destAddress:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1161
    .local v21, isRead:Z
    const/16 v29, 0x0

    .line 1163
    .local v29, subject:Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->parseBMessage(Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v11

    .line 1164
    .local v11, bMessage:Lcom/broadcom/bt/util/bmsg/BMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v34

    invoke-static/range {v33 .. v35}, Lcom/htc/util/mail/MailMessage;->buildMessageForSend(Landroid/content/Context;J)Lcom/htc/util/mail/MailMessage;

    move-result-object v22

    .line 1167
    .local v22, m:Lcom/htc/util/mail/MailMessage;
    :try_start_0
    invoke-virtual {v11}, Lcom/broadcom/bt/util/bmsg/BMessage;->getMessageType()B

    move-result v24

    .line 1171
    .local v24, msgType:B
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onPushMsg(): Message type = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/16 v33, 0x1

    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 1174
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg(): Unable to process BMessage: not an EMail message type"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    .end local v24           #msgType:B
    :goto_1
    invoke-virtual {v11}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1300
    const/4 v11, 0x0

    .line 1302
    if-eqz v14, :cond_3

    if-nez v15, :cond_16

    .line 1303
    :cond_3
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg(): Unable to push Email text message. Invalid destination address or content"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1178
    .restart local v24       #msgType:B
    :cond_4
    :try_start_1
    invoke-virtual {v11}, Lcom/broadcom/bt/util/bmsg/BMessage;->isRead()Z

    move-result v21

    .line 1181
    invoke-virtual {v11}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v10

    .line 1182
    .local v10, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    if-nez v10, :cond_5

    .line 1183
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg(): Unable to process BMessage. Envelope is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1295
    .end local v10           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v24           #msgType:B
    :catch_0
    move-exception v16

    .line 1296
    .local v16, e:Ljava/lang/Exception;
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg(): Error parsing BMessage"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1188
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v10       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v24       #msgType:B
    :cond_5
    :try_start_2
    invoke-virtual {v10}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v13

    .line 1189
    .local v13, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    if-nez v13, :cond_6

    .line 1190
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg(): Unable to process BMessage. Recipient is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1195
    :cond_6
    const/16 v33, 0x3

    move/from16 v0, v33

    invoke-virtual {v13, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->getProperty(B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    move-result-object v12

    .line 1197
    .local v12, bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    if-nez v12, :cond_7

    .line 1198
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg(): Unable to process BMessage. Recipient TEL property is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1202
    :cond_7
    invoke-virtual {v12}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 1206
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->getBMsgBody(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;)Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v8

    .line 1208
    .local v8, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez v8, :cond_8

    .line 1209
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg(): Unable to process BMessage. Body is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1214
    :cond_8
    invoke-virtual {v8}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->getContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v9

    .line 1215
    .local v9, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v9, :cond_9

    .line 1216
    const-string v33, "MAPEmailProvider "

    const-string v34, "onPushMsg(): Unable to process BMessage. Cintent is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1219
    :cond_9
    invoke-virtual {v9}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getFirstMessageContent()Ljava/lang/String;

    move-result-object v14

    .line 1220
    const/16 v25, 0x0

    .line 1221
    .local v25, next:Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getNextMessageContent()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_a

    .line 1222
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 1224
    :cond_a
    const-string v33, "MAPEmailProvider "

    const-string v34, "BEGIN First Message Content"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const-string v33, "MAPEmailProvider "

    move-object/from16 v0, v33

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v33, "MAPEmailProvider "

    const-string v34, "END Message Content"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    new-instance v23, Lcom/htc/util/mail/mimemessage/MimeMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;-><init>(Landroid/content/Context;)V

    .line 1230
    .local v23, mimeMessage:Lcom/htc/util/mail/mimemessage/MimeMessage;
    new-instance v20, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1231
    .local v20, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 1234
    sget-object v33, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->TO:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getRecipients(Lcom/htc/util/mail/mimemessage/Message$RecipientType;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v26

    .line 1235
    .local v26, recipients:[Lcom/htc/util/mail/mimemessage/Address;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v33, v0

    if-lez v33, :cond_b

    .line 1237
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_c

    .line 1239
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Got TO recipient = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    aget-object v35, v26, v18

    invoke-virtual/range {v35 .. v35}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/16 v33, 0x0

    aget-object v34, v26, v18

    invoke-virtual/range {v34 .. v34}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/MailMessage;->addAddress(ILjava/lang/String;)V

    .line 1237
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1244
    .end local v18           #i:I
    :cond_b
    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Lcom/htc/util/mail/MailMessage;->addAddress(ILjava/lang/String;)V

    .line 1246
    :cond_c
    sget-object v33, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->CC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getRecipients(Lcom/htc/util/mail/mimemessage/Message$RecipientType;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v28

    .line 1247
    .local v28, recipientsCC:[Lcom/htc/util/mail/mimemessage/Address;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_d

    .line 1249
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Got CC recipient = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    aget-object v35, v28, v18

    invoke-virtual/range {v35 .. v35}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const/16 v33, 0x1

    aget-object v34, v28, v18

    invoke-virtual/range {v34 .. v34}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/MailMessage;->addAddress(ILjava/lang/String;)V

    .line 1247
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1254
    :cond_d
    sget-object v33, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->BCC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getRecipients(Lcom/htc/util/mail/mimemessage/Message$RecipientType;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v27

    .line 1255
    .local v27, recipientsBCC:[Lcom/htc/util/mail/mimemessage/Address;
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 1257
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Got BCC recipient = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    aget-object v35, v27, v18

    invoke-virtual/range {v35 .. v35}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const/16 v33, 0x2

    aget-object v34, v27, v18

    invoke-virtual/range {v34 .. v34}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/MailMessage;->addAddress(ILjava/lang/String;)V

    .line 1255
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1262
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getSubject()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailMessage;->setSubject(Ljava/lang/String;)V

    .line 1263
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v32, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Part;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v7, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Part;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-static {v0, v1, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->collectParts(Lcom/htc/util/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1267
    .local v5, Htmlbody:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1270
    .local v6, Textbody:Ljava/lang/StringBuilder;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/htc/util/mail/mimemessage/Part;

    .line 1271
    .local v31, viewable:Lcom/htc/util/mail/mimemessage/Part;
    invoke-interface/range {v31 .. v31}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v33

    const-string v34, "text/html"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 1272
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const-wide/32 v35, 0xc8000

    cmp-long v33, v33, v35

    if-lez v33, :cond_10

    .line 1273
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Due to Htmlbdoy is large. stop get the content."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    .end local v31           #viewable:Lcom/htc/util/mail/mimemessage/Part;
    :cond_f
    :goto_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v33

    if-lez v33, :cond_15

    .line 1291
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailMessage;->setBody(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1276
    .restart local v31       #viewable:Lcom/htc/util/mail/mimemessage/Part;
    :cond_10
    const-wide/32 v33, 0xc8000

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    sub-long v33, v33, v35

    move-object/from16 v0, v31

    move-wide/from16 v1, v33

    invoke-static {v0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getTextFromPart(Lcom/htc/util/mail/mimemessage/Part;J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Html:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1278
    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v33

    if-nez v33, :cond_14

    :cond_12
    invoke-interface/range {v31 .. v31}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v33

    const-string v34, "text/plain"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 1279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const-wide/32 v35, 0xc8000

    cmp-long v33, v33, v35

    if-lez v33, :cond_13

    .line 1280
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Due to Textbody is large. stop get the content."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1283
    :cond_13
    const-wide/32 v33, 0xc8000

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    sub-long v33, v33, v35

    move-object/from16 v0, v31

    move-wide/from16 v1, v33

    invoke-static {v0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getTextFromPart(Lcom/htc/util/mail/mimemessage/Part;J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Plain:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1286
    :cond_14
    const-string v33, "MAPEmailProvider "

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unknown body:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v31 .. v31}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v31 .. v31}, Lcom/htc/util/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1293
    .end local v31           #viewable:Lcom/htc/util/mail/mimemessage/Part;
    :cond_15
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/htc/util/mail/MailMessage;->setBody(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1309
    .end local v5           #Htmlbody:Ljava/lang/StringBuilder;
    .end local v6           #Textbody:Ljava/lang/StringBuilder;
    .end local v7           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Part;>;"
    .end local v8           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v9           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v10           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v12           #bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .end local v13           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v18           #i:I
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #is:Ljava/io/ByteArrayInputStream;
    .end local v23           #mimeMessage:Lcom/htc/util/mail/mimemessage/MimeMessage;
    .end local v24           #msgType:B
    .end local v25           #next:Ljava/lang/String;
    .end local v26           #recipients:[Lcom/htc/util/mail/mimemessage/Address;
    .end local v27           #recipientsBCC:[Lcom/htc/util/mail/mimemessage/Address;
    .end local v28           #recipientsCC:[Lcom/htc/util/mail/mimemessage/Address;
    .end local v32           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Part;>;"
    :cond_16
    const/16 v30, 0x0

    .line 1310
    .local v30, uri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/mail/Folder;->isDraftFolder()Z

    move-result v33

    if-eqz v33, :cond_18

    .line 1312
    invoke-virtual/range {v22 .. v22}, Lcom/htc/util/mail/MailMessage;->saveMailtoDraft()Landroid/net/Uri;

    move-result-object v30

    .line 1321
    :cond_17
    :goto_8
    if-eqz v30, :cond_19

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v33, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/util/mail/MailMessage;->getId()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v34

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1314
    :cond_18
    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/mail/Folder;->isOutFolder()Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1316
    invoke-virtual/range {v22 .. v22}, Lcom/htc/util/mail/MailMessage;->saveMailToOutBox()Landroid/net/Uri;

    move-result-object v30

    .line 1317
    if-eqz v30, :cond_17

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/htc/util/mail/MailAccount;->getOutFolderId()I

    move-result v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Lcom/htc/util/mail/MailAccount;->syncAccount(J)Z

    goto :goto_8

    .line 1324
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->deleteTemporaryMessageFile(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 9
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "deletedStatus"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 1361
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetMessageDeletedStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    if-ne v5, p5, :cond_2

    .line 1364
    const-string v0, "MAPEmailProvider "

    const-string v1, "Delete MAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->GetFolderIgnoreCase(Ljava/lang/String;)Lcom/htc/util/mail/Folder;

    move-result-object v8

    .line 1366
    .local v8, f:Lcom/htc/util/mail/Folder;
    if-eqz v8, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    invoke-virtual {v8, v0}, Lcom/htc/util/mail/Folder;->setMailMessageListener(Lcom/htc/util/mail/IMailMessageListener;)V

    .line 1368
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/htc/util/mail/Folder;->deleteMessage(J)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1369
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetMessageDeletedStatus Success  messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    .line 1385
    .end local v8           #f:Lcom/htc/util/mail/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1373
    .restart local v8       #f:Lcom/htc/util/mail/Folder;
    :cond_1
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetMessageDeletedStatus Fail  messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1381
    .end local v8           #f:Lcom/htc/util/mail/Folder;
    :cond_2
    const-string v0, "MAPEmailProvider "

    const-string v1, "onSetMessageDeletedStatus Undelete is NOT support"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 5
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    const/4 v1, 0x1

    .line 1389
    const-string v2, "MAPEmailProvider "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetMessageReadStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->GetFolderIgnoreCase(Ljava/lang/String;)Lcom/htc/util/mail/Folder;

    move-result-object v0

    .line 1392
    .local v0, f:Lcom/htc/util/mail/Folder;
    if-eqz v0, :cond_0

    .line 1393
    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    invoke-virtual {v0, v2}, Lcom/htc/util/mail/Folder;->setMailMessageListener(Lcom/htc/util/mail/IMailMessageListener;)V

    .line 1395
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mOpCode:I

    .line 1396
    if-ne v1, p5, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRead:Z

    .line 1397
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/Folder;->getMessage(J)Z

    .line 1399
    :cond_0
    return-void

    .line 1396
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;

    .line 839
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.htc.bluetooth.map.email/map"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;

    .line 841
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******Cannot create temporary directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temporary directory set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-super {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStarted()V

    .line 852
    new-instance v0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    iput-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 854
    return-void
.end method

.method protected onUpdateInbox(Ljava/lang/String;)V
    .locals 3
    .parameter "datasourceId"

    .prologue
    .line 1352
    const-string v0, "MAPEmailProvider "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateInbox "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    iget-object v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v1}, Lcom/htc/util/mail/MailAccount;->getInBoxFolderId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/MailAccount;->syncAccount(J)Z

    .line 1355
    return-void
.end method

.method protected registerDatasources()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 793
    iput-byte v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mProviderType:B

    .line 794
    const-string v0, "MAPEmailProvider "

    const-string v3, "registerDatasources"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    invoke-virtual {v0, v3}, Lcom/htc/util/mail/MailManager;->setMailManagerListener(Lcom/htc/util/mail/IMailManagerListener;)V

    .line 797
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager;->getAccounts()Ljava/util/ArrayList;

    move-result-object v8

    .line 798
    .local v8, mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager;->getCombinedAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    .line 800
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    if-nez v0, :cond_0

    .line 801
    const-string v0, "MAPEmailProvider "

    const-string v3, "Error getting combined mail account"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    iget-object v3, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mListener:Lcom/htc/bluetooth/map/email/MAPEmailProvider$MAPMessagingListener;

    invoke-virtual {v0, v3}, Lcom/htc/util/mail/MailAccount;->setAccountListener(Lcom/htc/util/mail/IAccountListener;)V

    .line 806
    const-string v3, "EMAIL"

    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->getFolderMappings()[Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z

    .line 809
    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->startMSEInstance()V

    .line 810
    iput-boolean v1, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRegistered:Z

    .line 814
    :goto_0
    return-void

    .line 812
    :cond_1
    const-string v0, "MAPEmailProvider "

    const-string v1, "registerDatasources(): No accounts setup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startMSEInstance()V
    .locals 2

    .prologue
    .line 857
    const-string v0, "MAPEmailProvider "

    const-string v1, "startMSEInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMAIL"

    invoke-virtual {p0, v0, v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->startMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 859
    return-void
.end method

.method protected stopMSEInstance()V
    .locals 2

    .prologue
    .line 862
    const-string v0, "MAPEmailProvider "

    const-string v1, "stopMSEInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMAIL"

    invoke-virtual {p0, v0, v1}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->stopMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 865
    return-void
.end method

.method protected unregisterDatasources()V
    .locals 2

    .prologue
    .line 817
    const-string v0, "MAPEmailProvider "

    const-string v1, "unregisterDatasources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    if-nez v0, :cond_0

    .line 821
    const-string v0, "MAPEmailProvider "

    const-string v1, "MailAccount no callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    invoke-virtual {p0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->stopMSEInstance()V

    .line 828
    const-string v0, "EMAIL"

    invoke-virtual {p0, v0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->unregisterDS(Ljava/lang/String;)Z

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mfRegistered:Z

    .line 831
    return-void

    .line 823
    :cond_0
    const-string v0, "MAPEmailProvider "

    const-string v1, "unregister MailAccount callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->mMailAccount:Lcom/htc/util/mail/MailAccount;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailAccount;->setAccountListener(Lcom/htc/util/mail/IAccountListener;)V

    goto :goto_0
.end method
