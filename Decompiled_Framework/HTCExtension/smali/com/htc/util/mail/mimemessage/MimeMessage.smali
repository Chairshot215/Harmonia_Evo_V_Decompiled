.class public Lcom/htc/util/mail/mimemessage/MimeMessage;
.super Lcom/htc/util/mail/mimemessage/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field protected mBcc:[Lcom/htc/util/mail/mimemessage/Address;

.field protected mBody:Lcom/htc/util/mail/mimemessage/Body;

.field protected mCc:[Lcom/htc/util/mail/mimemessage/Address;

.field protected mDateFormat:Ljava/text/SimpleDateFormat;

.field public mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

.field protected mFrom:[Lcom/htc/util/mail/mimemessage/Address;

.field public mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

.field protected mReplyTo:[Lcom/htc/util/mail/mimemessage/Address;

.field protected mSentDate:Ljava/util/Date;

.field protected mSize:I

.field protected mTo:[Lcom/htc/util/mail/mimemessage/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/htc/util/mail/mimemessage/Message;-><init>()V

    new-instance v1, Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-direct {v1}, Lcom/htc/util/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    :try_start_0
    invoke-direct {p0}, Lcom/htc/util/mail/mimemessage/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setMessageId(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/util/mail/mimemessage/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create MimeMessage"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/htc/util/mail/mimemessage/Message;-><init>()V

    new-instance v0, Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    sput-object p1, Lcom/htc/util/mail/mimemessage/MimeUtility;->mLastContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/util/mail/mimemessage/Message;-><init>()V

    new-instance v0, Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method private generateMessageId()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "@email.android.com>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcom/htc/util/mail/mimemessage/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const-string v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/htc/util/mail/mimemessage/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getExtendedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtendedHeaders()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0}, Lcom/htc/util/mail/mimemessage/MimeHeader;->writeToString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/htc/util/mail/mimemessage/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/util/mail/mimemessage/Address;

    if-nez v1, :cond_2

    const-string v1, "From"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/util/mail/mimemessage/Address;

    :cond_2
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/util/mail/mimemessage/Address;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const-string v1, "Message-ID"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_0
    new-instance v1, Lcom/htc/util/mail/mimemessage/MessagingException;

    const-string v2, "A message was found without a Message-ID header"

    invoke-direct {v1, v2}, Lcom/htc/util/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Lcom/htc/util/mail/mimemessage/Message$RecipientType;)[Lcom/htc/util/mail/mimemessage/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->TO:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/util/mail/mimemessage/Address;

    if-nez v0, :cond_0

    const-string v0, "To"

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/util/mail/mimemessage/Address;

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/util/mail/mimemessage/Address;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->CC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/util/mail/mimemessage/Address;

    if-nez v0, :cond_2

    const-string v0, "CC"

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/util/mail/mimemessage/Address;

    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->BCC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/util/mail/mimemessage/Address;

    if-nez v0, :cond_4

    const-string v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/util/mail/mimemessage/Address;

    :cond_4
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/htc/util/mail/mimemessage/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/htc/util/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplyTo()[Lcom/htc/util/mail/mimemessage/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/util/mail/mimemessage/Address;

    if-nez v0, :cond_0

    const-string v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/util/mail/mimemessage/Address;

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/util/mail/mimemessage/Address;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->clear()V

    iput-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/util/mail/mimemessage/Address;

    iput-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/util/mail/mimemessage/Address;

    iput-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/util/mail/mimemessage/Address;

    iput-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/util/mail/mimemessage/Address;

    iput-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/util/mail/mimemessage/Address;

    iput-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mSentDate:Ljava/util/Date;

    iput-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;-><init>()V

    new-instance v1, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;-><init>(Lcom/htc/util/mail/mimemessage/MimeMessage;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lcom/htc/util/mail/lib/org/apache/james/mime4j/ContentHandler;)V

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public saveChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/htc/util/mail/mimemessage/MessagingException;

    const-string v1, "saveChanges not yet implemented"

    invoke-direct {v0, v1}, Lcom/htc/util/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBody(Lcom/htc/util/mail/mimemessage/Body;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    instance-of v1, p1, Lcom/htc/util/mail/mimemessage/Multipart;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/htc/util/mail/mimemessage/Multipart;

    invoke-virtual {v0, p0}, Lcom/htc/util/mail/mimemessage/Multipart;->setParent(Lcom/htc/util/mail/mimemessage/Part;)V

    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/htc/util/mail/mimemessage/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MIME-Version"

    const-string v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/htc/util/mail/mimemessage/TextBody;

    if-eqz v1, :cond_0

    const-string v1, "Content-Type"

    const-string v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-virtual {p0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->removeHeader(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    sget-object v1, Lcom/htc/util/mail/mimemessage/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeaders(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/4 v8, 0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    :cond_0
    return-void

    :cond_1
    new-instance v5, Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-direct {v5}, Lcom/htc/util/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v5, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    sget-object v5, Lcom/htc/util/mail/mimemessage/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const-string v5, ":"

    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eq v5, v8, :cond_2

    new-instance v5, Lcom/htc/util/mail/mimemessage/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal extended headers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/util/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/util/mail/mimemessage/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFrom(Lcom/htc/util/mail/mimemessage/Address;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    const-string v1, "From"

    invoke-virtual {p1}, Lcom/htc/util/mail/mimemessage/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/htc/util/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/htc/util/mail/mimemessage/Address;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/util/mail/mimemessage/Address;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecipients(Lcom/htc/util/mail/mimemessage/Message$RecipientType;[Lcom/htc/util/mail/mimemessage/Address;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x4

    const/4 v0, 0x5

    sget-object v3, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->TO:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "To"

    invoke-virtual {p0, v3}, Lcom/htc/util/mail/mimemessage/MimeMessage;->removeHeader(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/util/mail/mimemessage/Address;

    :goto_0
    return-void

    :cond_1
    const-string v3, "To"

    invoke-static {p2}, Lcom/htc/util/mail/mimemessage/Address;->toHeader([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/htc/util/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->CC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    if-ne p1, v3, :cond_5

    if-eqz p2, :cond_3

    array-length v3, p2

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "CC"

    invoke-virtual {p0, v3}, Lcom/htc/util/mail/mimemessage/MimeMessage;->removeHeader(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0

    :cond_4
    const-string v3, "CC"

    invoke-static {p2}, Lcom/htc/util/mail/mimemessage/Address;->toHeader([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/htc/util/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->BCC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    if-ne p1, v3, :cond_8

    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    :cond_6
    const-string v3, "BCC"

    invoke-virtual {p0, v3}, Lcom/htc/util/mail/mimemessage/MimeMessage;->removeHeader(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0

    :cond_7
    const-string v3, "BCC"

    invoke-static {p2}, Lcom/htc/util/mail/mimemessage/Address;->toHeader([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/htc/util/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0

    :cond_8
    new-instance v3, Lcom/htc/util/mail/mimemessage/MessagingException;

    const-string v4, "Unrecognized recipient type."

    invoke-direct {v3, v4}, Lcom/htc/util/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setReplyTo([Lcom/htc/util/mail/mimemessage/Address;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Reply-to"

    invoke-virtual {p0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->removeHeader(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/util/mail/mimemessage/Address;

    :goto_0
    return-void

    :cond_1
    const-string v1, "Reply-to"

    invoke-static {p1}, Lcom/htc/util/mail/mimemessage/Address;->toHeader([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/htc/util/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const-string v0, "Date"

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mSentDate:Ljava/util/Date;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/16 v0, 0x9

    const-string v1, "Subject"

    const/16 v2, 0x9

    invoke-static {p1, v2}, Lcom/htc/util/mail/mimemessage/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/util/mail/mimemessage/Body;

    invoke-interface {v1, p1}, Lcom/htc/util/mail/mimemessage/Body;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
