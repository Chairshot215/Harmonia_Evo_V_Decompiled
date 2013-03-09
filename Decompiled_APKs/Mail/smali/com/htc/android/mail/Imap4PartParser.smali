.class public Lcom/htc/android/mail/Imap4PartParser;
.super Ljava/lang/Object;
.source "Imap4PartParser.java"


# static fields
.field public static final BODY:I = 0x1

.field public static final CC:I = 0x8

.field public static final DATE:I = 0x6

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final FROM:I = 0x5

.field public static final HEADER:I = 0x0

.field public static final OTHER:I = 0x9

.field public static final PART:I = 0x3

.field public static final SUBJECT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Imap4PartParser"

.field public static final TO:I = 0x7

.field public static final UID:I = 0x2

.field private static final sFromP:Ljava/util/regex/Pattern;


# instance fields
.field private body:Lcom/htc/android/mail/ByteString;

.field private bodyArray:[B

.field private bodyContent:Ljava/lang/String;

.field private bodyContentBuilder:Ljava/lang/StringBuilder;

.field private bodySize:I

.field private continueTo:Z

.field private dateValue:Ljava/lang/Long;

.field private end:I

.field private header_cc:Ljava/lang/String;

.field private header_date:Ljava/lang/String;

.field private header_from:Ljava/lang/String;

.field private header_fromEmail:Ljava/lang/String;

.field private header_fromName:Ljava/lang/String;

.field private header_subject:Ljava/lang/String;

.field private header_to:Ljava/lang/String;

.field private mCharset:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEncode:Ljava/lang/String;

.field private start:I

.field private thread_index:Ljava/lang/String;

.field private thread_topic:Ljava/lang/String;

.field private tmpBodyContent:[B

.field private tmpFilename:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "^(.*) <(.*)>.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Imap4PartParser;->sFromP:Ljava/util/regex/Pattern;

    .line 68
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/Imap4PartParser;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/io/BufferedInputStream;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;)V
    .locals 20
    .parameter "context"
    .parameter "account"
    .parameter "mIn"
    .parameter "charset"
    .parameter "encode"
    .parameter "mode"
    .parameter "saveAsFile"
    .parameter "uid"
    .parameter "tag"
    .parameter "filereference"
    .parameter "controller"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/mail/Account;",
            "Ljava/io/BufferedInputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/AbsRequestController;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p12, handler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v2, "ISO-8859-1"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->mCharset:Ljava/lang/String;

    .line 32
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->mEncode:Ljava/lang/String;

    .line 45
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    .line 46
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    .line 47
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    .line 48
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 50
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    .line 51
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->dateValue:Ljava/lang/Long;

    .line 52
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_to:Ljava/lang/String;

    .line 53
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/Imap4PartParser;->continueTo:Z

    .line 54
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 56
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->uid:Ljava/lang/String;

    .line 57
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    .line 58
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    .line 59
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    .line 60
    const/4 v2, 0x0

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 61
    const/4 v2, 0x0

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 62
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodySize:I

    .line 63
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    .line 64
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    .line 65
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/Imap4PartParser;->end:I

    .line 66
    new-instance v2, Lcom/htc/android/mail/ByteString;

    const-string v4, ""

    invoke-direct {v2, v4}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    .line 116
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    .line 117
    if-eqz p4, :cond_0

    const-string v2, ""

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object p4

    .line 120
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->mCharset:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->mEncode:Ljava/lang/String;

    .line 122
    move/from16 v16, p6

    .line 123
    .local v16, parseMode:I
    const/16 v19, -0x1

    .line 125
    .local v19, subMode:I
    const/4 v2, 0x1

    new-array v15, v2, [I

    .line 126
    .local v15, nDecodeLen:[I
    const/4 v12, 0x0

    .line 128
    .local v12, byteDecodeData:[B
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_2

    .line 129
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Imap4PartParser uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_3

    .line 131
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save this part to file ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    if-nez p7, :cond_11

    .line 134
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_4

    .line 135
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_4
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_5

    .line 138
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subject:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    .line 143
    :cond_6
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_7

    .line 144
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v14

    .line 147
    .local v14, mDate:Ljava/util/Calendar;
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->dateValue:Ljava/lang/Long;

    .line 150
    .end local v14           #mDate:Ljava/util/Calendar;
    :cond_8
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_9

    .line 151
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(before)Cc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 153
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    const-string v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    const-string v4, "?="

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_a
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_b

    .line 158
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(after)Cc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_b
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_c

    .line 161
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(before)thread_topic:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 163
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    const-string v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    const-string v4, "?="

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    goto :goto_1

    .line 167
    :cond_d
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_e

    .line 168
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(after)thread_topic:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_e
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_f

    .line 171
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(before)Cc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 173
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    const-string v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    const-string v4, "?="

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    goto :goto_2

    .line 177
    :cond_10
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_11

    .line 178
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(after)thread_index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_11
    const-string v2, "base64"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 183
    if-nez p7, :cond_15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_15

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v15}, Lcom/htc/android/mail/ModifyBase64;->decodeBase64([B[I)[B

    move-result-object v12

    .line 186
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v15, v5

    move-object/from16 v0, p4

    invoke-direct {v2, v12, v4, v5, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 187
    const-string v2, "BIG5"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Util;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 189
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :cond_13
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 307
    :goto_4
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_14

    .line 308
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "body:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_14
    return-void

    .line 193
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v4

    const-string v5, ".Mail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v2, v4, v5, v6, v7}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :try_start_2
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_16

    .line 198
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "partial decode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_16
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .local v3, f:Ljava/io/FileOutputStream;
    move-object/from16 v2, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p2

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    .line 200
    invoke-static/range {v2 .. v8}, Lcom/htc/android/mail/Base64;->decodeImapFile(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/htc/android/mail/Account;Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;)Z

    move-result v17

    .line 201
    .local v17, result:Z
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_17

    .line 202
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attachment Downloading result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_17
    if-nez v17, :cond_13

    .line 204
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v18, savedfile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 206
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 207
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 209
    .end local v3           #f:Ljava/io/FileOutputStream;
    .end local v17           #result:Z
    .end local v18           #savedfile:Ljava/io/File;
    :catch_0
    move-exception v13

    .line 210
    .local v13, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v18       #savedfile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 213
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 214
    :cond_19
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 215
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 219
    .end local v13           #e:Ljava/io/IOException;
    .end local v18           #savedfile:Ljava/io/File;
    :catch_1
    move-exception v13

    .line 220
    .local v13, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v13}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 221
    if-nez p7, :cond_13

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<div align=\"center\" style=\"color: gray\">["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]</div>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 225
    .end local v13           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    throw v2

    .line 228
    :cond_1a
    const-string v2, "QUOTED-PRINTABLE"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 230
    if-nez p7, :cond_1b

    .line 231
    :try_start_5
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_1b

    .line 232
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "q charset is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", encode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1b
    if-nez p7, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1f

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/ByteQuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 237
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/ByteQuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v4

    move-object/from16 v0, p4

    invoke-direct {v2, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 238
    const-string v2, "BIG5"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1c

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Util;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 242
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    .line 257
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 258
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    goto/16 :goto_4

    .line 244
    :cond_1d
    :try_start_6
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 251
    :catch_2
    move-exception v13

    .line 252
    .restart local v13       #e:Ljava/io/UnsupportedEncodingException;
    :try_start_7
    invoke-virtual {v13}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 253
    if-nez p7, :cond_1e

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<div align=\"center\" style=\"color: gray\">["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]</div>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 257
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    goto :goto_6

    .line 247
    .end local v13           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1f
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v4

    const-string v5, ".Mail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v2, v4, v5, v6, v7}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/android/mail/Imap4PartParser;->saveFileWithPath(Ljava/lang/String;[B)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_5

    .line 257
    :catchall_1
    move-exception v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 258
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 257
    throw v2

    .line 261
    :cond_20
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_21

    .line 262
    const-string v2, "Imap4PartParser"

    const-string v4, "not base64 or QP"

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_21
    if-nez p7, :cond_24

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_24

    .line 265
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_22

    .line 266
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0 charset is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", encode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 269
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 298
    :cond_23
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 299
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    goto/16 :goto_4

    .line 272
    :cond_24
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v4

    const-string v5, ".Mail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v2, v4, v5, v6, v7}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 276
    :try_start_b
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_25

    .line 277
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "partial decode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_25
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .restart local v3       #f:Ljava/io/FileOutputStream;
    move-object/from16 v4, p0

    move-object/from16 v5, p9

    move-object/from16 v6, p3

    move-object v7, v3

    move-object/from16 v8, p2

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 279
    invoke-direct/range {v4 .. v11}, Lcom/htc/android/mail/Imap4PartParser;->processDownloadAttachment(Ljava/lang/String;Ljava/io/BufferedInputStream;Ljava/io/OutputStream;Lcom/htc/android/mail/Account;Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;)Z

    move-result v17

    .line 280
    .restart local v17       #result:Z
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_26

    .line 281
    const-string v2, "Imap4PartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attachment Downloading result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_26
    if-nez v17, :cond_23

    .line 283
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .restart local v18       #savedfile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 285
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 286
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_7

    .line 288
    .end local v3           #f:Ljava/io/FileOutputStream;
    .end local v17           #result:Z
    .end local v18           #savedfile:Ljava/io/File;
    :catch_3
    move-exception v13

    .line 289
    .local v13, e:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 290
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v18       #savedfile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 292
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 293
    :cond_28
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 294
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_7

    .line 298
    .end local v13           #e:Ljava/io/IOException;
    .end local v18           #savedfile:Ljava/io/File;
    :catchall_2
    move-exception v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 299
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 298
    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;)V
    .locals 34
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "charset"
    .parameter "encode"
    .parameter "mode"
    .parameter "saveAsFile"
    .parameter "uid"
    .parameter "filereference"
    .parameter "controller"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/mail/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/AbsRequestController;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p3, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    .local p11, handler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v28, "ISO-8859-1"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->mCharset:Ljava/lang/String;

    .line 32
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->mEncode:Ljava/lang/String;

    .line 45
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    .line 46
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    .line 47
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    .line 48
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 50
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    .line 51
    const-wide/16 v28, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->dateValue:Ljava/lang/Long;

    .line 52
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_to:Ljava/lang/String;

    .line 53
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/Imap4PartParser;->continueTo:Z

    .line 54
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 55
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 56
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->uid:Ljava/lang/String;

    .line 57
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    .line 58
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    .line 59
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    .line 60
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 61
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 62
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodySize:I

    .line 63
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    .line 64
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/Imap4PartParser;->start:I

    .line 65
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/Imap4PartParser;->end:I

    .line 66
    new-instance v28, Lcom/htc/android/mail/ByteString;

    const-string v29, ""

    invoke-direct/range {v28 .. v29}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    .line 314
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    .line 315
    if-eqz p4, :cond_0

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 316
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object p4

    .line 318
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->mCharset:Ljava/lang/String;

    .line 319
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->mEncode:Ljava/lang/String;

    .line 320
    move/from16 v19, p6

    .line 321
    .local v19, parseMode:I
    const/16 v23, -0x1

    .line 322
    .local v23, subMode:I
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 323
    .local v17, nDecodeLen:[I
    const/4 v5, 0x0

    .line 325
    .local v5, byteDecodeData:[B
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_2

    .line 326
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Save this part to file ?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_2
    if-nez p7, :cond_26

    .line 329
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_25

    .line 330
    if-nez v19, :cond_16

    .line 331
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->trim()Lcom/htc/android/mail/ByteString;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v13

    .line 332
    .local v13, line:Ljava/lang/String;
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_3

    .line 333
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "checking :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_3
    const-string v28, "Subject:"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 335
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->removeComments()V

    .line 336
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->unescape()V

    .line 337
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->trim()Lcom/htc/android/mail/ByteString;

    .line 339
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    const/16 v29, 0x3a

    invoke-virtual/range {v28 .. v29}, Lcom/htc/android/mail/ByteString;->indexOf(I)I

    move-result v6

    .line 340
    .local v6, colon:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    add-int/lit8 v29, v6, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/htc/android/mail/ByteString;->substring(I)Lcom/htc/android/mail/ByteString;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->trim()Lcom/htc/android/mail/ByteString;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    .line 341
    const/16 v23, 0x4

    .line 342
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_4

    .line 343
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "header_subject set:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v6           #colon:I
    .end local v13           #line:Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 344
    .restart local v13       #line:Ljava/lang/String;
    :cond_5
    const-string v28, "From:"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 345
    const-string v28, " "

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 346
    .local v26, token:[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 347
    const/16 v28, 0x1

    aget-object v28, v26, v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    .line 351
    :goto_2
    const/16 v23, 0x5

    .line 352
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_4

    .line 353
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "header_from set:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 349
    :cond_6
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    goto :goto_2

    .line 354
    .end local v26           #token:[Ljava/lang/String;
    :cond_7
    const-string v28, "Date:"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 355
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->removeComments()V

    .line 356
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->unescape()V

    .line 357
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->trim()Lcom/htc/android/mail/ByteString;

    .line 358
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    const/16 v29, 0x3a

    invoke-virtual/range {v28 .. v29}, Lcom/htc/android/mail/ByteString;->indexOf(I)I

    move-result v6

    .line 359
    .restart local v6       #colon:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    add-int/lit8 v29, v6, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/htc/android/mail/ByteString;->substring(I)Lcom/htc/android/mail/ByteString;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->trim()Lcom/htc/android/mail/ByteString;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    .line 360
    const/16 v23, 0x6

    .line 361
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_4

    .line 362
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "header_date set:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 363
    .end local v6           #colon:I
    :cond_8
    const-string v28, "To:"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 364
    const-string v28, " "

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 365
    .restart local v26       #token:[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 366
    const/16 v28, 0x1

    aget-object v28, v26, v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_to:Ljava/lang/String;

    .line 370
    :goto_3
    const/16 v23, 0x7

    .line 372
    goto/16 :goto_1

    .line 368
    :cond_9
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_to:Ljava/lang/String;

    goto :goto_3

    .line 372
    .end local v26           #token:[Ljava/lang/String;
    :cond_a
    const-string v28, "Cc:"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 373
    const-string v28, " "

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 374
    .restart local v26       #token:[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 375
    const/16 v28, 0x1

    aget-object v28, v26, v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    .line 379
    :goto_4
    const/16 v23, 0x8

    .line 381
    goto/16 :goto_1

    .line 377
    :cond_b
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    goto :goto_4

    .line 381
    .end local v26           #token:[Ljava/lang/String;
    :cond_c
    const-string v28, "Thread-Topic:"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 382
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_d

    .line 383
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "thread>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_d
    const-string v28, " "

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 385
    .restart local v26       #token:[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 386
    const/16 v28, 0x1

    aget-object v28, v26, v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    goto/16 :goto_1

    .line 388
    :cond_e
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    goto/16 :goto_1

    .line 390
    .end local v26           #token:[Ljava/lang/String;
    :cond_f
    const-string v28, "Thread-Index:"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 391
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_10

    .line 392
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "thread>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_10
    const-string v28, " "

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 394
    .restart local v26       #token:[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 395
    const/16 v28, 0x1

    aget-object v28, v26, v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    goto/16 :goto_1

    .line 397
    :cond_11
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    goto/16 :goto_1

    .line 399
    .end local v26           #token:[Ljava/lang/String;
    :cond_12
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_13

    .line 400
    const/16 v19, 0x1

    .line 401
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_4

    .line 402
    const-string v28, "Imap4PartParser"

    const-string v29, " start body session."

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    :cond_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_14

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 404
    const/16 v23, 0x9

    goto/16 :goto_1

    .line 405
    :cond_14
    const/16 v28, 0x7

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 406
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_to:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_to:Ljava/lang/String;

    goto/16 :goto_1

    .line 407
    :cond_15
    const/16 v28, 0x4

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 408
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->removeComments()V

    .line 409
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->unescape()V

    .line 410
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->trim()Lcom/htc/android/mail/ByteString;

    .line 412
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->trim()Lcom/htc/android/mail/ByteString;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 413
    .local v25, tmp:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    .line 414
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_4

    .line 415
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "header_subject set:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    .end local v13           #line:Ljava/lang/String;
    .end local v25           #tmp:Ljava/lang/String;
    :cond_16
    const/16 v28, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 420
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    .line 421
    :cond_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->mCharset:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/htc/android/mail/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 422
    .restart local v13       #line:Ljava/lang/String;
    const-string v28, " BODY["

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 423
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, bodystring:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 425
    const/16 v28, 0x1

    aget-object v28, v4, v28

    const-string v29, "{"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "}"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodySize:I

    .line 426
    :cond_18
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_4

    .line 427
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mail body start. With size:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->bodySize:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 436
    .end local v4           #bodystring:[Ljava/lang/String;
    :cond_19
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ne v10, v0, :cond_4

    .line 437
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 438
    const-string v28, ")"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1c

    const-string v28, "FLAGS"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 439
    const-string v13, ""

    .line 444
    :cond_1a
    :goto_5
    new-instance v28, Lcom/htc/android/mail/ByteString;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1b

    .line 446
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/android/mail/Imap4PartParser;->end:I

    .line 449
    :cond_1b
    new-instance v28, Lcom/htc/android/mail/ByteString;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->end:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/util/List;II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v32

    invoke-virtual/range {v28 .. v32}, Lcom/htc/android/mail/ByteString;->getBytes(I[BII)I

    move-result v27

    .line 452
    .local v27, value:I
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    .line 453
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/Imap4PartParser;->end:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/Imap4PartParser;->start:I

    goto/16 :goto_1

    .line 440
    .end local v27           #value:I
    :cond_1c
    const-string v28, ")"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, ")"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 441
    :cond_1d
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "UID "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "uid "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 442
    const-string v28, ")"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 458
    .end local v13           #line:Ljava/lang/String;
    :cond_1e
    const/16 v28, 0x2

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    .line 459
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 460
    .restart local v13       #line:Ljava/lang/String;
    const-string v28, " "

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 461
    .restart local v26       #token:[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object p8, v26, v28

    .line 462
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_4

    .line 463
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "uid is"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 464
    .end local v13           #line:Ljava/lang/String;
    .end local v26           #token:[Ljava/lang/String;
    :cond_1f
    const/16 v28, 0x3

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    .line 466
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    .line 467
    :cond_20
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ne v10, v0, :cond_4

    .line 468
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/mail/ByteString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->mCharset:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/htc/android/mail/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 469
    .restart local v13       #line:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 470
    const-string v28, ")"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_23

    const-string v28, "FLAGS"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 471
    const-string v13, ""

    .line 476
    :cond_21
    :goto_6
    new-instance v28, Lcom/htc/android/mail/ByteString;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_22

    .line 478
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/android/mail/Imap4PartParser;->end:I

    .line 480
    :cond_22
    new-instance v28, Lcom/htc/android/mail/ByteString;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->start:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/Imap4PartParser;->end:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/util/List;II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v32

    invoke-virtual/range {v28 .. v32}, Lcom/htc/android/mail/ByteString;->getBytes(I[BII)I

    move-result v27

    .line 483
    .restart local v27       #value:I
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->body:Lcom/htc/android/mail/ByteString;

    .line 484
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/Imap4PartParser;->end:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/Imap4PartParser;->start:I

    goto/16 :goto_1

    .line 472
    .end local v27           #value:I
    :cond_23
    const-string v28, ")"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_24

    const-string v28, ")"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 473
    :cond_24
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "UID "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "uid "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 474
    const-string v28, ")"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6

    .line 491
    .end local v13           #line:Ljava/lang/String;
    :cond_25
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    .line 495
    .end local v10           #i:I
    :cond_26
    if-nez p7, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_27

    .line 496
    sget-object v28, Lcom/htc/android/mail/Imap4PartParser;->sFromP:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 498
    .local v14, m:Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 500
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 501
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_2d

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 546
    .end local v14           #m:Ljava/util/regex/Matcher;
    :cond_27
    :goto_7
    if-nez p7, :cond_3f

    .line 547
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_28

    .line 548
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "from:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_28
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_29

    .line 551
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "subject:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2a

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    .line 556
    :cond_2a
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_2b

    .line 557
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "date:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_37

    const-string v28, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_37

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_date:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v16

    .line 560
    .local v16, mDate:Ljava/util/Calendar;
    if-eqz v16, :cond_36

    .line 561
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->dateValue:Ljava/lang/Long;

    .line 569
    .end local v16           #mDate:Ljava/util/Calendar;
    :goto_8
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_2c

    .line 570
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(before)Cc:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_38

    .line 572
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "=?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "?="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_38

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    goto :goto_9

    .line 506
    .restart local v14       #m:Ljava/util/regex/Matcher;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "\""

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    goto/16 :goto_7

    .line 508
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    .line 509
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_2f

    .line 510
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "from:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_2f
    sget-object v28, Lcom/htc/android/mail/Imap4PartParser;->sFromP:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 512
    .local v15, m2:Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v28

    if-eqz v28, :cond_31

    .line 513
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, "\""

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 514
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_30

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    goto/16 :goto_7

    .line 518
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "\""

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    goto/16 :goto_7

    .line 520
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_32

    .line 521
    const-string v28, "none"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 522
    const-string v28, "none"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    goto/16 :goto_7

    .line 523
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "<"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_33

    .line 526
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "<"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v29, ">"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    goto/16 :goto_7

    .line 528
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "<"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_34

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "<"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 531
    .local v20, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    const-string v29, "\""

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    const-string v29, "<"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v29, ">"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    goto/16 :goto_7

    .line 533
    .end local v20           #position:I
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_35

    .line 536
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    goto/16 :goto_7

    .line 539
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_from:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    goto/16 :goto_7

    .line 563
    .end local v14           #m:Ljava/util/regex/Matcher;
    .end local v15           #m2:Ljava/util/regex/Matcher;
    .restart local v16       #mDate:Ljava/util/Calendar;
    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->dateValue:Ljava/lang/Long;

    goto/16 :goto_8

    .line 566
    .end local v16           #mDate:Ljava/util/Calendar;
    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->dateValue:Ljava/lang/Long;

    goto/16 :goto_8

    .line 576
    :cond_38
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_39

    .line 577
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(after)Cc:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_39
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_3a

    .line 580
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(before)thread_topic:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3b

    .line 582
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "=?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "?="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3b

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    goto :goto_a

    .line 586
    :cond_3b
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_3c

    .line 587
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(after)thread_topic:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_3c
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_3d

    .line 590
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(before)Cc:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3e

    .line 592
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "=?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "?="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3e

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    goto :goto_b

    .line 596
    :cond_3e
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_3f

    .line 597
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(after)thread_index:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_3f
    const-string v28, "base64"

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4a

    .line 603
    if-nez p7, :cond_40

    .line 604
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_40

    .line 605
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "b charset is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", encode:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_40
    if-nez p7, :cond_44

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v28, v0

    if-eqz v28, :cond_44

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/android/mail/ModifyBase64;->decodeBase64([B[I)[B

    move-result-object v5

    .line 612
    new-instance v28, Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x0

    aget v30, v17, v30

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, p4

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 613
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 614
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_41

    .line 615
    const-string v28, "Imap4PartParser"

    const-string v29, "End base64"

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_41
    const-string v28, "BIG5"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_42

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Util;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 619
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0xd

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 669
    :cond_43
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 670
    :goto_c
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 747
    :goto_d
    return-void

    .line 622
    :cond_44
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v29

    const-string v30, ".Mail"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "token"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, -0x1

    invoke-static/range {v28 .. v32}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    .line 625
    const/16 v18, 0x3e8

    .line 626
    .local v18, oneTime:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    div-int v24, v28, v18

    .line 627
    .local v24, times:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    mul-int v29, v24, v18

    sub-int v12, v28, v29

    .line 629
    .local v12, last:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_e
    move/from16 v0, v24

    if-gt v10, v0, :cond_43

    .line 630
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_45

    .line 631
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "decode part : i ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_45
    const/16 v21, 0x0

    .line 633
    .local v21, start:I
    const/4 v8, 0x0

    .line 634
    .local v8, end:I
    move/from16 v0, v24

    if-ne v10, v0, :cond_48

    .line 635
    mul-int v21, v24, v18

    .line 636
    mul-int v28, v24, v18

    add-int v8, v28, v12

    .line 641
    :goto_f
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_46

    .line 642
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " @@@@  decode start."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_46
    new-instance v22, Lcom/htc/android/mail/ByteStringStreams;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v8}, Lcom/htc/android/mail/ByteStringStreams;-><init>(Ljava/util/ArrayList;II)V

    .line 644
    .local v22, streams:Lcom/htc/android/mail/ByteStringStreams;
    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/mail/ByteStringStreams;->getBase64InputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 647
    .local v11, in:Ljava/io/InputStream;
    :try_start_2
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_47

    .line 648
    const-string v28, "Imap4PartParser"

    const-string v29, " @@@@ decode."

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_47
    invoke-static {v11}, Lcom/htc/android/mail/Base64;->decode(Ljava/io/InputStream;)[B

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/Imap4PartParser;->saveFileWithPath(Ljava/lang/String;[B)Z

    .line 651
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 629
    :goto_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e

    .line 638
    .end local v11           #in:Ljava/io/InputStream;
    .end local v22           #streams:Lcom/htc/android/mail/ByteStringStreams;
    :cond_48
    mul-int v21, v10, v18

    .line 639
    add-int/lit8 v28, v10, 0x1

    mul-int v8, v28, v18

    goto :goto_f

    .line 653
    .restart local v11       #in:Ljava/io/InputStream;
    .restart local v22       #streams:Lcom/htc/android/mail/ByteStringStreams;
    :catch_0
    move-exception v7

    .line 654
    .local v7, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 655
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 656
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 658
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_10

    .line 663
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #end:I
    .end local v9           #file:Ljava/io/File;
    .end local v10           #i:I
    .end local v11           #in:Ljava/io/InputStream;
    .end local v12           #last:I
    .end local v18           #oneTime:I
    .end local v21           #start:I
    .end local v22           #streams:Lcom/htc/android/mail/ByteStringStreams;
    .end local v24           #times:I
    :catch_1
    move-exception v7

    .line 664
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 665
    if-nez p7, :cond_49

    .line 666
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "<div align=\"center\" style=\"color: gray\">["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x7f0b0207

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]</div>"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 669
    :cond_49
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v28

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 670
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 669
    throw v28

    .line 672
    :cond_4a
    const-string v28, "QUOTED-PRINTABLE"

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4f

    .line 674
    if-nez p7, :cond_4b

    .line 675
    :try_start_5
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_4b

    .line 676
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "q charset is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", encode:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_4b
    if-nez p7, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v28, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v28, :cond_4e

    .line 683
    :try_start_6
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/ByteQuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 684
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 685
    const-string v28, "BIG5"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_4c

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/Util;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 688
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0xd

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3

    .line 709
    :goto_11
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 710
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 711
    :goto_12
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    goto/16 :goto_d

    .line 689
    :catch_2
    move-exception v7

    .line 690
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_7
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    .line 691
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 692
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_11

    .line 703
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 704
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    :try_start_8
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 705
    if-nez p7, :cond_4d

    .line 706
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "<div align=\"center\" style=\"color: gray\">["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x7f0b0207

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]</div>"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 709
    :cond_4d
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 710
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    goto :goto_12

    .line 695
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4e
    :try_start_9
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Imap4PartParser;->linesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/ByteQuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 696
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v29

    const-string v30, ".Mail"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "token"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, -0x1

    invoke-static/range {v28 .. v32}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/Imap4PartParser;->saveFileWithPath(Ljava/lang/String;[B)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_11

    .line 709
    :catchall_1
    move-exception v28

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 710
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 711
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 709
    throw v28

    .line 714
    :cond_4f
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_50

    .line 715
    const-string v28, "Imap4PartParser"

    const-string v29, "not base64 or qp"

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_50
    if-nez p7, :cond_52

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v28, v0

    if-eqz v28, :cond_52

    .line 718
    sget-boolean v28, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v28, :cond_51

    .line 719
    const-string v28, "Imap4PartParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "0 charset is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", encode:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 723
    :cond_51
    :try_start_b
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_4

    .line 728
    :goto_13
    const/16 v28, 0x0

    :try_start_c
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 741
    :goto_14
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 742
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 743
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    goto/16 :goto_d

    .line 724
    :catch_4
    move-exception v7

    .line 725
    .restart local v7       #e:Ljava/io/UnsupportedEncodingException;
    :try_start_d
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 726
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_13

    .line 741
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_2
    move-exception v28

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyContentBuilder:Ljava/lang/StringBuilder;

    .line 742
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpBodyContent:[B

    .line 743
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 741
    throw v28

    .line 732
    :cond_52
    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Imap4PartParser;->linesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    .line 733
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v29

    const-string v30, ".Mail"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "token"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, -0x1

    invoke-static/range {v28 .. v32}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/Imap4PartParser;->saveFileWithPath(Ljava/lang/String;[B)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_14
.end method

.method private linesToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 897
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 899
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    .line 900
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ByteString;

    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, line:Ljava/lang/String;
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 902
    :cond_0
    const-string v3, ")"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .end local v2           #line:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 906
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private processDownloadAttachment(Ljava/lang/String;Ljava/io/BufferedInputStream;Ljava/io/OutputStream;Lcom/htc/android/mail/Account;Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;)Z
    .locals 22
    .parameter "tag"
    .parameter "in"
    .parameter "out"
    .parameter "account"
    .parameter "filereference"
    .parameter "controller"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/BufferedInputStream;",
            "Ljava/io/OutputStream;",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/AbsRequestController;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    .local p7, handler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v11, v0, [B

    .line 911
    .local v11, inputdata:[B
    const/16 v18, 0x0

    .line 912
    .local v18, token:I
    const/16 v17, 0x0

    .line 913
    .local v17, result:Z
    const/4 v13, 0x0

    .line 914
    .local v13, metEndTokenCount:I
    const/4 v3, 0x0

    .line 915
    .local v3, attachmentSize:I
    const/16 v16, 0x0

    .line 916
    .local v16, read_count:I
    const/4 v15, 0x0

    .line 917
    .local v15, percentage:F
    const/4 v6, 0x0

    .line 918
    .local v6, check_percentage:I
    const/4 v7, 0x0

    .line 920
    .local v7, current_percentage:I
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_0

    const-string v19, "Imap4PartParser"

    const-string v20, "processDownloadAttachment start"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Imap4PartParser;->readLine(Ljava/io/BufferedInputStream;)Lcom/htc/android/mail/ByteString;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 924
    .local v10, headerLine:Ljava/lang/String;
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_1

    const-string v19, "Imap4PartParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "response header:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v19

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 926
    .local v12, m:Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 927
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 930
    :cond_2
    :goto_0
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v18

    .line 932
    if-eqz v18, :cond_2

    .line 934
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 995
    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 996
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 997
    .local v14, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 998
    .local v5, bundle:Landroid/os/Bundle;
    const-string v19, "accountId"

    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 999
    const-string v19, "ret"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1000
    const-string v19, "filereference"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v14, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1003
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 1004
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v14, v2}, Lcom/htc/android/mail/AbsRequestController;->broadcastAttachmentDownloadComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V

    .line 1008
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v14           #msg:Landroid/os/Message;
    :cond_3
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_4

    const-string v19, "Imap4PartParser"

    const-string v20, "processDownloadAttachment end"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->close()V

    .line 1010
    return v17

    .line 937
    :cond_5
    add-int/lit8 v16, v16, 0x1

    .line 938
    if-nez v13, :cond_8

    .line 939
    const/16 v19, 0x0

    aget-byte v19, v11, v19

    const/16 v20, 0x29

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 940
    add-int/lit8 v13, v13, 0x1

    .line 975
    :cond_6
    :goto_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x42c8

    mul-float v15, v19, v20

    .line 976
    const/high16 v19, 0x4120

    div-float v19, v15, v19

    const/high16 v20, 0x4120

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 977
    rem-int/lit8 v19, v6, 0xa

    sub-int v19, v6, v19

    invoke-static/range {v19 .. v19}, Lcom/htc/android/mail/Base64;->needBroadcastBack(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 978
    if-eq v7, v6, :cond_2

    .line 981
    move v7, v6

    .line 982
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 983
    .restart local v14       #msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 984
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v19, "accountId"

    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 985
    const-string v19, "percentage"

    float-to-int v0, v15

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 986
    const-string v19, "filereference"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-virtual {v14, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 989
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 990
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v14, v2}, Lcom/htc/android/mail/AbsRequestController;->broadcastAttachmentDownloadChange(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1011
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v10           #headerLine:Ljava/lang/String;
    .end local v12           #m:Ljava/util/regex/Matcher;
    .end local v14           #msg:Landroid/os/Message;
    :catch_0
    move-exception v8

    .line 1012
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 1013
    throw v8

    .line 942
    .end local v8           #e:Ljava/io/IOException;
    .restart local v10       #headerLine:Ljava/lang/String;
    .restart local v12       #m:Ljava/util/regex/Matcher;
    :cond_7
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 943
    const/4 v13, 0x0

    goto :goto_2

    .line 945
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_a

    .line 946
    const/16 v19, 0x0

    aget-byte v19, v11, v19

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 947
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 949
    :cond_9
    const/16 v19, 0x29

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 950
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 951
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 954
    :cond_a
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v13, v0, :cond_6

    .line 955
    const/16 v19, 0x0

    aget-byte v19, v11, v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 956
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Imap4PartParser;->readLine(Ljava/io/BufferedInputStream;)Lcom/htc/android/mail/ByteString;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 957
    .local v9, endLine:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    const-string v19, "OK"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 958
    const/16 v17, 0x1

    .line 959
    goto/16 :goto_1

    .line 961
    :cond_b
    const/16 v19, 0x29

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 962
    const/16 v19, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 963
    const/16 v19, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 964
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 965
    .local v4, bEndLine:[B
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 966
    const/4 v13, 0x0

    .line 968
    goto/16 :goto_2

    .line 969
    .end local v4           #bEndLine:[B
    .end local v9           #endLine:Ljava/lang/String;
    :cond_c
    const/16 v19, 0x29

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 970
    const/16 v19, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 971
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 972
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method private readLine(Ljava/io/BufferedInputStream;)Lcom/htc/android/mail/ByteString;
    .locals 5
    .parameter "mIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 750
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 752
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    const-string v2, "Imap4PartParser"

    const-string v3, "enter readLine"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, d:I
    if-eq v0, v4, :cond_1

    .line 754
    int-to-char v2, v0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 755
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 757
    :cond_0
    int-to-char v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 758
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 764
    :cond_1
    if-ne v0, v4, :cond_3

    .line 765
    const/4 v2, 0x0

    .line 767
    :goto_1
    return-object v2

    .line 761
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 767
    :cond_3
    new-instance v2, Lcom/htc/android/mail/ByteString;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/android/mail/ByteString;-><init>([B)V

    goto :goto_1
.end method

.method private final saveFileWithPath(Ljava/lang/String;[B)Z
    .locals 4
    .parameter "name"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 820
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 822
    .local v1, f:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 823
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v1           #f:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 827
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getBinary()[B
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->bodyArray:[B

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->bodyContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getBodySize()I
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/htc/android/mail/Imap4PartParser;->bodySize:I

    return v0
.end method

.method public final getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->header_cc:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->dateValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->tmpFilename:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->header_fromEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->header_fromName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->header_subject:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreadIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->thread_index:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreadTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->thread_topic:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/htc/android/mail/Imap4PartParser;->header_to:Ljava/lang/String;

    return-object v0
.end method
