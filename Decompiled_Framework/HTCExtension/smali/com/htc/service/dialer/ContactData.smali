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

    new-instance v0, Lcom/htc/service/dialer/ContactData$1;

    invoke-direct {v0}, Lcom/htc/service/dialer/ContactData$1;-><init>()V

    sput-object v0, Lcom/htc/service/dialer/ContactData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    iput v2, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    iput v2, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    iput-object p3, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    iput p5, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    iput-object p4, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    iput p6, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/service/dialer/ContactData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/service/dialer/ContactData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/service/dialer/ContactData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRingtonePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVip()Z
    .locals 1

    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    iget-object v1, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/htc/service/dialer/ContactData;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mSendToVoiceMail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mRingtonePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/service/dialer/ContactData;->mVip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0
.end method
