.class public Lcom/htc/clientprofileservice/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/clientprofileservice/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_CMTUIENABLED:Ljava/lang/String; = "CmtUiEnabled"

.field private static final TAG_CMTUISUBSCRIBED:Ljava/lang/String; = "CmtUiSubscribed"

.field private static final TAG_GROUP:Ljava/lang/String; = "Group"

.field private static final TAG_GROUPICON:Ljava/lang/String; = "grp_icon"

.field private static final TAG_GROUPICONFORMAT:Ljava/lang/String; = "grp_icon_format"

.field private static final TAG_GROUPICONSIZE:Ljava/lang/String; = "grp_icon_size"

.field private static final TAG_MAXSIZE:Ljava/lang/String; = "max_size"

.field private static final TAG_MYGROUPS:Ljava/lang/String; = "MyGroups"

.field private static final TAG_MYPHONEBOOK:Ljava/lang/String; = "MyPhonebook"

.field private static final TAG_NABPROVISIONINGSTATUS:Ljava/lang/String; = "nabProvisioningStatus"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PRIORITY:Ljava/lang/String; = "priority"

.field private static final TAG_PROFILE:Ljava/lang/String; = "profile"

.field private static final TAG_SYNCENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final TAG_SYNCENABLEDUSERINFO:Ljava/lang/String; = "syncEnabledUserInfo"

.field private static final TAG_TIICON:Ljava/lang/String; = "ti_icon"

.field private static final TAG_TIICONFORMAT:Ljava/lang/String; = "ti_icon_format"

.field private static final TAG_TIICONSIZE:Ljava/lang/String; = "ti_icon_size"

.field private static final TAG_USERINPUTDATA:Ljava/lang/String; = "userInputData"

.field private static final mShowCount:I = 0x2


# instance fields
.field private myGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/Group;",
            ">;"
        }
    .end annotation
.end field

.field private myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/htc/clientprofileservice/Profile$1;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/Profile$1;-><init>()V

    sput-object v0, Lcom/htc/clientprofileservice/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .parameter "version"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/htc/clientprofileservice/Profile;->version:D

    .line 30
    new-instance v0, Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/MyPhonebook;-><init>()V

    iput-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/htc/clientprofileservice/Profile;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-wide v0, p1, Lcom/htc/clientprofileservice/Profile;->version:D

    iput-wide v0, p0, Lcom/htc/clientprofileservice/Profile;->version:D

    .line 38
    new-instance v0, Lcom/htc/clientprofileservice/MyPhonebook;

    iget-object v1, p1, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-direct {v0, v1}, Lcom/htc/clientprofileservice/MyPhonebook;-><init>(Lcom/htc/clientprofileservice/MyPhonebook;)V

    iput-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public addGroup(Lcom/htc/clientprofileservice/Group;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getMyGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    return-object v0
.end method

.method public getMyPhonebook()Lcom/htc/clientprofileservice/MyPhonebook;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    return-object v0
.end method

.method public getUserInputData()Lcom/htc/clientprofileservice/UserInputData;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/htc/clientprofileservice/Profile;->version:D

    return-wide v0
.end method

.method public isCmtUiEnabled()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/UserInputData;->isCmtUiEnabled()Z

    move-result v0

    return v0
.end method

.method public isCmtUiSubscribed()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->isCmtUiSubscribed()Z

    move-result v0

    return v0
.end method

.method public isNabProvisioningStatus()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->isNabProvisioningStatus()Z

    move-result v0

    return v0
.end method

.method public isSyncEnabled()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/UserInputData;->isSyncEnabled()Z

    move-result v0

    return v0
.end method

.method public isSyncEnabledUserInfo()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/UserInputData;->isSyncEnabledUserInfo()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/clientprofileservice/Profile;->version:D

    .line 167
    const-class v5, Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/htc/clientprofileservice/MyPhonebook;

    iput-object v5, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    .line 169
    const-class v5, Lcom/htc/clientprofileservice/Group;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 170
    .local v2, groups:[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 171
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 172
    .local v1, group:Ljava/lang/Object;
    iget-object v5, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    check-cast v1, Lcom/htc/clientprofileservice/Group;

    .end local v1           #group:Ljava/lang/Object;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public setCmtUiEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/clientprofileservice/UserInputData;->setCmtUiEnabled(Z)V

    .line 64
    return-void
.end method

.method public setCmtUiSubscribed(Z)V
    .locals 1
    .parameter "subscribed"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0, p1}, Lcom/htc/clientprofileservice/MyPhonebook;->setCmtUiSubscribed(Z)V

    .line 52
    return-void
.end method

.method public setNabProvisioningStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0, p1}, Lcom/htc/clientprofileservice/MyPhonebook;->setNabProvisioningStatus(Z)V

    .line 48
    return-void
.end method

.method public setSyncEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/clientprofileservice/UserInputData;->setSyncEnabled(Z)V

    .line 60
    return-void
.end method

