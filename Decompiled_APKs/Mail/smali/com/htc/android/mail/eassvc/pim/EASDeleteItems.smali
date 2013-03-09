.class public Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;
.super Ljava/lang/Object;
.source "EASDeleteItems.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addToTrack:Z

.field public mailId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mailSvrId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mailSvrId_messageId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mailboxId:J

.field public mailboxSvrId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    .line 15
    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxId:J

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxSvrId:Ljava/lang/String;

    .line 17
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->addToTrack:Z

    .line 21
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxId:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxSvrId:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->addToTrack:Z

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    .line 15
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxId:J

    .line 16
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxSvrId:Ljava/lang/String;

    .line 17
    iput-boolean v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->addToTrack:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .local v2, nMailSvrIdSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 82
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .local v3, nMailSvrId_messageIdSize:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 87
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, nMailIdSize:I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 92
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxId:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxSvrId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->addToTrack:Z

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASDeleteItems$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    .line 31
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 33
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 34
    .local v2, nMailServerIdSize:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 36
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0           #i:I
    .end local v2           #nMailServerIdSize:I
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 41
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 42
    .local v3, nMailServerId_messaegIdSize:I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 44
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId_messageId:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    .end local v0           #i:I
    .end local v3           #nMailServerId_messaegIdSize:I
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 49
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 50
    .local v1, nMailIdSize:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 52
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailId:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 56
    .end local v0           #i:I
    .end local v1           #nMailIdSize:I
    :cond_2
    iget-wide v6, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxId:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailboxSvrId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-boolean v4, p0, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->addToTrack:Z

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void

    .line 58
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method
