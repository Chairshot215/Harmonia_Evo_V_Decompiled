.class public Lcom/htc/android/mail/Rfc2822;
.super Ljava/lang/Object;
.source "Rfc2822.java"


# static fields
.field public static CONTENTTYPE_ALTERNATIVE:I = 0x0

.field public static CONTENTTYPE_DEFAULT:I = 0x0

.field public static CONTENTTYPE_MIXED:I = 0x0

.field public static CONTENTTYPE_OTHERRMULTIPART:I = 0x0

.field public static CONTENTTYPE_RELATED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final READ:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Rfc2822"


# instance fields
.field private incAttachment:I

.field private isIMAP4:Z

.field private mAccountId:J

.field private mCc:Ljava/lang/String;

.field private mContentType:I

.field private mContext:Landroid/content/Context;

.field private mDate:Ljava/util/Calendar;

.field private mFlags:I

.field private mFrom:Ljava/lang/String;

.field private mFromEmail:Ljava/lang/String;

.field private mGroup:Ljava/lang/String;

.field mHeaderBreak:I

.field private mHeaderOnly:Z

.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImportance:I

.field private mInternalDate:Ljava/util/Calendar;

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private mMailbox:Lcom/htc/android/mail/Mailbox;

.field private mMessageId:Ljava/lang/String;

.field private mMessageIndex:I

.field private mMessageid:J

.field private mMime:Lcom/htc/android/mail/Mime;

.field private mPsuedoGroupId:J

.field private mReadSize:I

.field private mReferences:Ljava/lang/String;

.field private mReplyTo:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mSubjectCharset:Ljava/lang/String;

.field private mSummariesUri:Landroid/net/Uri;

.field private mTempPreview:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mThreadIndex:Ljava/lang/String;

.field private mThreadTopic:Ljava/lang/String;

.field private mTo:Ljava/lang/String;

.field private mTotalSize:I