.method public setSyncEnabledUserInfo(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/clientprofileservice/UserInputData;->setSyncEnabledUserInfo(Z)V

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x2

    .line 108
    const-string v3, "Profile"

    .line 110
    .local v3, string:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/htc/clientprofileservice/Profile;->version:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "MyPhonebook:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\t\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "nabProvisioningStatus: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v6}, Lcom/htc/clientprofileservice/MyPhonebook;->isNabProvisioningStatus()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\t\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "CmtUiSubscribed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v6}, Lcom/htc/clientprofileservice/MyPhonebook;->isCmtUiSubscribed()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\t\t\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "userInputData:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\t\t\t\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "syncEnabledUserInfo: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v6}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clientprofileservice/UserInputData;->isSyncEnabledUserInfo()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\t\t\t\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "syncEnabled: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v6}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clientprofileservice/UserInputData;->isSyncEnabled()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\t\t\t\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "CmtUiEnabled: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v6}, Lcom/htc/clientprofileservice/MyPhonebook;->getUserInputData()Lcom/htc/clientprofileservice/UserInputData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clientprofileservice/UserInputData;->isCmtUiEnabled()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "MyGroups ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    iget-object v4, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    .local v0, count:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "):\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    if-le v0, v5, :cond_0

    move v2, v5

    .line 139
    .local v2, numToShow:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/clientprofileservice/Group;

    invoke-virtual {v4}, Lcom/htc/clientprofileservice/Group;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #numToShow:I
    :cond_0
    move v2, v0

    .line 138
    goto :goto_0

    .line 142
    .restart local v1       #i:I
    .restart local v2       #numToShow:I
    :cond_1
    if-le v0, v5, :cond_2

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_2
    return-object v3
.end method

.method public toXmlInStream()Ljava/io/ByteArrayOutputStream;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 209
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 210
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 212
    const/4 v6, 0x0

    const-string v7, "profile"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const/4 v6, 0x0

    const-string v7, "version"

    iget-wide v8, p0, Lcom/htc/clientprofileservice/Profile;->version:D

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    const/4 v6, 0x0

    const-string v7, "MyPhonebook"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const/4 v6, 0x0

    const-string v7, "nabProvisioningStatus"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    invoke-virtual {p0}, Lcom/htc/clientprofileservice/Profile;->isNabProvisioningStatus()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const/4 v6, 0x0

    const-string v7, "nabProvisioningStatus"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const/4 v6, 0x0

    const-string v7, "CmtUiSubscribed"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-virtual {p0}, Lcom/htc/clientprofileservice/Profile;->isCmtUiSubscribed()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    const/4 v6, 0x0

    const-string v7, "CmtUiSubscribed"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    const/4 v6, 0x0

    const-string v7, "userInputData"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    const/4 v6, 0x0

    const-string v7, "syncEnabledUserInfo"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-virtual {p0}, Lcom/htc/clientprofileservice/Profile;->isSyncEnabledUserInfo()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const/4 v6, 0x0

    const-string v7, "syncEnabledUserInfo"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const/4 v6, 0x0

    const-string v7, "syncEnabled"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    invoke-virtual {p0}, Lcom/htc/clientprofileservice/Profile;->isSyncEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const/4 v6, 0x0

    const-string v7, "syncEnabled"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    const/4 v6, 0x0

    const-string v7, "CmtUiEnabled"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-virtual {p0}, Lcom/htc/clientprofileservice/Profile;->isCmtUiEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    const/4 v6, 0x0

    const-string v7, "CmtUiEnabled"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    const/4 v6, 0x0

    const-string v7, "userInputData"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    const/4 v6, 0x0

    const-string v7, "MyPhonebook"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const/4 v6, 0x0

    const-string v7, "MyGroups"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 235
    iget-object v6, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/clientprofileservice/Group;

    .line 236
    .local v1, group:Lcom/htc/clientprofileservice/Group;
    const/4 v6, 0x0

    const-string v7, "Group"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    const/4 v6, 0x0

    const-string v7, "id"

    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const/4 v6, 0x0

    const-string v7, "type"

    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const/4 v6, 0x0

    const-string v7, "priority"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getPriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    const/4 v6, 0x0

    const-string v7, "priority"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    const/4 v6, 0x0

    const-string v7, "max_size"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getMaxSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const/4 v6, 0x0

    const-string v7, "max_size"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    const/4 v6, 0x0

    const-string v7, "grp_icon_size"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getGrpIconSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const/4 v6, 0x0

    const-string v7, "grp_icon_size"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    const/4 v6, 0x0

    const-string v7, "grp_icon_format"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getGrpIconFormat()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    const/4 v6, 0x0

    const-string v7, "grp_icon_format"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    const/4 v6, 0x0

    const-string v7, "grp_icon"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getGrpIconEncoded()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    const/4 v6, 0x0

    const-string v7, "grp_icon"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    const/4 v6, 0x0

    const-string v7, "ti_icon_size"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getTiIconSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    const/4 v6, 0x0

    const-string v7, "ti_icon_size"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    const/4 v6, 0x0

    const-string v7, "ti_icon_format"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getTiIconFormat()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    const/4 v6, 0x0

    const-string v7, "ti_icon_format"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    const/4 v6, 0x0

    const-string v7, "ti_icon"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/Group;->getTiIconEncoded()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    const/4 v6, 0x0

    const-string v7, "ti_icon"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    const/4 v6, 0x0

    const-string v7, "Group"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 278
    .end local v1           #group:Lcom/htc/clientprofileservice/Group;
    :cond_0
    const/4 v6, 0x0

    const-string v7, "MyGroups"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    const/4 v6, 0x0

    const-string v7, "profile"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 293
    .end local v2           #i:I
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-object v3

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_2
    move-object v3, v5

    .line 293
    goto :goto_1

    .line 287
    :catch_1
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 289
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public updateMyGroups(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/Group;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public updateMyphonebook(Lcom/htc/clientprofileservice/MyPhonebook;)Z
    .locals 1
    .parameter "mpb"

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    .line 303
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-wide v0, p0, Lcom/htc/clientprofileservice/Profile;->version:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 161
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object v0, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/clientprofileservice/Profile;->myGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/htc/clientprofileservice/Group;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 163
    return-void
.end method
