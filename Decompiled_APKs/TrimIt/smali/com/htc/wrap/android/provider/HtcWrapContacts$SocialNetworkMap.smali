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

    .prologue
    .line 1245
    sget-object v0, Landroid/provider/Contacts$SocialNetworkMap;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "data"

    .prologue
    .line 1362
    invoke-static {p0, p1}, Landroid/provider/Contacts$SocialNetworkMap;->appendLinkData(Ljava/lang/String;Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"

    .prologue
    .line 1367
    invoke-static {p0, p1, p2}, Landroid/provider/Contacts$SocialNetworkMap;->appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "text"
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

    .prologue
    .line 1349
    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1350
    .local v4, rawList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v0, convertedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;

    .line 1352
    .local v1, data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    new-instance v3, Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;

    invoke-direct {v3}, Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;-><init>()V

    .line 1353
    .local v3, newdata:Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;
    iget-object v5, v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    iput-object v5, v3, Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    .line 1354
    iget-object v5, v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    iput-object v5, v3, Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    .line 1355
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1357
    .end local v1           #data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    .end local v3           #newdata:Lcom/htc/wrap/android/provider/HtcWrapContacts$SocialNetworkMap$SNLinkData;
    :cond_0
    return-object v0
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 1343
    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateAndEventCount(Landroid/content/Context;JI)I
    .locals 1
    .parameter "context"
    .parameter "personId"
    .parameter "isRead"

    .prologue
    .line 1316
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$SocialNetworkMap;->getUpdateAndEventCount(Landroid/content/Context;JI)I

    move-result v0

    return v0
.end method

.method public static getUpdateAndEventCountForGroup(Landroid/content/Context;JI)I
    .locals 1
    .parameter "context"
    .parameter "groupId"
    .parameter "isRead"

    .prologue
    .line 1300
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$SocialNetworkMap;->getUpdateAndEventCountForGroup(Landroid/content/Context;JI)I

    move-result v0

    return v0
.end method

.method public static getUpdateAndEventCountForGroup(Landroid/content/Context;Ljava/lang/String;IJ)I
    .locals 1
    .parameter "context"
    .parameter "peopleIdList"
    .parameter "isRead"
    .parameter "currentTime"

    .prologue
    .line 1308
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/Contacts$SocialNetworkMap;->getUpdateAndEventCountForGroup(Landroid/content/Context;Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public static isAutoUpdate(II)Z
    .locals 1
    .parameter "updateFlag"
    .parameter "updateType"

    .prologue
    .line 1292
    invoke-static {p0, p1}, Landroid/provider/Contacts$SocialNetworkMap;->isAutoUpdate(II)Z

    move-result v0

    return v0
.end method

.method public static isPhotoAutoUpdate(I)Z
    .locals 1
    .parameter "updateFlag"

    .prologue
    .line 1278
    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->isPhotoAutoUpdate(I)Z

    move-result v0

    return v0
.end method

.method public static isStatusAutoUpdate(I)Z
    .locals 1
    .parameter "updateFlag"

    .prologue
    .line 1285
    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->isStatusAutoUpdate(I)Z

    move-result v0

    return v0
.end method

.method public static isWithinTime(JJJZ)J
    .locals 2
    .parameter "now"
    .parameter "time"
    .parameter "period"
    .parameter "isRepeatYearly"

    .prologue
    .line 1321
    invoke-static/range {p0 .. p6}, Landroid/provider/Contacts$SocialNetworkMap;->isWithinTime(JJJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "friendOf"

    .prologue
    .line 1373
    invoke-static {p0, p1}, Landroid/provider/Contacts$SocialNetworkMap;->removeLinkData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAllSNEventReadStatus(Landroid/content/Context;JZ)V
    .locals 0
    .parameter "context"
    .parameter "uid"
    .parameter "isRead"

    .prologue
    .line 1327
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$SocialNetworkMap;->setAllSNEventReadStatus(Landroid/content/Context;JZ)V

    .line 1328
    return-void
.end method
