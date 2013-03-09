.class public Lcom/htc/opensense/social/Person;
.super Lcom/htc/opensense/social/Core;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Person;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "Person"

.field public static final NOT_LOGIN:Lcom/htc/opensense/social/Person; = null

.field public static final PERSON:Ljava/lang/String; = "Person"


# instance fields
.field birthDate:[I

.field buddyIconUrl:Ljava/lang/String;

.field cell_number:Ljava/lang/String;

.field email_address:Ljava/lang/String;

.field fullname:Ljava/lang/String;

.field id:Ljava/lang/String;

.field largeBuddyIconUrl:Ljava/lang/String;

.field latestStatus:Lcom/htc/opensense/social/Activity;

.field location:Ljava/lang/String;

.field name:Ljava/lang/String;

.field phone_number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/opensense/social/Person;

    const-string v1, "-1"

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/Person;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/social/Person;->NOT_LOGIN:Lcom/htc/opensense/social/Person;

    new-instance v0, Lcom/htc/opensense/social/Person$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Person$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/Activity;->setLastUpdateTime(J)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setActivityType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setOwnerId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    iget-object v1, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setService(Lcom/htc/opensense/social/ISocialInterfaceProxy;)V

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/opensense/social/Person$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/social/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method addAlbum(Lcom/htc/opensense/social/Album;)Lcom/htc/opensense/social/Album;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addAlbum(Ljava/lang/String;Lcom/htc/opensense/social/Album;)Lcom/htc/opensense/social/Album;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/social/Person;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActivities(Ljava/lang/String;I)[Lcom/htc/opensense/social/Activity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getActivities(Ljava/lang/String;Ljava/lang/String;I)[Lcom/htc/opensense/social/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getAlbums()[Lcom/htc/opensense/social/Album;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getAlbums([Ljava/lang/String;[Ljava/lang/String;)[Lcom/htc/opensense/social/Album;

    move-result-object v0

    return-object v0
.end method

.method public getBirthdate()[I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    return-object v0
.end method

.method public getBuddyIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCellNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendList()[Lcom/htc/opensense/social/Person;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getFriendList(Ljava/lang/String;)[Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getFriendship(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getFriendship(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeBuddyIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestStatus()Lcom/htc/opensense/social/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    return-object v0
.end method

.method public getNotifications()[Lcom/htc/opensense/social/Notification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getNotifications(Ljava/lang/String;)[Lcom/htc/opensense/social/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(Ljava/lang/String;)Lcom/htc/opensense/social/Person;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-interface {v0, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getPerson(Ljava/lang/String;)Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentMedia(I)[Lcom/htc/opensense/social/Medium;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getMedia(Ljava/lang/String;Ljava/lang/String;I)[Lcom/htc/opensense/social/Medium;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "Person"

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getProfile()Lcom/htc/opensense/social/Person;

    move-result-object v0

    iget-object v1, v0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    iget-object v1, v0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    return-void
.end method

.method public setBirthdate([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBuddyIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setCellNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    return-void
.end method

.method public setCurrentLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    return-void
.end method

.method public setLargeBuddyIconURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setLatestStatus(Lcom/htc/opensense/social/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setProfileUpdateTime(J)V
    .locals 0

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getLastUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
