.class public Lcom/htc/opensense/social/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field extra:Landroid/os/Bundle;

.field id:Ljava/lang/String;

.field recipient_id:Ljava/lang/String;

.field requestId:Ljava/lang/String;

.field type:Ljava/lang/String;

.field unread:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/opensense/social/Notification$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Notification$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Notification;->id:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Notification;->type:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/Notification;->unread:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Notification;->requestId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Notification;->recipient_id:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Notification;->extra:Landroid/os/Bundle;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->recipient_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnread()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/opensense/social/Notification;->unread:I

    return v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/opensense/social/Notification;->extra:Landroid/os/Bundle;

    .line 77
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/opensense/social/Notification;->id:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setRecipientId(Ljava/lang/String;)V
    .locals 0
    .parameter "recipientId"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/opensense/social/Notification;->recipient_id:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .parameter "senderId"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/opensense/social/Notification;->requestId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/opensense/social/Notification;->type:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setUnread(I)V
    .locals 0
    .parameter "unread"

    .prologue
    .line 100
    iput p1, p0, Lcom/htc/opensense/social/Notification;->unread:I

    .line 101
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/htc/opensense/social/Notification;->unread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->recipient_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/htc/opensense/social/Notification;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method
