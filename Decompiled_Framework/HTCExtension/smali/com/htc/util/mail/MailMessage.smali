.class public Lcom/htc/util/mail/MailMessage;
.super Ljava/lang/Object;
.source "MailMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/MailMessage$Status;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final FILTER_QUERY_ORIGINATOR:I = 0x8

.field public static final FILTER_QUERY_PERIOD:I = 0x1

.field public static final FILTER_QUERY_PRIORITY:I = 0x10

.field public static final FILTER_QUERY_READ_STATUS:I = 0x2

.field public static final FILTER_QUERY_RECIPIENT:I = 0x4

.field public static final GET_STRING_FIRST_SIZE:I = 0x1388

.field public static final GET_STRING_FIRST_SIZE_3LINES:I = 0x1388

.field public static final GET_STRING_MAX_SIZE:I = 0x100000

.field public static final GET_STRING_MAX_SIZE_3LINES:I = 0x100000

.field private static final MAIL_BODY_TYPE_HTML:I = 0x1

.field private static final MAIL_BODY_TYPE_PLAIN_TEXT:I = 0x0

.field private static final MAIL_BODY_TYPE_UNKNOWN:I = -0x1

.field public static final MAIL_PRIORITY_FILTER_HIGH:I = 0x4

.field public static final MAIL_PRIORITY_FILTER_LOW:I = 0x1

.field public static final MAIL_PRIORITY_FILTER_NORMAL:I = 0x2

.field public static final MAIL_PRIORITY_FILTER_NO_FILTERING:I = 0x0

.field public static final MAIL_PRIORITY_HIGH:I = 0x2

.field public static final MAIL_PRIORITY_LOW:I = 0x0

.field public static final MAIL_PRIORITY_NORMAL:I = 0x1

.field public static final MAIL_READ_STATUS_NO_FILTERING:I = -0x1

.field public static final MAIL_READ_STATUS_READED:I = 0x0

.field public static final MAIL_READ_STATUS_UNREADED:I = 0x1

.field public static final MAIL_SEND_TYPE_BCC:I = 0x2

.field public static final MAIL_SEND_TYPE_CC:I = 0x1

.field public static final MAIL_SEND_TYPE_TO:I = 0x0

.field private static final RETRY_COUNT:I = 0x5

.field public static final Rfc2822_READ:I = 0x1

.field public static final SAVE_MAIL_TEXT_SIZE:I = 0x140

.field public static final SAVE_MAIL_TEXT_SIZE_3LINES:I = 0xc8

.field public static final STRING_SATISFY_SIZE:I = 0x1f4

.field public static final STRING_SATISFY_SIZE_3LINES:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MailObject.MailMessage"


# instance fields
.field private mAccountId:J

.field private mAttachmentIncluted:I

