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

    new-instance v0, Lcom/htc/opensense/social/RemoteError$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/RemoteError$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static throwException(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    new-instance v0, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v0}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    iput-object p0, v0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    iput-object p1, v0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    invoke-virtual {v0}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .locals 1

    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->NOT_LOGIN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {p0}, Lcom/htc/opensense/social/RemoteError;->getException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    move-result-object v0

    return-object v0
.end method

.method public getException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/RemoteError;)V

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/htc/opensense/social/ErrorCode;->valueOf(I)Lcom/htc/opensense/social/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public throwRemoteError(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    iput-object p2, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

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

    iget-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/RemoteError;)V

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v0}, Lcom/htc/opensense/social/ErrorCode;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
