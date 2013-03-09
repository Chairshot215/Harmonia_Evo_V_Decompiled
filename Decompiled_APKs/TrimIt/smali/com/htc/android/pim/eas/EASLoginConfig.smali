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

    .prologue
    .line 55
    new-instance v0, Lcom/htc/android/pim/eas/EASLoginConfig$1;

    invoke-direct {v0}, Lcom/htc/android/pim/eas/EASLoginConfig$1;-><init>()V

    sput-object v0, Lcom/htc/android/pim/eas/EASLoginConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    .line 34
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    .line 83
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/pim/eas/EASLoginConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
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

    .prologue
    .line 86
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    .line 42
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->domainName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-boolean v1, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->requireSSL:Z

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->protocolVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->heartBeatInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASLoginConfig;->safeUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
