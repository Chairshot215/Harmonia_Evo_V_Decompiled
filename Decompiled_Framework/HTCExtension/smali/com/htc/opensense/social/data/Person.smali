.class public Lcom/htc/opensense/social/data/Person;
.super Lcom/htc/opensense/social/data/Extra;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSON:Ljava/lang/String; = "Person"


# instance fields
.field public birthday_day:I

.field public birthday_month:I

.field public birthday_year:I

.field public cell_number:Ljava/lang/String;

.field public email_address:Ljava/lang/String;

.field public fullname:Ljava/lang/String;

.field public largeBuddyIconUrl:Ljava/lang/String;

.field public lastProfileUpdateTime:J

.field public latestStatus:Lcom/htc/opensense/social/data/Feed;

.field public location:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field private user:Lcom/htc/opensense/social/data/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/opensense/social/data/Person$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Person$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    new-instance v0, Lcom/htc/opensense/social/data/Feed;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Feed;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Person;->setExtra(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/opensense/social/data/Person$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    new-instance v0, Lcom/htc/opensense/social/data/Feed;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Feed;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    iget-object v1, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/social/data/Person;

    iget-object v1, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeBuddyIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
