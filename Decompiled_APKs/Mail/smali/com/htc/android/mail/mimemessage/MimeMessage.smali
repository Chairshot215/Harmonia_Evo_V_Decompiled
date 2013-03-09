.class public Lcom/htc/android/mail/mimemessage/MimeMessage;
.super Lcom/htc/android/mail/mimemessage/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/mimemessage/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field protected mBcc:[Lcom/htc/android/mail/mimemessage/Address;

.field protected mBody:Lcom/htc/android/mail/mimemessage/Body;

.field protected mCc:[Lcom/htc/android/mail/mimemessage/Address;

.field protected mDateFormat:Ljava/text/SimpleDateFormat;

.field protected mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

.field protected mFrom:[Lcom/htc/android/mail/mimemessage/Address;

.field protected mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

.field protected mReplyTo:[Lcom/htc/android/mail/mimemessage/Address;

.field protected mSentDate:Ljava/util/Date;

.field protected mSize:I

.field protected mTo:[Lcom/htc/android/mail/mimemessage/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/mimemessage/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/mimemessage/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/android/mail/mimemessage/Message;-><init>()V

    .line 52
    new-instance v1, Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-direct {v1}, Lcom/htc/android/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    .line 70
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/mimemessage/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setMessageId(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/android/mail/mimemessage/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, me:Lcom/htc/android/mail/mimemessage/MessagingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create MimeMessage"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/htc/android/mail/mimemessage/Message;-><init>()V

    .line 52
    new-instance v0, Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-direct {v0}, Lcom/htc/android/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 114
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 115
    return-void
.end method

.method private generateMessageId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    .line 98
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v2, "@email.android.com>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/mimemessage/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public getBody()Lcom/htc/android/mail/mimemessage/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/android/mail/mimemessage/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 175
    const-string v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, contentId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/htc/android/mail/mimemessage/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

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
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, contentType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 159
    const-string v0, "text/plain"

    .line 161
    .end local v0           #contentType:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 166
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, contentDisposition:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    .end local v0           #contentDisposition:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getExtendedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mimemessage/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtendedHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v0}, Lcom/htc/android/mail/mimemessage/MimeHeader;->writeToString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mimemessage/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/htc/android/mail/mimemessage/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/android/mail/mimemessage/Address;

    if-nez v1, :cond_2

    .line 264
    const-string v1, "From"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, list:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    const-string v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_1
    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/android/mail/mimemessage/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/android/mail/mimemessage/Address;

    .line 270
    .end local v0           #list:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/android/mail/mimemessage/Address;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mimemessage/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 319
    const-string v1, "Message-ID"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, headers:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 322
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 324
    :cond_0
    new-instance v1, Lcom/htc/android/mail/mimemessage/MessagingException;

    const-string v2, "A message was found without a Message-ID header"

    invoke-direct {v1, v2}, Lcom/htc/android/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Lcom/htc/android/mail/mimemessage/Message$RecipientType;)[Lcom/htc/android/mail/mimemessage/Address;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/htc/android/mail/mimemessage/Message$RecipientType;->TO:Lcom/htc/android/mail/mimemessage/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/android/mail/mimemessage/Address;

    if-nez v0, :cond_0

    .line 199
    const-string v0, "To"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/android/mail/mimemessage/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/android/mail/mimemessage/Address;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/android/mail/mimemessage/Address;

    .line 211
    :goto_0
    return-object v0

    .line 202
    :cond_1
    sget-object v0, Lcom/htc/android/mail/mimemessage/Message$RecipientType;->CC:Lcom/htc/android/mail/mimemessage/Message$RecipientType;

    if-ne p1, v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/android/mail/mimemessage/Address;

    if-nez v0, :cond_2

    .line 204
    const-string v0, "CC"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/android/mail/mimemessage/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/android/mail/mimemessage/Address;

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0

    .line 207
    :cond_3
    sget-object v0, Lcom/htc/android/mail/mimemessage/Message$RecipientType;->BCC:Lcom/htc/android/mail/mimemessage/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/android/mail/mimemessage/Address;

    if-nez v0, :cond_4

    .line 209
    const-string v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/android/mail/mimemessage/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/android/mail/mimemessage/Address;

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0

    .line 213
    :cond_5
    new-instance v0, Lcom/htc/android/mail/mimemessage/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplyTo()[Lcom/htc/android/mail/mimemessage/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/android/mail/mimemessage/Address;

    if-nez v0, :cond_0

    .line 287
    const-string v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/android/mail/mimemessage/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/android/mail/mimemessage/Address;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/android/mail/mimemessage/Address;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 254
    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v1}, Lcom/htc/android/mail/mimemessage/MimeHeader;->clear()V

    .line 121
    iput-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/android/mail/mimemessage/Address;

    .line 122
    iput-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/android/mail/mimemessage/Address;

    .line 123
    iput-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/android/mail/mimemessage/Address;

    .line 124
    iput-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/android/mail/mimemessage/Address;

    .line 125
    iput-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/android/mail/mimemessage/Address;

    .line 126
    iput-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 127
    iput-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/android/mail/mimemessage/Body;

    .line 129
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 130
    .local v0, parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/htc/android/mail/mimemessage/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/mimemessage/MimeMessage$MimeMessageBuilder;-><init>(Lcom/htc/android/mail/mimemessage/MimeMessage;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lcom/htc/util/mail/lib/org/apache/james/mime4j/ContentHandler;)V

    .line 131
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 132
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mimemessage/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public saveChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcom/htc/android/mail/mimemessage/MessagingException;

    const-string v1, "saveChanges not yet implemented"

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBody(Lcom/htc/android/mail/mimemessage/Body;)V
    .locals 7
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 336
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/android/mail/mimemessage/Body;

    .line 337
    instance-of v1, p1, Lcom/htc/android/mail/mimemessage/Multipart;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 338
    check-cast v0, Lcom/htc/android/mail/mimemessage/Multipart;

    .line 339
    .local v0, multipart:Lcom/htc/android/mail/mimemessage/Multipart;
    invoke-virtual {v0, p0}, Lcom/htc/android/mail/mimemessage/Multipart;->setParent(Lcom/htc/android/mail/mimemessage/Part;)V

    .line 340
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/htc/android/mail/mimemessage/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "MIME-Version"

    const-string v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v0           #multipart:Lcom/htc/android/mail/mimemessage/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    instance-of v1, p1, Lcom/htc/android/mail/mimemessage/TextBody;

    if-eqz v1, :cond_0

    .line 344
    const-string v1, "Content-Type"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s;\n charset=utf-8"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 379
    if-nez p2, :cond_1

    .line 380
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mimemessage/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    if-nez v0, :cond_2

    .line 386
    new-instance v0, Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-direct {v0}, Lcom/htc/android/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    sget-object v1, Lcom/htc/android/mail/mimemessage/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/mail/mimemessage/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeaders(Ljava/lang/String;)V
    .locals 9
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    .line 425
    :cond_0
    return-void

    .line 416
    :cond_1
    new-instance v5, Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-direct {v5}, Lcom/htc/android/mail/mimemessage/MimeHeader;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    .line 417
    sget-object v5, Lcom/htc/android/mail/mimemessage/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 418
    .local v1, header:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, tokens:[Ljava/lang/String;
    array-length v5, v4

    if-eq v5, v8, :cond_2

    .line 420
    new-instance v5, Lcom/htc/android/mail/mimemessage/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal extended headers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/android/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 422
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mExtendedHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/mimemessage/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFrom(Lcom/htc/android/mail/mimemessage/Address;)V
    .locals 4
    .parameter "from"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x6

    .line 275
    .local v0, FROM_LENGTH:I
    if-eqz p1, :cond_0

    .line 276
    const-string v1, "From"

    invoke-virtual {p1}, Lcom/htc/android/mail/mimemessage/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/htc/android/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/htc/android/mail/mimemessage/Address;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/android/mail/mimemessage/Address;

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mFrom:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/mimemessage/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public setRecipients(Lcom/htc/android/mail/mimemessage/Message$RecipientType;[Lcom/htc/android/mail/mimemessage/Address;)V
    .locals 6
    .parameter "type"
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 218
    const/4 v2, 0x4

    .line 219
    .local v2, TO_LENGTH:I
    const/4 v1, 0x4

    .line 220
    .local v1, CC_LENGTH:I
    const/4 v0, 0x5

    .line 221
    .local v0, BCC_LENGTH:I
    sget-object v3, Lcom/htc/android/mail/mimemessage/Message$RecipientType;->TO:Lcom/htc/android/mail/mimemessage/Message$RecipientType;

    if-ne p1, v3, :cond_2

    .line 222
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 223
    :cond_0
    const-string v3, "To"

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/mimemessage/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 224
    iput-object v4, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/android/mail/mimemessage/Address;

    .line 248
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v3, "To"

    invoke-static {p2}, Lcom/htc/android/mail/mimemessage/Address;->toHeader([Lcom/htc/android/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/htc/android/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iput-object p2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mTo:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0

    .line 229
    :cond_2
    sget-object v3, Lcom/htc/android/mail/mimemessage/Message$RecipientType;->CC:Lcom/htc/android/mail/mimemessage/Message$RecipientType;

    if-ne p1, v3, :cond_5

    .line 230
    if-eqz p2, :cond_3

    array-length v3, p2

    if-nez v3, :cond_4

    .line 231
    :cond_3
    const-string v3, "CC"

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/mimemessage/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 232
    iput-object v4, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0

    .line 234
    :cond_4
    const-string v3, "CC"

    invoke-static {p2}, Lcom/htc/android/mail/mimemessage/Address;->toHeader([Lcom/htc/android/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/htc/android/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iput-object p2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mCc:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0

    .line 237
    :cond_5
    sget-object v3, Lcom/htc/android/mail/mimemessage/Message$RecipientType;->BCC:Lcom/htc/android/mail/mimemessage/Message$RecipientType;

    if-ne p1, v3, :cond_8

    .line 238
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 239
    :cond_6
    const-string v3, "BCC"

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/mimemessage/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 240
    iput-object v4, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0

    .line 242
    :cond_7
    const-string v3, "BCC"

    invoke-static {p2}, Lcom/htc/android/mail/mimemessage/Address;->toHeader([Lcom/htc/android/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/htc/android/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iput-object p2, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBcc:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0

    .line 246
    :cond_8
    new-instance v3, Lcom/htc/android/mail/mimemessage/MessagingException;

    const-string v4, "Unrecognized recipient type."

    invoke-direct {v3, v4}, Lcom/htc/android/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setReplyTo([Lcom/htc/android/mail/mimemessage/Address;)V
    .locals 4
    .parameter "replyTo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 293
    const/16 v0, 0xa

    .line 294
    .local v0, REPLY_TO_LENGTH:I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    const-string v1, "Reply-to"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/android/mail/mimemessage/Address;

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v1, "Reply-to"

    invoke-static {p1}, Lcom/htc/android/mail/mimemessage/Address;->toHeader([Lcom/htc/android/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/htc/android/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mReplyTo:[Lcom/htc/android/mail/mimemessage/Address;

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .parameter "sentDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "Date"

    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 154
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .parameter "subject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 258
    const/16 v0, 0x9

    .line 259
    .local v0, HEADER_NAME_LENGTH:I
    const-string v1, "Subject"

    const/16 v2, 0x9

    invoke-static {p1, v2}, Lcom/htc/android/mail/mimemessage/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/mimemessage/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 446
    .local v0, writer:Ljava/io/BufferedWriter;
    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mHeader:Lcom/htc/android/mail/mimemessage/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/mimemessage/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 449
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 451
    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/android/mail/mimemessage/Body;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeMessage;->mBody:Lcom/htc/android/mail/mimemessage/Body;

    invoke-interface {v1, p1}, Lcom/htc/android/mail/mimemessage/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 454
    :cond_0
    return-void
.end method
