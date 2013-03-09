.class public Lcom/google/android/partnersetup/RlzDebugViewEventInfo;
.super Ljava/lang/Object;
.source "RlzDebugViewEventInfo.java"

# interfaces
.implements Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;


# instance fields
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
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->mResources:Landroid/content/res/Resources;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/partnersetup/RlzDebugViewEventInfo;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method


# virtual methods
.method public buildItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityTitleResource()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f03001b

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getDefaultSortOrder()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getListEmptyStringResource()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f03001c

    return v0
.end method

.method public getOutColumns()[I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x14t 0x0t 0x2t 0x1t
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSortColumns()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f03002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f03002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030023

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
    .line 66
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->sortOrderMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->sortOrderMap:Ljava/util/Map;

    .line 68
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->sortOrderMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ap ASC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->sortOrderMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "event_type ASC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->sortOrderMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status ASC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->sortOrderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;-><init>(Lcom/google/android/partnersetup/RlzDebugViewEventInfo;)V

    return-object v0
.end method
