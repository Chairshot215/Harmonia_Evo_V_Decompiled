.class public final Lcom/htc/service/dialer/ContactData;
.super Ljava/lang/Object;
.source "ContactData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/service/dialer/ContactData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mContactId:J

.field public mDisplayName:Ljava/lang/String;

.field public mEmail:[Ljava/lang/String;

.field public mPhoneNumber:[Ljava/lang/String;

.field public mPhoneType:[I

.field public mRingtonePath:Ljava/lang/String;

.field public mSendToVoiceMail:I

.field public mVip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/htc/service/dialer/ContactData$1;

    invoke-direct {v0}, Lcom/htc/service/dialer/ContactData$1;-><init>()V

    sput-object v0, Lcom/htc/service/dialer/ContactData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    .line 84
    iput v2, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    .line 86
    iput v2, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    .line 87
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "contactId"
    .parameter "name"
    .parameter "ringtonePath"
    .parameter "sendToVoiceMail"
    .parameter "vip"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide p1, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    .line 92
    iput-object p3, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    .line 93
    iput p5, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    .line 94
    iput-object p4, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    .line 95
    iput p6, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Lcom/htc/service/dialer/ContactData;->readFromParcel(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/service/dialer/ContactData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/service/dialer/ContactData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getRingtonePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    if-lez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVip()Z
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    if-lez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, size:I
    if-lez v0, :cond_0

    .line 76
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    .line 77
    iget-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 60
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 66
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0
.end method
