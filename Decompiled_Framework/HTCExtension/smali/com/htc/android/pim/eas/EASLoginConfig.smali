.class public Lcom/htc/android/pim/eas/EASLoginConfig;
.super Ljava/lang/Object;
.source "EASLoginConfig.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/pim/eas/EASLoginConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceID:Ljava/lang/String;

.field public deviceType:Ljava/lang/String;

.field public domainName:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public heartBeatInterval:I

.field public password:Ljava/lang/String;

.field public protocolVer:Ljava/lang/String;

.field public requireSSL:Z

.field public safeUserName:Ljava/lang/String;

.field public serverName:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/android/pim/eas/EASLoginConfig$1;

    invoke-direct {v0}, Lcom/htc/android/pim/eas/EASLoginConfig$1;-><init>()V

    sput-object v0, Lcom/htc/android/pim/eas/EASLoginConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/pim/eas/EASLoginConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/android/pim/eas/EASLoginConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
