.class public Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
.super Ljava/lang/Object;
.source "WrapperPerson.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyBaseData;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAvatar:Ljava/lang/String;

.field private mHandlerData:Landroid/os/Handler;

.field private mID:Ljava/lang/String;

.field private mIsProfileUpdated:Z

.field private mIsVisible:I

.field private mName:Ljava/lang/String;

.field private mNameResource:I

.field private mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->LOG_TAG:Ljava/lang/String;

    .line 205
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 219
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->readFromParcel(Landroid/os/Parcel;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V
    .locals 4
    .parameter "aPerson"
    .parameter "hDataHandler"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 34
    iput-boolean v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 75
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 81
    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 85
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 86
    return-void

    .line 83
    :cond_1
    iput v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    .locals 2
    .parameter "personOp"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V
    .locals 2
    .parameter "person"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 55
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 56
    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V
    .locals 2
    .parameter "profile"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 68
    iget-object v0, p1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    .locals 2
    .parameter "szAccount"
    .parameter "personOp"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 42
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p2}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V
    .locals 2
    .parameter "szAccount"
    .parameter "profile"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 60
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 61
    iget-object v0, p2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 62
    iget-object v0, p2, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 63
    iget-object v0, p2, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarDefault()I
    .locals 1

    .prologue
    .line 167
    const v0, 0x20800c2

    return v0
.end method

.method public getBuddyIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameByResource()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    return v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Person;
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, profile:Lcom/htc/opensense/social/data/Person;
    new-instance v0, Lcom/htc/opensense/social/data/Person;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Person;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Person;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 133
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    return-object v0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    if-ne v1, v2, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 151
    :cond_0
    return v0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 198
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 230
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method public setNameByResource(I)V
    .locals 0
    .parameter "nResid"

    .prologue
    .line 171
    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 172
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Person;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 89
    if-eqz p1, :cond_2

    .line 94
    iget-object v0, p1, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    :cond_0
    iget-object v0, p1, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 113
    :cond_1
    iget-object v0, p1, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 115
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 125
    :cond_2
    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 180
    return-void
.end method

.method public toggleVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    if-ne v1, v0, :cond_0

    .line 138
    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 142
    :goto_0
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 143
    return-void

    .line 140
    :cond_0
    iput v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return-void
.end method
