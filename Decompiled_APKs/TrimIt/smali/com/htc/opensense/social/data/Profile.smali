.class public Lcom/htc/opensense/social/data/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public display_name:Ljava/lang/String;

.field public profile_id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public profile_type:Ljava/lang/String;

.field public user_avatar:Ljava/lang/String;

.field public user_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/opensense/social/data/Profile$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Profile$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/data/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pid"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