.field private mUidl:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private read:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    .line 65
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    .line 66
    const/4 v0, 0x2

    sput v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    .line 67
    const/4 v0, 0x3

    sput v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_ALTERNATIVE:I

    .line 68
    const/4 v0, 0x4

    sput v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_OTHERRMULTIPART:I

    .line 78
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/util/ArrayList;Ljava/lang/String;ZLcom/htc/android/mail/Mailbox;)V
    .locals 6
    .parameter "context"
    .parameter "accountId"
    .parameter
    .parameter "UIDL"
    .parameter "isIMAP4"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/htc/android/mail/Mailbox;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    const-wide/16 v0, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mTotalSize:I

    .line 44
    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mReadSize:I

    .line 45
    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->incAttachment:I

    .line 46
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    .line 47
    iput v5, p0, Lcom/htc/android/mail/Rfc2822;->mImportance:I

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    .line 50
    iput-wide v0, p0, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    .line 52
    iput-object v4, p0, Lcom/htc/android/mail/Rfc2822;->mReferences:Ljava/lang/String;

    .line 53
    iput-object v4, p0, Lcom/htc/android/mail/Rfc2822;->mGroup:Ljava/lang/String;

    .line 56
    sget v2, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    iput v2, p0, Lcom/htc/android/mail/Rfc2822;->mContentType:I

    .line 70
    iput-boolean v3, p0, Lcom/htc/android/mail/Rfc2822;->isIMAP4:Z

    .line 73
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/android/mail/Rfc2822;->mTempPreview:Ljava/lang/String;

    .line 74
    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->read:I

    .line 75
    iput-object v4, p0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    .line 76
    iput-boolean v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderOnly:Z

    .line 77
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Rfc2822;->mSubjectCharset:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/htc/android/mail/Rfc2822;->mContext:Landroid/content/Context;

    .line 99
    iput-wide p2, p0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    .line 100
    iput-boolean p6, p0, Lcom/htc/android/mail/Rfc2822;->isIMAP4:Z

    .line 101
    iput-object p7, p0, Lcom/htc/android/mail/Rfc2822;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 103
    if-nez p7, :cond_2

    :goto_0
    invoke-static {p2, p3, v0, v1}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    .line 105
    invoke-static {p4, v5}, Lcom/htc/android/mail/Util;->unfoldLines(Ljava/util/ArrayList;Z)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    .line 106
    sget-boolean v0, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v0, :cond_0

    .line 107
    sget-boolean v0, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Rfc2822"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# break "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    .line 110
    iget v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    iget-object v1, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    invoke-static {p4, v0, v1}, Lcom/htc/android/mail/Headers;->extract(Ljava/util/ArrayList;ILjava/util/HashMap;)V

    .line 112
    iget-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mFrom:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v1, "fromEmail"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mFromEmail:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v1, "to"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mTo:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mCc:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v1, "subject"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v1, "threadindex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mThreadIndex:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    .line 121
    iput-object p5, p0, Lcom/htc/android/mail/Rfc2822;->mUidl:Ljava/lang/String;

    .line 124
    sget-boolean v0, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v0, :cond_1

    .line 125
    sget-boolean v0, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Rfc2822"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rfc2822 uidl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/Rfc2822;->mUidl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1
    iput-object p4, p0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    .line 127
    return-void

    .line 103
    :cond_2
    iget-wide v0, p7, Lcom/htc/android/mail/Mailbox;->id:J

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/util/ArrayList;Ljava/lang/String;ZLcom/htc/android/mail/Mailbox;IIII)V
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter
    .parameter "UIDL"
    .parameter "isIMAP4"
    .parameter "mailbox"
    .parameter "totalsize"
    .parameter "readsize"
    .parameter "read"
    .parameter "includeAttach"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/htc/android/mail/Mailbox;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p4, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mTotalSize:I

    .line 44
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mReadSize:I

    .line 45
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->incAttachment:I

    .line 46
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    .line 47
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mImportance:I

    .line 49
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    .line 50
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    .line 52
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mReferences:Ljava/lang/String;

    .line 53
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mGroup:Ljava/lang/String;

    .line 56
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mContentType:I

    .line 70
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/mail/Rfc2822;->isIMAP4:Z

    .line 73
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mTempPreview:Ljava/lang/String;

    .line 74
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->read:I

    .line 75
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    .line 76
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderOnly:Z

    .line 77
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mSubjectCharset:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/htc/android/mail/Rfc2822;->mContext:Landroid/content/Context;

    .line 133
    iput-wide p2, p0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    .line 134
    iput-boolean p6, p0, Lcom/htc/android/mail/Rfc2822;->isIMAP4:Z

    .line 135
    iput-object p7, p0, Lcom/htc/android/mail/Rfc2822;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 136
    move/from16 v0, p8

    iput v0, p0, Lcom/htc/android/mail/Rfc2822;->mTotalSize:I

    .line 137
    move/from16 v0, p9

    iput v0, p0, Lcom/htc/android/mail/Rfc2822;->mReadSize:I

    .line 138
    move/from16 v0, p10

    iput v0, p0, Lcom/htc/android/mail/Rfc2822;->read:I

    .line 139
    move/from16 v0, p11

    iput v0, p0, Lcom/htc/android/mail/Rfc2822;->incAttachment:I

    .line 141
    if-nez p7, :cond_8

    const-wide/16 v3, -0x1

    :goto_0
    invoke-static {p2, p3, v3, v4}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    .line 143
    const/4 v3, 0x1

    invoke-static {p4, v3}, Lcom/htc/android/mail/Util;->unfoldLines(Ljava/util/ArrayList;Z)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    .line 144
    sget-boolean v3, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v3, :cond_0

    .line 145
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# break "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    iget v4, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    .line 148
    iget v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    iget-object v4, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    invoke-static {p4, v3, v4}, Lcom/htc/android/mail/Headers;->extract(Ljava/util/ArrayList;ILjava/util/HashMap;)V

    .line 150
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "from"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mFrom:Ljava/lang/String;

    .line 151
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "fromEmail"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mFromEmail:Ljava/lang/String;

    .line 152
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "to"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mTo:Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "cc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mCc:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "reply-to"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mReplyTo:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "subject"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "subjectCharset"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "subjectCharset"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mSubjectCharset:Ljava/lang/String;

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "threadindex"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mThreadIndex:Ljava/lang/String;

    .line 158
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "message-id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 160
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ">"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "references"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mReferences:Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    .line 183
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    if-eqz v3, :cond_9

    .line 184
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ****** POP dateValue :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/Rfc2822;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/Util;->getTimeFullString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_3
    :goto_1
    const-string v1, ""

    .line 194
    .local v1, idate:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "received"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    .line 195
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #idate:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 199
    .restart local v1       #idate:Ljava/lang/String;
    :goto_2
    if-nez v1, :cond_b

    .line 200
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    .line 205
    :goto_3
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    if-eqz v3, :cond_c

    .line 206
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ****** POP internal dateValue :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/Rfc2822;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/Util;->getTimeFullString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "content-type"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 216
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "content-type"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Rfc2822;->setContentType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mContentType:I

    .line 219
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "importance"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    .local v2, importance:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/mail/MailCommon;->getImportanceValue(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/Rfc2822;->mImportance:I

    .line 222
    iput-object p5, p0, Lcom/htc/android/mail/Rfc2822;->mUidl:Ljava/lang/String;

    .line 223
    sget-boolean v3, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v3, :cond_6

    .line 224
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rfc2822 uidl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/Rfc2822;->mUidl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_6
    iput-object p4, p0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    .line 227
    iget v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v3, v4, :cond_d

    .line 228
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter processBody :rfc2822 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_7
    iget v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderBreak:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/android/mail/Rfc2822;->processBody(I)V

    .line 233
    :goto_5
    return-void

    .line 141
    .end local v1           #idate:Ljava/lang/String;
    .end local v2           #importance:Ljava/lang/String;
    :cond_8
    iget-wide v3, p7, Lcom/htc/android/mail/Mailbox;->id:J

    goto/16 :goto_0

    .line 190
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    goto/16 :goto_1

    .line 197
    .restart local v1       #idate:Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "received"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/Headers;->getReceivedAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 202
    :cond_b
    invoke-static {v1}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    goto/16 :goto_3

    .line 212
    :cond_c
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    goto/16 :goto_4

    .line 231
    .restart local v2       #importance:Ljava/lang/String;
    :cond_d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderOnly:Z

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter
    .parameter "UIDL"
    .parameter "isIMAP4"
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v2, p0, Lcom/htc/android/mail/Rfc2822;->mTotalSize:I

    .line 44
    iput v2, p0, Lcom/htc/android/mail/Rfc2822;->mReadSize:I

    .line 45
    iput v2, p0, Lcom/htc/android/mail/Rfc2822;->incAttachment:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/Rfc2822;->mImportance:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    .line 52
    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mReferences:Ljava/lang/String;

    .line 53
    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mGroup:Ljava/lang/String;

    .line 56
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    iput v0, p0, Lcom/htc/android/mail/Rfc2822;->mContentType:I

    .line 70
    iput-boolean v2, p0, Lcom/htc/android/mail/Rfc2822;->isIMAP4:Z

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mTempPreview:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/htc/android/mail/Rfc2822;->read:I

    .line 75
    iput-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    .line 76
    iput-boolean v2, p0, Lcom/htc/android/mail/Rfc2822;->mHeaderOnly:Z

    .line 77
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mSubjectCharset:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private final findTextParts()Z
    .locals 6

    .prologue
    .line 417
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findTextParts to :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/Rfc2822;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    const/4 v0, 0x0

    .line 420
    .local v0, existText:Z
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mMime:Lcom/htc/android/mail/Mime;

    if-eqz v3, :cond_2

    .line 421
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mMime:Lcom/htc/android/mail/Mime;

    invoke-virtual {v3}, Lcom/htc/android/mail/Mime;->findText()Z

    move-result v1

    .line 422
    .local v1, ret:Z
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "Rfc2822"

    const-string v4, "find text parts !!"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .end local v1           #ret:Z
    :cond_1
    :goto_0
    return v1

    .line 426
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "content-type"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/Headers;->getBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, type:Ljava/lang/String;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 428
    const/4 v1, 0x1

    goto :goto_0

    .line 430
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final processBody(I)V
    .locals 16
    .parameter "firstBodyLine"

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v2, "content-type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 542
    .local v15, type:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Rfc2822"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ********** use type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " **************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    const-string v1, "charset"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mSubjectCharset:Ljava/lang/String;

    invoke-static {v15, v1, v2}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 544
    .local v10, charset:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v2, "content-transfer-encoding"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 545
    .local v13, encoding:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Rfc2822"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ********** org Charset :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ************** encoding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_1
    if-eqz v13, :cond_2

    const-string v1, "quoted-printable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v1, v0, v2, v3}, Lcom/htc/android/mail/QuotedPrintable;->decode(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 554
    :cond_2
    const-string v1, "multipart"

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "text/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 555
    const-string v1, "text/plain"

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 556
    const-string v1, "format"

    const-string v2, "fixed"

    invoke-static {v15, v1, v2}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 557
    .local v14, format:Ljava/lang/String;
    const-string v1, "delsp"

    const-string v2, "no"

    invoke-static {v15, v1, v2}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 559
    .local v11, delsp:Ljava/lang/String;
    const-string v1, "flowed"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "yes"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v0, p1

    invoke-static {v1, v0, v2, v3}, Lcom/htc/android/mail/FormatFlowed;->decode(Ljava/util/ArrayList;IIZ)V

    .line 564
    .end local v11           #delsp:Ljava/lang/String;
    .end local v14           #format:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/android/mail/Rfc2822;->isIMAP4:Z

    if-eqz v1, :cond_6

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    invoke-static {v1, v0, v2}, Lcom/htc/android/mail/Util;->normalizeLineEndings(Ljava/util/ArrayList;II)V

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    invoke-static {v1, v0, v2, v10}, Lcom/htc/android/mail/Util;->linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    .line 581
    :goto_0
    if-eqz v13, :cond_4

    const-string v1, "base64"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    .line 585
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/htc/android/mail/Base64;->decodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v1, :cond_5

    .line 595
    sget-boolean v1, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "Rfc2822"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%%mText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".firstBodyLIne is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_5
    :goto_2
    return-void

    .line 570
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    invoke-static {v1, v0, v2}, Lcom/htc/android/mail/Util;->normalizeLineEndings(Ljava/util/ArrayList;II)V

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    invoke-static {v1, v0, v2, v10}, Lcom/htc/android/mail/Util;->linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 587
    :catch_0
    move-exception v12

    .line 588
    .local v12, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v12}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<div align=\"center\" style=\"color: gray\">["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0207

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    goto/16 :goto_1

    .line 598
    .end local v12           #e:Ljava/io/UnsupportedEncodingException;
    :cond_7
    const-string v1, "multipart"

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 599
    const-string v1, "boundary"

    const-string v2, "----"

    invoke-static {v15, v1, v2}, Lcom/htc/android/mail/Headers;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 606
    .local v5, boundary:Ljava/lang/String;
    new-instance v1, Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mLines:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/android/mail/Rfc2822;->isIMAP4:Z

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/android/mail/Rfc2822;->mContentType:I

    move/from16 v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/htc/android/mail/Mime;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mMime:Lcom/htc/android/mail/Mime;

    .line 608
    const-string v1, "multipart/alternative"

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/Rfc2822;->mMime:Lcom/htc/android/mail/Mime;

    invoke-virtual {v1}, Lcom/htc/android/mail/Mime;->pruneAlternatives()V

    goto/16 :goto_2

    .line 612
    .end local v5           #boundary:Ljava/lang/String;
    :cond_8
    const-string v1, "Rfc2822"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "********************* Unhandled type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private final saveParts(ZLjava/util/ArrayList;J)Z
    .locals 23
    .parameter "includeText"
    .parameter
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveParts to :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Rfc2822;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    const/4 v12, 0x0

    .line 438
    .local v12, attachment:Z
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ######################## we have includeText:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mMime:Lcom/htc/android/mail/Mime;

    if-eqz v3, :cond_5

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Rfc2822;->mMime:Lcom/htc/android/mail/Mime;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/android/mail/Rfc2822;->mContentType:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    move-wide/from16 v5, p3

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v2 .. v11}, Lcom/htc/android/mail/Mime;->saveParts(JJIIZLjava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v18

    .line 441
    .local v18, ret:Z
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Rfc2822"

    const-string v4, "save parts !! mime"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_2
    if-nez v18, :cond_3

    if-eqz v12, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 537
    .end local v18           #ret:Z
    :goto_0
    return v3

    .line 442
    .restart local v18       #ret:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 445
    .end local v18           #ret:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mHeaders:Ljava/util/HashMap;

    const-string v4, "content-type"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/Headers;->getBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    .line 448
    .local v19, type:Ljava/lang/String;
    const-string v3, "text/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 449
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v20, values:Landroid/content/ContentValues;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v21, valuesPreview:Landroid/content/ContentValues;
    const-string v3, "text/html"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 453
    const-string v3, "_preview"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->s_convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_6
    :goto_1
    const-string v3, "_mimetype"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v3, "_text"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v3, "_contenttype"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mContentType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v3, "_account"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 463
    const-string v3, "_flags"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 466
    .local v2, cp:Landroid/content/IContentProvider;
    const/4 v15, 0x0

    .line 470
    .local v15, c:Landroid/database/Cursor;
    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-eqz v3, :cond_d

    .line 471
    :try_start_0
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_account="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND _message=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND _filename = \'\' AND _mimetype=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 473
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 474
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 475
    .local v16, id:J
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 476
    const-string v3, "Rfc2822"

    const-string v4, "#### do update"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_7
    const/4 v13, 0x0

    .line 478
    .local v13, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v3, v4}, Lcom/htc/android/mail/MailCommon;->getPartMessageUri(JJ)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 479
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 481
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 485
    const/4 v14, 0x0

    .line 486
    .local v14, builderPreview:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 487
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 489
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    .end local v14           #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    .end local v16           #id:J
    :cond_8
    :goto_2
    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 533
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .end local v2           #cp:Landroid/content/IContentProvider;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v20           #values:Landroid/content/ContentValues;
    .end local v21           #valuesPreview:Landroid/content/ContentValues;
    :cond_9
    move v3, v12

    .line 537
    goto/16 :goto_0

    .line 454
    .restart local v20       #values:Landroid/content/ContentValues;
    .restart local v21       #valuesPreview:Landroid/content/ContentValues;
    :cond_a
    const-string v3, "text/plain"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 455
    const-string v3, "_preview"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/MailCommon;->s_convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 492
    .restart local v2       #cp:Landroid/content/IContentProvider;
    .restart local v15       #c:Landroid/database/Cursor;
    :cond_b
    :try_start_1
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 493
    const-string v3, "Rfc2822"

    const-string v4, "#### do insert ( part insert) "

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_c
    const-string v3, "_message"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    const/4 v13, 0x0

    .line 496
    .restart local v13       #builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 497
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 498
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 502
    const/4 v14, 0x0

    .line 503
    .restart local v14       #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 504
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 506
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 529
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    :catch_0
    move-exception v3

    .line 532
    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_3

    .line 510
    :cond_d
    :try_start_2
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 511
    const-string v3, "Rfc2822"

    const-string v4, "#### do insert ( message first insert )"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_e
    const/4 v13, 0x0

    .line 513
    .restart local v13       #builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 514
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 515
    const-string v3, "_message"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 516
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 520
    const-string v22, "_id = ?"

    .line 521
    .local v22, where:Ljava/lang/String;
    const/4 v14, 0x0

    .line 522
    .restart local v14       #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 523
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 524
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 525
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 526
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 530
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #builderPreview:Landroid/content/ContentProviderOperation$Builder;
    .end local v22           #where:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 532
    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    if-eqz v15, :cond_f

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_f

    .line 533
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_f
    throw v3
