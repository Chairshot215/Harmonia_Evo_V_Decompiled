.class public Lcom/htc/android/mail/MailMessage;
.super Ljava/lang/Object;
.source "MailMessage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public accountId:J

.field public flags:I

.field public group:Ljava/lang/String;

.field public id:J

.field public mSubjectCharset:Ljava/lang/String;

.field public mailBoxId:J

.field public msgIdInHeader:Ljava/lang/String;

.field public retryCount:I

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/htc/android/mail/MailMessage$1;

    invoke-direct {v0}, Lcom/htc/android/mail/MailMessage$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/MailMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    .line 20
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 21
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    .line 22
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->mSubjectCharset:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->retryCount:I

    .line 28
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .parameter "id"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    .line 20
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 21
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    .line 22
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->mSubjectCharset:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->retryCount:I

    .line 44
    iput-wide p1, p0, Lcom/htc/android/mail/MailMessage;->id:J

    .line 45
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "uid"
    .parameter "msgIdInHeader"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    .line 20
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 21
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    .line 22
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->mSubjectCharset:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->retryCount:I

    .line 31
    iput-wide p1, p0, Lcom/htc/android/mail/MailMessage;->id:J

    .line 32
    iput-object p3, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "id"
    .parameter "uid"
    .parameter "msgIdInHeader"
    .parameter "retryCount"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    .line 20
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 21
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    .line 22
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->mSubjectCharset:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->retryCount:I

    .line 37
    iput-wide p1, p0, Lcom/htc/android/mail/MailMessage;->id:J

    .line 38
    iput-object p3, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 40
    iput p5, p0, Lcom/htc/android/mail/MailMessage;->retryCount:I

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    .line 20
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 21
    iput-wide v2, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    .line 22
    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/htc/android/mail/Mail;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->mSubjectCharset:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/htc/android/mail/MailMessage;->retryCount:I

    .line 101
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/MailMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    instance-of v3, p1, Lcom/htc/android/mail/MailMessage;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/htc/android/mail/MailMessage;

    .line 118
    .local v0, other:Lcom/htc/android/mail/MailMessage;
    iget-wide v3, p0, Lcom/htc/android/mail/MailMessage;->id:J

    iget-wide v5, v0, Lcom/htc/android/mail/MailMessage;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAccount()Lcom/htc/android/mail/Account;
    .locals 3

    .prologue
    .line 68
    iget-wide v1, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 69
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 70
    new-instance v1, Ljava/lang/Error;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/htc/android/mail/MailMessage;->id:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailMessage;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/MailMessage;->id:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setAccountId(J)V
    .locals 0
    .parameter "_accountId"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    .line 53
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "_group"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/htc/android/mail/MailMessage;->id:J

    .line 49
    return-void
.end method

.method public setMailboxId(J)V
    .locals 0
    .parameter "mailboxId"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    .line 61
    return-void
.end method

.method public setSubjectCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "subjectCharset"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/android/mail/MailMessage;->mSubjectCharset:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-object v0, p0, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/htc/android/mail/MailMessage;->msgIdInHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-wide v0, p0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-wide v0, p0, Lcom/htc/android/mail/MailMessage;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
