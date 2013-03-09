.class public final Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap;
.super Ljava/lang/Object;
.source "HtcWrapContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocialNetworkMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;
    }
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "SNMap"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/SNMap"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/SNMap"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id"

.field public static final FRIENDOF_TAG:Ljava/lang/String; = "friendof:"

.field public static final ID_TAG:Ljava/lang/String; = "id:"

.field public static final LINK_DATA_ENDING_TOKEN:Ljava/lang/String; = "</sn>"

.field public static final LINK_DATA_STARTING_TOKEN:Ljava/lang/String; = "<sn>"

.field public static final TABLE_NAME:Ljava/lang/String; = "social_network_map"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/provider/Contacts$SocialNetworkMap;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/provider/Contacts$SocialNetworkMap;->appendLinkData(Ljava/lang/String;Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/provider/Contacts$SocialNetworkMap;->appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;

    new-instance v3, Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;

    invoke-direct {v3}, Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;-><init>()V

    iget-object v5, v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    iput-object v5, v3, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v5, v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    iput-object v5, v3, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateAndEventCount(Landroid/content/Context;JI)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$SocialNetworkMap;->getUpdateAndEventCount(Landroid/content/Context;JI)I

    move-result v0

    return v0
.end method

.method public static getUpdateAndEventCountForGroup(Landroid/content/Context;JI)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$SocialNetworkMap;->getUpdateAndEventCountForGroup(Landroid/content/Context;JI)I

    move-result v0

    return v0
.end method

.method public static getUpdateAndEventCountForGroup(Landroid/content/Context;Ljava/lang/String;IJ)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/Contacts$SocialNetworkMap;->getUpdateAndEventCountForGroup(Landroid/content/Context;Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public static isAutoUpdate(II)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/provider/Contacts$SocialNetworkMap;->isAutoUpdate(II)Z

    move-result v0

    return v0
.end method

.method public static isPhotoAutoUpdate(I)Z
    .locals 1

    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->isPhotoAutoUpdate(I)Z

    move-result v0

    return v0
.end method

.method public static isStatusAutoUpdate(I)Z
    .locals 1

    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->isStatusAutoUpdate(I)Z

    move-result v0

    return v0
.end method

.method public static isWithinTime(JJJZ)J
    .locals 2

    invoke-static/range {p0 .. p6}, Landroid/provider/Contacts$SocialNetworkMap;->isWithinTime(JJJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/provider/Contacts$SocialNetworkMap;->removeLinkData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAllSNEventReadStatus(Landroid/content/Context;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$SocialNetworkMap;->setAllSNEventReadStatus(Landroid/content/Context;JZ)V

    return-void
.end method
