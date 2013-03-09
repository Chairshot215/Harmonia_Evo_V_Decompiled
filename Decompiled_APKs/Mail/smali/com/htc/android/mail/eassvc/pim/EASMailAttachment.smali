.class public Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;
.super Ljava/lang/Object;
.source "EASMailAttachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public attachContent:[B

.field public attachContentSize:J

.field public attachIsInline:I

.field public attachMimeType:Ljava/lang/String;

.field public attachName:Ljava/lang/String;

.field public attachPath:Ljava/lang/String;

.field public attachType:I

.field public cid:Ljava/lang/String;

.field public fromServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->fromServer:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachType:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachIsInline:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->cid:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    .line 61
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    .line 62
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 63
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASMailAttachment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkByteAryEqual([B[B)Z
    .locals 4
    .parameter "item1"
    .parameter "item2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    :cond_3
    move v0, v1

    .line 99
    goto :goto_0

    .line 101
    :cond_4
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 102
    goto :goto_0
.end method

.method private checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v0, 0x0

    .line 85
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isEqual(Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachType:I

    iget v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachType:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->fromServer:Z

    iget-boolean v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->fromServer:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachIsInline:I

    iget v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachIsInline:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->cid:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->cid:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->checkStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->checkByteAryEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    .line 25
    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->fromServer:Z

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachIsInline:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->cid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContentSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailAttachment;->attachContent:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 34
    return-void

    .line 25
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
