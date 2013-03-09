.class public Lcom/htc/opensense/album/SocialNetwork/ComparableRI;
.super Ljava/lang/Object;
.source "ComparableRI.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetwork/IComparableRI;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/ComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGroupItem:I

.field private mLabel:Ljava/lang/String;

.field private mQueriedAction:Ljava/lang/String;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mSupportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mSupportType:I

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    :cond_1
    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    iput p4, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mSupportType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mSupportType:I

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense/album/SocialNetwork/IComparableRI;
    .locals 1

    new-instance v0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/htc/opensense/album/SocialNetwork/IComparableRI;)I
    .locals 8

    const/4 v4, -0x1

    const/4 v5, 0x1

    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVF360Flag:Z

    if-ne v5, v6, :cond_4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.vodafone.people"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.vodafone.people"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return v4

    :cond_3
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    move v4, v5

    goto :goto_0

    :cond_4
    sget-boolean v6, Lcom/htc/opensense/album/AlbumCommon/Constants;->NEED_RAISE_PRIORITY_FOR_OPERATOR:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ComparableRI][compareTo]: Orange!!"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/htc/opensense/album/AlbumCommon/Constants;->TOP_PRIORITY_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v6, Lcom/htc/opensense/album/AlbumCommon/Constants;->TOP_PRIORITY_OPERATOR_NAME:Ljava/lang/String;

    invoke-interface {p1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v3, :cond_5

    if-eqz v2, :cond_2

    :cond_5
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    move v4, v5

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->compareTo(Lcom/htc/opensense/album/SocialNetwork/IComparableRI;)I

    move-result v0

    return v0
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 5

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableGroupItem()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    return-void
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupItem(I)Lcom/htc/opensense/album/SocialNetwork/IComparableRI;
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-le v1, v2, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v3

    if-ne p1, v3, :cond_2

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueriedActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSupportType()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mSupportType:I

    return v0
.end method

.method public isFake()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGroupItem()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mSupportType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setGroupItem(Lcom/htc/opensense/album/SocialNetwork/IComparableRI;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setQueriedActionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    return-void
.end method

.method public setSupportType(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mSupportType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mQueriedAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mSupportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mIsGroupItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
