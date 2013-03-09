.class public Lcom/google/android/gtalkservice/GroupChatInvitation;
.super Ljava/lang/Object;
.source "GroupChatInvitation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/GroupChatInvitation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGroupContactId:J

.field private mInviter:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mRoomAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/gtalkservice/GroupChatInvitation$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/GroupChatInvitation$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/GroupChatInvitation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mRoomAddress:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mInviter:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mReason:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mPassword:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mGroupContactId:J

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mRoomAddress:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mInviter:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mReason:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mPassword:Ljava/lang/String;

    .line 35
    iput-wide p5, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mGroupContactId:J

    .line 36
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

.method public getGroupContactId()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mGroupContactId:J

    return-wide v0
.end method

.method public getInviter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mInviter:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mRoomAddress:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mRoomAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mInviter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Lcom/google/android/gtalkservice/GroupChatInvitation;->mGroupContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    return-void
.end method
