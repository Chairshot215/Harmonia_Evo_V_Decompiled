.class public Lcom/htc/opensense/social/Activity;
.super Lcom/htc/opensense/social/Core;
.source "Activity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "Activity"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activity_type:Ljava/lang/String;

.field description:Ljava/lang/String;

.field endTime:J

.field iconUrl:Ljava/lang/String;

.field id:Ljava/lang/String;

.field lastupdate_time:J

.field location:Ljava/lang/String;

.field owner_id:Ljava/lang/String;

.field priority:I

.field privacy:Ljava/lang/String;

.field sourceUrl:Ljava/lang/String;

.field startTime:J

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/htc/opensense/social/Activity$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Activity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->data:Landroid/os/Bundle;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 53
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .locals 3
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "Activity"

    iget-object v2, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()[Lcom/htc/opensense/social/Comment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "Activity"

    iget-object v2, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getComments(Ljava/lang/String;Ljava/lang/String;)[Lcom/htc/opensense/social/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    return-wide v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()[Lcom/htc/opensense/social/Person;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getEventMembers(Ljava/lang/String;)[Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/htc/opensense/social/Activity;->priority:I

    return v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "Activity"

    return-object v0
.end method

.method public setActivityType(Ljava/lang/String;)V
    .locals 0
    .parameter "activityType"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "descp"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    .line 144
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->iconUrl:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "lastupdateTime"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    .line 120
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->location:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerId"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 167
    iput p1, p0, Lcom/htc/opensense/social/Activity;->priority:I

    .line 168
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceUrl"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->sourceUrl:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    .line 136
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 76
    return-void
.end method