.end method

.method public static setContentType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    .line 245
    :goto_0
    return v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/related"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/alternative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_ALTERNATIVE:I

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_OTHERRMULTIPART:I

    goto :goto_0

    .line 245
    :cond_3
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_DEFAULT:I

    goto :goto_0
.end method


# virtual methods
.method public getInternalDateInMillis()J
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final save()J
    .locals 31

    .prologue
    .line 249
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Rfc2822;->mUidl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    const/4 v11, 0x0

    .line 253
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 256
    .local v21, msgIdInHeader:Ljava/lang/String;
    :goto_0
    const-string v19, ""

    .line 259
    .local v19, mSubjType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/BaseStone;->TrimReFwd(Ljava/lang/String;)I

    move-result v22

    .line 260
    .local v22, nTrim:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_1

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    .line 266
    :cond_1
    const/4 v3, 0x1

    new-array v9, v3, [J

    .line 267
    .local v9, nResult:[J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mFromEmail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mTo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/Rfc2822;->mCc:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/Rfc2822;->mReferences:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/htc/android/mail/BaseStone;->getGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mGroup:Ljava/lang/String;

    .line 268
    const/4 v3, 0x0

    aget-wide v3, v9, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/Rfc2822;->mPsuedoGroupId:J

    .line 271
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v26, values:Landroid/content/ContentValues;
    const-string v3, "_account"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_2
    const-string v4, "_from"

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Rfc2822;->mFrom:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v3, "_fromEmail"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mFromEmail:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v3, "_to"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mTo:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v3, "_cc"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mCc:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v3, "_replyTo"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mReplyTo:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v3, "_subject"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mSubject:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v3, "_subjtype"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v3, "_threadindex"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mThreadIndex:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v3, "_threadtopic"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mThreadTopic:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v3, "_importance"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mImportance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    if-nez v3, :cond_3

    .line 287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    .line 288
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    if-nez v3, :cond_4

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    .line 290
    :cond_4
    const-string v3, "_date"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v3, "_internaldate"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mInternalDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    const-string v3, "_flags"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v3, "_uid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mUidl:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v3, "_readtotalsize"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mTotalSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v3, "_downloadtotalsize"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mReadSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v3, "_messagesize"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mTotalSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v3, "_readsize"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mReadSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v3, "_incAttachment"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->incAttachment:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v3, "_messageid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mMessageId:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "_group"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mGroup:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "_groupPseudo"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/Rfc2822;->mPsuedoGroupId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 304
    const-string v3, "_mailboxId"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    const/4 v12, 0x0

    .line 314
    .local v12, count:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/Rfc2822;->mHeaderOnly:Z

    if-nez v3, :cond_5

    .line 315
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "(_uid = ? OR _messageid = ?) AND _account = ?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Rfc2822;->mUidl:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v7, v8

    const/4 v8, 0x1

    aput-object v21, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/Rfc2822;->mAccountId:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v7, v8

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 316
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 319
    :cond_5
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v20, message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-lez v12, :cond_a

    .line 321
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 322
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 323
    .local v16, id:J
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mUri:Landroid/net/Uri;

    .line 325
    const-string v3, "_del"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v13

    .line 327
    .local v13, del:I
    const/4 v3, -0x1

    if-eq v13, v3, :cond_9

    .line 330
    :try_start_1
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v25, v:Landroid/content/ContentValues;
    const-string v3, "_uid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Rfc2822;->mUidl:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v10, 0x0

    .line 334
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 335
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 337
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mail"

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    const-wide/16 v3, 0x1

    .line 410
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 411
    .end local v9           #nResult:[J
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #count:I
    .end local v13           #del:I
    .end local v16           #id:J
    .end local v19           #mSubjType:Ljava/lang/String;
    .end local v20           #message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v21           #msgIdInHeader:Ljava/lang/String;
    .end local v22           #nTrim:I
    .end local v25           #v:Landroid/content/ContentValues;
    .end local v26           #values:Landroid/content/ContentValues;
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_6
    return-wide v3

    .line 253
    :cond_7
    :try_start_2
    const-string v21, ""

    goto/16 :goto_0

    .line 275
    .restart local v9       #nResult:[J
    .restart local v19       #mSubjType:Ljava/lang/String;
    .restart local v21       #msgIdInHeader:Ljava/lang/String;
    .restart local v22       #nTrim:I
    .restart local v26       #values:Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mFrom:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 339
    .restart local v12       #count:I
    .restart local v13       #del:I
    .restart local v16       #id:J
    .restart local v20       #message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v15

    .line 340
    .local v15, ex:Landroid/os/RemoteException;
    const-wide/16 v3, -0x1

    .line 410
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 341
    .end local v15           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 342
    .local v14, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v3, "Rfc2822"

    const-string v4, "catch exception"

    invoke-static {v3, v4, v14}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 343
    const-wide/16 v3, -0x1

    .line 410
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 348
    .end local v14           #e:Landroid/content/OperationApplicationException;
    :cond_9
    :try_start_4
    const-string v3, "Rfc2822"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ### update message table."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v10, 0x0

    .line 350
    .restart local v10       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 351
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 353
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 407
    .end local v9           #nResult:[J
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #count:I
    .end local v13           #del:I
    .end local v16           #id:J
    .end local v19           #mSubjType:Ljava/lang/String;
    .end local v20           #message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v21           #msgIdInHeader:Ljava/lang/String;
    .end local v22           #nTrim:I
    .end local v26           #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v15

    .line 408
    .restart local v15       #ex:Landroid/os/RemoteException;
    const-wide/16 v3, -0x1

    .line 410
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_3

    .line 357
    .end local v15           #ex:Landroid/os/RemoteException;
    .restart local v9       #nResult:[J
    .restart local v12       #count:I
    .restart local v19       #mSubjType:Ljava/lang/String;
    .restart local v20       #message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v21       #msgIdInHeader:Ljava/lang/String;
    .restart local v22       #nTrim:I
    .restart local v26       #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_5
    sget-boolean v3, Lcom/htc/android/mail/Rfc2822;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "Rfc2822"

    const-string v4, "insert new Mail."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_b
    const/4 v10, 0x0

    .line 359
    .restart local v10       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 360
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 361
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    .line 365
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/Rfc2822;->mHeaderOnly:Z

    if-nez v3, :cond_d

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/Rfc2822;->findTextParts()Z

    move-result v24

    .line 368
    .local v24, textExist:Z
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/Rfc2822;->saveParts(ZLjava/util/ArrayList;J)Z

    move-result v18

    .line 369
    .local v18, includeAttach:Z
    if-eqz v18, :cond_d

    .line 370
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v27, values2:Landroid/content/ContentValues;
    const-string v3, "_incAttachment"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    .line 374
    const/4 v10, 0x0

    .line 375
    .restart local v10       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 376
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/Rfc2822;->mMessageid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 378
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 392
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v18           #includeAttach:Z
    .end local v24           #textExist:Z
    .end local v27           #values2:Landroid/content/ContentValues;
    :cond_d
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mail"

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v23

    .line 393
    .local v23, results:[Landroid/content/ContentProviderResult;
    if-lez v12, :cond_10

    .line 394
    const-wide/16 v3, 0x0

    .line 410
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_3

    .line 380
    .end local v23           #results:[Landroid/content/ContentProviderResult;
    .restart local v18       #includeAttach:Z
    .restart local v24       #textExist:Z
    .restart local v27       #values2:Landroid/content/ContentValues;
    :cond_e
    :try_start_7
    const-string v28, "_id = ?"

    .line 381
    .local v28, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 382
    .restart local v10       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Rfc2822;->mSummariesUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 383
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 384
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 385
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/Rfc2822;->mMessageIndex:I

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 386
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 410
    .end local v9           #nResult:[J
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #count:I
    .end local v18           #includeAttach:Z
    .end local v19           #mSubjType:Ljava/lang/String;
    .end local v20           #message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v21           #msgIdInHeader:Ljava/lang/String;
    .end local v22           #nTrim:I
    .end local v24           #textExist:Z
    .end local v26           #values:Landroid/content/ContentValues;
    .end local v27           #values2:Landroid/content/ContentValues;
    .end local v28           #where:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_f

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_f

    .line 411
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_f
    throw v3

    .line 396
    .restart local v9       #nResult:[J
    .restart local v12       #count:I
    .restart local v19       #mSubjType:Ljava/lang/String;
    .restart local v20       #message:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v21       #msgIdInHeader:Ljava/lang/String;
    .restart local v22       #nTrim:I
    .restart local v23       #results:[Landroid/content/ContentProviderResult;
    .restart local v26       #values:Landroid/content/ContentValues;
    :cond_10
    const/4 v3, 0x0

    :try_start_8
    aget-object v3, v23, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-wide v3

    .line 410
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_3

    .line 398
    .end local v23           #results:[Landroid/content/ContentProviderResult;
    :catch_3
    move-exception v14

    .line 399
    .local v14, e:Landroid/os/RemoteException;
    :try_start_9
    const-string v3, "Rfc2822"

    const-string v4, "catch exception"

    invoke-static {v3, v4, v14}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 400
    const-wide/16 v3, -0x1

    .line 410
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_3

    .line 401
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v14

    .line 402
    .local v14, e:Landroid/content/OperationApplicationException;
    :try_start_a
    const-string v3, "Rfc2822"

    const-string v4, "catch exception"

    invoke-static {v3, v4, v14}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    .line 403
    const-wide/16 v3, -0x1

    .line 410
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_3
.end method
