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

    .prologue
    .line 27
    new-instance v0, Lcom/htc/opensense/social/Person;

    const-string v1, "-1"

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/Person;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/social/Person;->NOT_LOGIN:Lcom/htc/opensense/social/Person;

    .line 29
    new-instance v0, Lcom/htc/opensense/social/Person$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Person$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    .line 24
    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    .line 69
    return-void

    .line 17
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
    .parameter "in"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    .line 24
    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->data:Landroid/os/Bundle;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 55
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setDescription(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setTitle(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/Activity;->setLastUpdateTime(J)V

    .line 58
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setActivityType(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setOwnerId(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/Activity;->setService(Lcom/htc/opensense/social/ISocialInterfaceProxy;)V

    .line 61
    return-void

    .line 17
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/opensense/social/Person$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    .line 24
    new-instance v0, Lcom/htc/opensense/social/Activity;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    .line 64
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    .line 65
    return-void

    .line 17
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
    .parameter "album"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addAlbum(Ljava/lang/String;Lcom/htc/opensense/social/Album;)Lcom/htc/opensense/social/Album;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 101
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/social/Person;

    .line 103
    .local v0, p:Lcom/htc/opensense/social/Person;
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
    .parameter "type"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

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

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

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

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    return-object v0
.end method

.method public getBuddyIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCellNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
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

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getFriendList(Ljava/lang/String;)[Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getFriendship(Ljava/lang/String;)I
    .locals 2
    .parameter "fid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getFriendship(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeBuddyIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestStatus()Lcom/htc/opensense/social/Activity;
    .locals 1

    .prologue
    .line 246
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

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getNotifications(Ljava/lang/String;)[Lcom/htc/opensense/social/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(Ljava/lang/String;)Lcom/htc/opensense/social/Person;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-interface {v0, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getPerson(Ljava/lang/String;)Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentMedia(I)[Lcom/htc/opensense/social/Medium;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getMedia(Ljava/lang/String;Ljava/lang/String;I)[Lcom/htc/opensense/social/Medium;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "Person"

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
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

    .prologue
    .line 108
    iget-object v1, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getProfile()Lcom/htc/opensense/social/Person;

    move-result-object v0

    .line 110
    .local v0, p:Lcom/htc/opensense/social/Person;
    iget-object v1, v0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setBirthdate([I)V
    .locals 3
    .parameter "date"

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBuddyIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCellNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "_number"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setCurrentLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "_email"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .parameter "fname"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setLargeBuddyIconURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setLatestStatus(Lcom/htc/opensense/social/Activity;)V
    .locals 0
    .parameter "latestStatus"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    .line 251
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "_number"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setProfileUpdateTime(J)V
    .locals 0
    .parameter "l"

    .prologue
    .line 192
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->fullname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->birthDate:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 80
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->cell_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->email_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->largeBuddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->buddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 90
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/opensense/social/Person;->latestStatus:Lcom/htc/opensense/social/Activity;

    invoke-virtual {v0}, Lcom/htc/opensense/social/Activity;->getLastUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    return-void
.end method
