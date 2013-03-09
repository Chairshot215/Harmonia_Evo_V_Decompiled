.class public Lcom/htc/peopleyouknow/FriendRequest;
.super Ljava/lang/Object;
.source "FriendRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/peopleyouknow/FriendRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DETAILS_BIO:Ljava/lang/String; = "Bio"

.field public static final DETAILS_BIRTHDAY:Ljava/lang/String; = "Birthday"

.field public static final DETAILS_COMPANY:Ljava/lang/String; = "Company"

.field public static final DETAILS_EMAIL:Ljava/lang/String; = "Email"

.field public static final DETAILS_FOLLOWERS:Ljava/lang/String; = "Followers"

.field public static final DETAILS_FOLLOWING:Ljava/lang/String; = "Following"

.field public static final DETAILS_LOCATION:Ljava/lang/String; = "Location"

.field public static final DETAILS_PHOTOURL:Ljava/lang/String; = "PhotoURL"

.field public static final DETAILS_TITLE:Ljava/lang/String; = "Title"

.field public static final DETAILS_TWEETS:Ljava/lang/String; = "Tweets"


# instance fields
.field private friendDetailsBundle:Landroid/os/Bundle;

.field public friendName:Ljava/lang/String;

.field public friendUID:Ljava/lang/String;

.field public matchedRawContactID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/peopleyouknow/FriendRequest$1;

    invoke-direct {v0}, Lcom/htc/peopleyouknow/FriendRequest$1;-><init>()V

    sput-object v0, Lcom/htc/peopleyouknow/FriendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->matchedRawContactID:J

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendUID:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendName:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->matchedRawContactID:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/peopleyouknow/FriendRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/peopleyouknow/FriendRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Bio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Company"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Followers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowing()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Following"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "PhotoURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTweets()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Tweets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 2
    .parameter "bio"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Bio"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 2
    .parameter "birthday"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2
    .parameter "company"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Company"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setFollowers(Ljava/lang/String;)V
    .locals 2
    .parameter "followers"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Followers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setFollowing(Ljava/lang/String;)V
    .locals 2
    .parameter "following"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Following"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setPhotoURL(Ljava/lang/String;)V
    .locals 2
    .parameter "photoURL"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "PhotoURL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setTweets(Ljava/lang/String;)V
    .locals 2
    .parameter "tweets"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Tweets"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-wide v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->matchedRawContactID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method
