.class public Lcom/htc/opensense/social/RemoteError;
.super Ljava/lang/Object;
.source "RemoteError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/RemoteError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:Lcom/htc/opensense/social/ErrorCode;

.field public detailMsg:Ljava/lang/String;

.field private e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

.field public failed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/htc/opensense/social/RemoteError$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/RemoteError$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 34
    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 34
    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

.method public static throwException(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v0}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 122
    .local v0, error:Lcom/htc/opensense/social/RemoteError;
    iput-object p0, v0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 123
    iput-object p1, v0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 126
    invoke-virtual {v0}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 127
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->NOT_LOGIN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 134
    invoke-virtual {p0}, Lcom/htc/opensense/social/RemoteError;->getException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    move-result-object v0

    return-object v0
.end method

.method public getException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/RemoteError;)V

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/htc/opensense/social/ErrorCode;->valueOf(I)Lcom/htc/opensense/social/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public throwRemoteError(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 110
    iput-object p2, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 113
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method toRemoteException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/RemoteError;)V

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v0}, Lcom/htc/opensense/social/ErrorCode;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