.field private mAttachments:[Lcom/htc/util/mail/Attachment;

.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBody:Ljava/lang/String;

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFlag:I

.field private mFolderId:J

.field private mIsForRead:Z

.field private mIsReaded:Z

.field private mMailBodyType:I

.field private mMessageId:J

.field private mMessageSize:I

.field private mPriority:I

.field private mSenderAddress:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTime:Ljava/util/Date;

.field private mToAddresses:Ljava/util/ArrayList;
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
    .locals 1

    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailMessage;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZIIIILjava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/util/mail/MailMessage;->mFolderId:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I

    iput-object p1, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    iput-wide p2, p0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    iput-wide p4, p0, Lcom/htc/util/mail/MailMessage;->mFolderId:J

    iput-wide p6, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    iput-object p8, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    iput-object p9, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    if-eqz p10, :cond_0

    invoke-virtual {p10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    :cond_0
    if-eqz p11, :cond_1

    invoke-virtual {p11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    :cond_1
    if-eqz p12, :cond_2

    invoke-virtual {p12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    :cond_2
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsReaded:Z

    move/from16 v0, p16

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mFlag:I

    move/from16 v0, p17

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mPriority:I

    move/from16 v0, p18

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mMessageSize:I

    move/from16 v0, p19

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mAttachmentIncluted:I

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/htc/util/mail/MailMessage;->mTime:Ljava/util/Date;

    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    :cond_3
    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    :cond_4
    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method private buildAddressString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static buildMessageForSend(Landroid/content/Context;J)Lcom/htc/util/mail/MailMessage;
    .locals 21

    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/mail/MailManager;->getDefaultAccountId()J

    move-result-wide p1

    :cond_0
    new-instance v0, Lcom/htc/util/mail/MailMessage;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v20}, Lcom/htc/util/mail/MailMessage;-><init>(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZIIIILjava/util/Date;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    return-object v0
.end method

.method private getMailBody(I)Ljava/lang/String;
    .locals 13

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "substr(_text, 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    aput-object v10, v2, v4

    const/4 v0, 0x1

    const-string v1, "_mimetype"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v11, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( _mimetype=\'text/plain\' OR _mimetype=\'text/html\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_mimetype"

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v6, ""

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v6}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v6

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, ""

    goto :goto_0
.end method

.method private getMailBody3Lines(I)Ljava/lang/String;
    .locals 13

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "substr(_text, 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    aput-object v10, v2, v4

    const/4 v0, 0x1

    const-string v1, "_mimetype"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v11, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( _mimetype=\'text/plain\' OR _mimetype=\'text/html\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_mimetype"

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v6, ""

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v6}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v6

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, ""

    goto :goto_0
.end method

.method private saveMail(Z)Landroid/net/Uri;
    .locals 13

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->isCombinedAccount()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/util/mail/MailManager;->getDefaultAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v5

    :cond_0
    invoke-virtual {p0, v12}, Lcom/htc/util/mail/MailMessage;->getAddressString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/util/mail/MailMessage;->getAddressString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/util/mail/MailMessage;->getAddressString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "_uid"

    move-object v8, v9

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_from"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_fromEmail"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_subject"

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getSubject()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_to"

    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_cc"

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_bcc"

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_account"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "_flags"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "_read"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "_date"

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getSeconds()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "_internaldate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p1, :cond_3

    const-string v8, "_mailboxId"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getDraftFolderId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string v8, "_to"

    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_cc"

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_bcc"

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_messageid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@mail.android.htc.com"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_sync"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "_local"

    const-string v10, "1"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_importance"

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getPriority()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    if-eqz v6, :cond_1

    const-string v8, "_references"

    invoke-virtual {v3, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getProtocol()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_2

    const-string v8, "_notaddTrack"

    const-string v10, "100"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_messageClass"

    const-string v10, "IPM.Note"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_allDayEvent"

    const-string v10, "0"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_responseRequested"

    const-string v10, "0"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_sensitivity"

    const-string v10, "0"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_synckey"

    const-string v10, "0"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_smartCommand"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "_refMsgId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v8, v10, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    if-nez v7, :cond_4

    :goto_2
    return-object v9

    :cond_3
    const-string v8, "_mailboxId"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getOutFolderId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "_retryCount"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const/4 v7, 0x0

    const-string v8, "MailObject.MailMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveMessage() Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v8, Lcom/htc/util/mail/MailMessage;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "MailObject.MailMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SaveMail:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    iget-wide v8, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    invoke-direct {p0, v7, v8, v9}, Lcom/htc/util/mail/MailMessage;->saveParts(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    move-object v9, v7

    goto :goto_2
.end method

.method private saveParts(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 20

    const-string v12, "parts"

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I

    const-string v7, "text/plain"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/MailMessage;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    add-int v11, v11, v17

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    const-string v17, "_mimetype"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "_text"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "_message"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "_flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mail/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    if-nez v16, :cond_0

    :goto_0
    return-object v16

    :cond_0
    add-int v17, v11, v13

    move/from16 v0, v17

    int-to-long v14, v0

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    const-string v17, "_incAttachment"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "_readsize"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "_readtotalsize"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "_downloadtotalsize"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "_messagesize"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addAddress(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, can\'t add address"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAttachment(Lcom/htc/util/mail/Attachment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, attachment can\'t be added."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public deleteAddress(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, can\'t delete address on mail retrieving."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteAttachment(Lcom/htc/util/mail/Attachment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, attachment can\'t be deleted."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public downloadAttachment(ILjava/lang/String;Lcom/htc/util/mail/IMailMessageListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "It\'s not applicable for sending mail."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getAccount()Lcom/htc/util/mail/MailAccount;
    .locals 3

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    return-wide v0
.end method

.method public getAddressString(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->buildAddressString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->buildAddressString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->buildAddressString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getAddresses(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not avaliable type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttachments()[Lcom/htc/util/mail/Attachment;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    return-object v0
.end method

.method public getAttachmentsSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getMailBody()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFolderId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/util/mail/MailMessage;->mFolderId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    return-wide v0
.end method

.method public getMailBody()Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->getMailBody(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailBody3Lines()Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->getMailBody3Lines(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailStatus()Lcom/htc/util/mail/MailMessage$Status;
    .locals 2

    new-instance v0, Lcom/htc/util/mail/MailMessage$Status;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/MailMessage$Status;-><init>(Lcom/htc/util/mail/MailMessage;)V

    iget v1, p0, Lcom/htc/util/mail/MailMessage;->mFlag:I

    iput v1, v0, Lcom/htc/util/mail/MailMessage$Status;->mFlag:I

    iget-boolean v1, p0, Lcom/htc/util/mail/MailMessage;->mIsReaded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/htc/util/mail/MailMessage$Status;->mIsUnread:Z

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    return-wide v0
.end method

.method public getMessageTime()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "It\'s not applicable for sending mail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/MailMessage;->mPriority:I

    return v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSenderNameOrAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/MailMessage;->mMessageSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public isMessageReaded()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Message read status is not applicable for sending mail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsReaded:Z

    return v0
.end method

.method public isPlainText()Z
    .locals 2

    iget v0, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getMailBody()Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProtected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/htc/util/mail/Attachment;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v5, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v5, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    :cond_2
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v5, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    :cond_3
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v5, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method public saveMailToOutBox()Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->saveMail(Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public saveMailtoDraft()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->saveMail(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, body can\'t be set on mail retrieving."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    return-void
.end method

.method public setMessageReaded(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Set read is not applicable for sending mail"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-boolean p1, p0, Lcom/htc/util/mail/MailMessage;->mIsReaded:Z

    iget-object v2, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_2

    sget-object v2, Lcom/htc/util/mail/MailUtils;->sSetMessageStatusURI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-boolean v2, Lcom/htc/util/mail/MailMessage;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailObject.MailMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMessageReaded/read:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/htc/util/mail/MailUtils;->sSetMessageStatusURI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-boolean v2, Lcom/htc/util/mail/MailMessage;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailObject.MailMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMessageReaded/unread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProirity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, priority can\'t be set."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/htc/util/mail/MailMessage;->mPriority:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, subject can\'t be set on mail retrieving."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    return-void
.end method
