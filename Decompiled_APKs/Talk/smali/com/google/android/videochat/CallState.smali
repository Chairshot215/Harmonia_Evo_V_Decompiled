.class public Lcom/google/android/videochat/CallState;
.super Ljava/lang/Object;
.source "CallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/CallState$AudioDeviceState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/videochat/CallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field public availableAudioDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field public libjingleCallState:I

.field public mute:Z

.field public remoteBareJid:Ljava/lang/String;

.field public remoteFullJid:Ljava/lang/String;

.field public secure:Z

.field public video:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/videochat/CallState$1;

    invoke-direct {v0}, Lcom/google/android/videochat/CallState$1;-><init>()V

    sput-object v0, Lcom/google/android/videochat/CallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/videochat/CallState;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZZLcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V
    .locals 2
    .parameter "remoteJid"
    .parameter "libjingleCallState"
    .parameter "video"
    .parameter "mute"
    .parameter "secure"
    .parameter "audioDeviceState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ",
            "Lcom/google/android/videochat/CallState$AudioDeviceState;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p7, availableAudioDevices:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/videochat/CallSession$AudioDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    .line 70
    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, bareJid:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    .line 74
    :cond_0
    iput-object v0, p0, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    .line 76
    iput-boolean p3, p0, Lcom/google/android/videochat/CallState;->video:Z

    .line 77
    iput-boolean p4, p0, Lcom/google/android/videochat/CallState;->mute:Z

    .line 78
    iput-boolean p5, p0, Lcom/google/android/videochat/CallState;->secure:Z

    .line 79
    iput-object p6, p0, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 80
    iput-object p7, p0, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    .line 81
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/android/videochat/CallState;
    .locals 8

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/videochat/CallState;

    iget-object v1, p0, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    :goto_0
    iget v2, p0, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    iget-boolean v3, p0, Lcom/google/android/videochat/CallState;->video:Z

    iget-boolean v4, p0, Lcom/google/android/videochat/CallState;->mute:Z

    iget-boolean v5, p0, Lcom/google/android/videochat/CallState;->secure:Z

    iget-object v6, p0, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v7, p0, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/videochat/CallState;-><init>(Ljava/lang/String;IZZZLcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/videochat/CallState;->clone()Lcom/google/android/videochat/CallState;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/videochat/CallState;->video:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/videochat/CallState;->mute:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/google/android/videochat/CallState;->secure:Z

    .line 137
    invoke-static {}, Lcom/google/android/videochat/CallState$AudioDeviceState;->values()[Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 140
    .local v0, devicesAsIntArray:[I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    .line 141
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 142
    iget-object v2, p0, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/videochat/CallSession$AudioDevice;->values()[Lcom/google/android/videochat/CallSession$AudioDevice;

    move-result-object v3

    aget v4, v0, v1

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #devicesAsIntArray:[I
    .end local v1           #i:I
    :cond_1
    move v2, v4

    .line 134
    goto :goto_0

    :cond_2
    move v2, v4

    .line 135
    goto :goto_1

    :cond_3
    move v3, v4

    .line 136
    goto :goto_2

    .line 144
    .restart local v0       #devicesAsIntArray:[I
    .restart local v1       #i:I
    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 106
    iget-object v4, p0, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v4, p0, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    :goto_0
    iget v4, p0, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v4, p0, Lcom/google/android/videochat/CallState;->video:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-boolean v4, p0, Lcom/google/android/videochat/CallState;->mute:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-boolean v4, p0, Lcom/google/android/videochat/CallState;->secure:Z

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v4, p0, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v4}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v4, p0, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 120
    .local v1, devicesAsIntArray:[I
    const/4 v2, 0x0

    .line 121
    .local v2, i:I
    iget-object v4, p0, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 122
    .local v0, device:Lcom/google/android/videochat/CallSession$AudioDevice;
    invoke-virtual {v0}, Lcom/google/android/videochat/CallSession$AudioDevice;->ordinal()I

    move-result v4

    aput v4, v1, v2

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 111
    .end local v0           #device:Lcom/google/android/videochat/CallSession$AudioDevice;
    .end local v1           #devicesAsIntArray:[I
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v4, v6

    .line 114
    goto :goto_1

    :cond_2
    move v4, v6

    .line 115
    goto :goto_2

    :cond_3
    move v5, v6

    .line 116
    goto :goto_3

    .line 125
    .restart local v1       #devicesAsIntArray:[I
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 126
    return-void
.end method
