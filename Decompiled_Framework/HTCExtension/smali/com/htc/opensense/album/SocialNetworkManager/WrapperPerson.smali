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

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v0

    if-ne v2, v0, :cond_1

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-void

    :cond_1
    iput v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    :cond_0
    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    iget-object v0, p1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    iget-object v0, p2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    iget-object v0, p2, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iget-object v0, p2, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarDefault()I
    .locals 1

    const v0, 0x20800c2

    return v0
.end method

.method public getBuddyIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameByResource()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    return v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Person;
    .locals 2

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/opensense/social/data/Person;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    return-object v0
.end method

.method public isVisible()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method public setNameByResource(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Person;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p1, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_1
    iget-object v0, p1, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_2
    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    return-void
.end method

.method public toggleVisibility()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    if-ne v1, v0, :cond_0

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    :goto_0
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void

    :cond_0
    iput v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
