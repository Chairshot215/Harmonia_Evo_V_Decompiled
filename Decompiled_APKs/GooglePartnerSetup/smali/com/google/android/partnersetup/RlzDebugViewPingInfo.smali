.class public Lcom/google/android/partnersetup/RlzDebugViewPingInfo;
.super Ljava/lang/Object;
.source "RlzDebugViewPingInfo.java"

# interfaces
.implements Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;


# static fields
.field private static final dateFormat:Ljava/text/DateFormat;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mResources:Landroid/content/res/Resources;

.field private sortOrderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    .line 48
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mActivity:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method


# virtual methods
.method public buildItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$1;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$1;-><init>(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)V

    return-object v0
.end method

.method public getActivityTitleResource()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f030019

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/partnersetup/RlzProtocol$Pings;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getDefaultSortOrder()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getListEmptyStringResource()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f03001a

    return v0
.end method

.method public getMoreInfo(J)Ljava/lang/String;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 79
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "contents"

    aput-object v0, v2, v9

    const-string v0, "time_completed"

    aput-object v0, v2, v10

    const-string v0, "result"

    aput-object v0, v2, v11

    .line 85
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/google/android/partnersetup/RlzProtocol$Pings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 86
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mActivity:Landroid/app/Activity;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v7, info:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->dateFormat:Ljava/text/DateFormat;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030026

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .end local v7           #info:Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutColumns()[I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "time_completed"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSortColumns()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSortOrderMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->sortOrderMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->sortOrderMap:Ljava/util/Map;

    .line 72
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->sortOrderMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id ASC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->sortOrderMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "time_completed DESC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->sortOrderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$2;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$2;-><init>(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)V

    return-object v0
.end method
