.class public Lcom/htc/peopleyouknow/FriendSuggestion;
.super Ljava/lang/Object;
.source "FriendSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/peopleyouknow/FriendSuggestion;",
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

.field public matchedEmail:Ljava/lang/String;

.field public matchedMobile:Ljava/lang/String;

.field public matchedRawContactID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/peopleyouknow/FriendSuggestion$1;

    invoke-direct {v0}, Lcom/htc/peopleyouknow/FriendSuggestion$1;-><init>()V

    sput-object v0, Lcom/htc/peopleyouknow/FriendSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    iput-object v2, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    iput-object v2, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendUID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/peopleyouknow/FriendSuggestion$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/peopleyouknow/FriendSuggestion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Bio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Company"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Followers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowing()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Following"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "PhotoURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTweets()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Tweets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Bio"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Company"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFollowers(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Followers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFollowing(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Following"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhotoURL(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "PhotoURL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTweets(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Tweets"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
