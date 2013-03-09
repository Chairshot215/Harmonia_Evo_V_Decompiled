.class public Lcom/htc/store/module/TabResourcesDetail;
.super Landroid/content/res/Resources;
.source "TabResourcesDetail.java"


# static fields
.field static final ENTRY_NAME_ON:Ljava/lang/String; = "resource_id_on_"

.field static final ENTRY_NAME_OVERLAY:Ljava/lang/String; = "resource_id_overlay_"

.field static final ENTRY_NAME_REST:Ljava/lang/String; = "resource_id_rest_"

.field static final ENTRY_NAME_TITLE:Ljava/lang/String; = "resource_id_title_"

.field public static final FILE_NAME_SECONDARY:Ljava/lang/String; = "secondaryTabs_"

.field static final IMAGE_STATUS_ON:Ljava/lang/String; = "on"

.field static final IMAGE_STATUS_OVERLAY:Ljava/lang/String; = "overlay"

.field static final IMAGE_STATUS_REST:Ljava/lang/String; = "rest"

.field private static final MAJOR_SCALE:I = 0xf4240

.field private static final MAJOR_THREE_BITS:I = -0x236

.field private static final RESOURCE_ID_SECONDARY_COMMENTS_ON:I = -0xcf

.field private static final RESOURCE_ID_SECONDARY_COMMENTS_OVERLAY:I = -0xd0

.field private static final RESOURCE_ID_SECONDARY_COMMENTS_REST:I = -0xce

.field private static final RESOURCE_ID_SECONDARY_COMMENTS_TITLE:I = -0xcd

.field private static final RESOURCE_ID_SECONDARY_HOME_ON:I = -0xca

.field private static final RESOURCE_ID_SECONDARY_HOME_OVERLAY:I = -0xcb

.field private static final RESOURCE_ID_SECONDARY_HOME_REST:I = -0xc9

.field private static final RESOURCE_ID_SECONDARY_HOME_TITLE:I = -0xc8

.field private static final RESOURCE_ID_SECONDARY_SIMILAR_ON:I = -0xd4

.field private static final RESOURCE_ID_SECONDARY_SIMILAR_OVERLAY:I = -0xd5

.field private static final RESOURCE_ID_SECONDARY_SIMILAR_REST:I = -0xd3

.field private static final RESOURCE_ID_SECONDARY_SIMILAR_TITLE:I = -0xd2

.field private static final RESOURCE_TYPE_DRAWABLE:Ljava/lang/String; = "drawble"

.field private static final RESOURCE_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String;

.field private static sCount:I

.field private static sKey:Ljava/lang/Object;

.field private static sTabResources:Lcom/htc/store/module/TabResourcesDetail;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailCarouselId2CarouselItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/CarouselItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/store/module/TabResourcesDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/store/module/TabResourcesDetail;->sKey:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/htc/store/module/TabResourcesDetail;->sCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 83
    iput-object p1, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "whichTab"
    .parameter "key"

    .prologue
    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultResourceIds(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .parameter "tabName"
    .parameter "whichTab"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 615
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 617
    .local v0, result:[I
    const-string v1, "secondaryTabs_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    const v1, 0x7f0a004f

    aput v1, v0, v2

    .line 620
    const v1, 0x2080ae8

    aput v1, v0, v3

    .line 621
    const v1, 0x2080ae7

    aput v1, v0, v4

    .line 622
    const v1, 0x2080ad4

    aput v1, v0, v5

    .line 636
    :cond_0
    :goto_0
    return-object v0

    .line 623
    :cond_1
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    const v1, 0x7f0a0050

    aput v1, v0, v2

    .line 625
    const v1, 0x20802b5

    aput v1, v0, v3

    .line 626
    const v1, 0x20802b4

    aput v1, v0, v4

    .line 627
    const v1, 0x2080392

    aput v1, v0, v5

    goto :goto_0

    .line 628
    :cond_2
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    const v1, 0x7f0a0051

    aput v1, v0, v2

    .line 630
    const v1, 0x208034e

    aput v1, v0, v3

    .line 631
    const v1, 0x208034d

    aput v1, v0, v4

    .line 632
    const v1, 0x20803b2

    aput v1, v0, v5

    goto :goto_0

    .line 615
    nop

    :array_0
    .array-data 0x4
        0x5ct 0x0t 0xat 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/store/module/TabResourcesDetail;
    .locals 6
    .parameter "context"

    .prologue
    .line 87
    sget-object v1, Lcom/htc/store/module/TabResourcesDetail;->sKey:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/htc/store/module/TabResourcesDetail;

    invoke-direct {v0, p0}, Lcom/htc/store/module/TabResourcesDetail;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    .line 91
    :cond_0
    sget v0, Lcom/htc/store/module/TabResourcesDetail;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/store/module/TabResourcesDetail;->sCount:I

    .line 92
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reference count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/store/module/TabResourcesDetail;->sCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (new reference)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTabResourceID(Ljava/lang/String;Ljava/lang/String;Z)[I
    .locals 3
    .parameter "tabName"
    .parameter "whichTab"
    .parameter "useDefault"

    .prologue
    const/4 v2, 0x0

    .line 593
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 600
    .local v0, result:[I
    const-string v1, "secondaryTabs_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    if-eqz p3, :cond_1

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/htc/store/module/TabResourcesDetail;->getDefaultResourceIds(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 603
    const-string v1, "secondaryTabs_"

    invoke-virtual {p0, p1, v1}, Lcom/htc/store/module/TabResourcesDetail;->getLabelResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 611
    :cond_0
    :goto_0
    return-object v0

    .line 605
    :cond_1
    const-string v1, "secondaryTabs_"

    invoke-virtual {p0, p1, v1}, Lcom/htc/store/module/TabResourcesDetail;->getLabelResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 606
    const/4 v1, 0x1

    const-string v2, "secondaryTabs_"

    invoke-virtual {p0, p1, v2}, Lcom/htc/store/module/TabResourcesDetail;->getRestIconResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 607
    const/4 v1, 0x2

    const-string v2, "secondaryTabs_"

    invoke-virtual {p0, p1, v2}, Lcom/htc/store/module/TabResourcesDetail;->getOnIconResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 608
    const/4 v1, 0x3

    const-string v2, "secondaryTabs_"

    invoke-virtual {p0, p1, v2}, Lcom/htc/store/module/TabResourcesDetail;->getOverlayIconResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 593
    :array_0
    .array-data 0x4
        0x5ct 0x0t 0xat 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static releaseInstance()V
    .locals 6

    .prologue
    .line 98
    sget-object v1, Lcom/htc/store/module/TabResourcesDetail;->sKey:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget v0, Lcom/htc/store/module/TabResourcesDetail;->sCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/store/module/TabResourcesDetail;->sCount:I

    .line 100
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reference count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/store/module/TabResourcesDetail;->sCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (release reference)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    sget v0, Lcom/htc/store/module/TabResourcesDetail;->sCount:I

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tab resource for Detail is released....."

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    .line 105
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    iget-object v0, v0, Lcom/htc/store/module/TabResourcesDetail;->mDetailCarouselId2CarouselItem:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    iget-object v0, v0, Lcom/htc/store/module/TabResourcesDetail;->mDetailCarouselId2CarouselItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/store/module/TabResourcesDetail;->sTabResources:Lcom/htc/store/module/TabResourcesDetail;

    .line 111
    :cond_1
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 670
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 678
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 686
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 694
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailTabResourceID(Ljava/lang/String;Z)[I
    .locals 1
    .parameter "tabName"
    .parameter "useDefault"

    .prologue
    .line 640
    const-string v0, "secondaryTabs_"

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/store/module/TabResourcesDetail;->getTabResourceID(Ljava/lang/String;Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getDimension(I)F
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 726
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method public getDimensionPixelOffset(I)I
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 734
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDimensionPixelSize(I)I
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 742
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 750
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v11, 0xf4240

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 116
    sget-object v4, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDrawable() id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, filePath:Ljava/lang/String;
    const/4 v2, -0x1

    .line 119
    .local v2, resource_id:I
    div-int v4, p1, v11

    const/16 v5, -0x236

    if-ne v4, v5, :cond_0

    .line 126
    rem-int v2, p1, v11

    .line 127
    packed-switch v2, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 168
    sget-object v4, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "resource id = "

    aput-object v6, v5, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "   filepath = "

    aput-object v6, v5, v10

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 171
    .local v1, res:Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 172
    .local v3, ret:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/htc/store/module/TabResourcesDetail;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 181
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v3           #ret:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    return-object v3

    .line 129
    :pswitch_1
    const-string v4, "rest"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    goto :goto_0

    .line 133
    :pswitch_2
    const-string v4, "on"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_3
    const-string v4, "overlay"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    goto :goto_0

    .line 141
    :pswitch_4
    const-string v4, "rest"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    goto :goto_0

    .line 145
    :pswitch_5
    const-string v4, "on"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    goto :goto_0

    .line 149
    :pswitch_6
    const-string v4, "overlay"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    goto :goto_0

    .line 153
    :pswitch_7
    const-string v4, "rest"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    goto/16 :goto_0

    .line 157
    :pswitch_8
    const-string v4, "on"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    goto/16 :goto_0

    .line 161
    :pswitch_9
    const-string v4, "overlay"

    const-string v5, "secondaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 179
    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    .line 181
    :cond_3
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch -0xd5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getFraction(III)F
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 758
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    goto :goto_0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "name"
    .parameter "defType"
    .parameter "defPackage"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 521
    .local v0, i:I
    if-eq v6, v0, :cond_0

    .line 522
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 523
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 525
    :cond_0
    if-eqz p1, :cond_1

    .line 526
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 527
    if-eq v6, v0, :cond_1

    .line 528
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 529
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 533
    :cond_1
    const/4 v1, 0x0

    .line 534
    .local v1, ret:I
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 535
    const-string v2, "resource_id_title_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "string"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 537
    const-string v2, "secondaryTabs_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 539
    const v1, -0x21bc7a48

    .line 581
    :cond_2
    :goto_0
    if-eqz v1, :cond_e

    .line 587
    .end local v1           #ret:I
    :goto_1
    return v1

    .line 540
    .restart local v1       #ret:I
    :cond_3
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 541
    const v1, -0x21bc7a4d

    goto :goto_0

    .line 542
    :cond_4
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    const v1, -0x21bc7a52

    goto :goto_0

    .line 546
    :cond_5
    const-string v2, "resource_id_rest_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "drawble"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 548
    const-string v2, "secondaryTabs_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 550
    const v1, -0x21bc7a49

    goto :goto_0

    .line 551
    :cond_6
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 552
    const v1, -0x21bc7a4e

    goto :goto_0

    .line 553
    :cond_7
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    const v1, -0x21bc7a53

    goto/16 :goto_0

    .line 557
    :cond_8
    const-string v2, "resource_id_on_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "drawble"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 559
    const-string v2, "secondaryTabs_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 561
    const v1, -0x21bc7a4a

    goto/16 :goto_0

    .line 562
    :cond_9
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 563
    const v1, -0x21bc7a4f

    goto/16 :goto_0

    .line 564
    :cond_a
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 565
    const v1, -0x21bc7a54

    goto/16 :goto_0

    .line 568
    :cond_b
    const-string v2, "resource_id_overlay_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "drawble"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 570
    const-string v2, "secondaryTabs_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 571
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 572
    const v1, -0x21bc7a4b

    goto/16 :goto_0

    .line 573
    :cond_c
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 574
    const v1, -0x21bc7a50

    goto/16 :goto_0

    .line 575
    :cond_d
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 576
    const v1, -0x21bc7a55

    goto/16 :goto_0

    .line 584
    :cond_e
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_f

    .line 585
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    .line 587
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1
.end method

.method public getIntArray(I)[I
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getInteger(I)I
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 774
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLabelResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "s"
    .parameter "whichTab"

    .prologue
    .line 644
    const-string v0, "resource_id_title_"

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/store/module/TabResourcesDetail;->encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/store/module/TabResourcesDetail;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 782
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v0

    .line 790
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v0

    goto :goto_0
.end method

.method public getOnIconResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "s"
    .parameter "whichTab"

    .prologue
    .line 652
    const-string v0, "resource_id_on_"

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/store/module/TabResourcesDetail;->encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawble"

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/store/module/TabResourcesDetail;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOverlayIconResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "s"
    .parameter "whichTab"

    .prologue
    .line 656
    const-string v0, "resource_id_overlay_"

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/store/module/TabResourcesDetail;->encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawble"

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/store/module/TabResourcesDetail;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 806
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "quantity"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 798
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 814
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 10
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v9, 0xf4240

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 355
    sget-object v2, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResourceEntryName() id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 358
    .local v0, resource_id:I
    div-int v2, p1, v9

    const/16 v3, -0x236

    if-ne v2, v3, :cond_0

    .line 361
    rem-int v0, p1, v9

    .line 362
    packed-switch v0, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 409
    .end local v1           #ret:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 364
    .restart local v1       #ret:Ljava/lang/String;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_title_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    goto :goto_0

    .line 367
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_rest_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    goto :goto_0

    .line 370
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_on_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    goto :goto_0

    .line 373
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_overlay_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    goto :goto_0

    .line 377
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_title_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    goto :goto_0

    .line 380
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_rest_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    goto/16 :goto_0

    .line 383
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_on_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    goto/16 :goto_0

    .line 386
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_overlay_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    goto/16 :goto_0

    .line 390
    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_title_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    goto/16 :goto_0

    .line 393
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_rest_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    goto/16 :goto_0

    .line 396
    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_on_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    goto/16 :goto_0

    .line 399
    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_overlay_secondaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 406
    :cond_1
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 409
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch -0xd5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 8
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 241
    sget-object v3, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResourceName() id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v3, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, ret:Ljava/lang/String;
    const/4 v1, -0x1

    .line 247
    .local v1, resource_id:I
    const v3, 0xf4240

    :try_start_0
    div-int v3, p1, v3

    const/16 v4, -0x236

    if-ne v3, v4, :cond_0

    .line 250
    const v3, 0xf4240

    rem-int v1, p1, v3

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/store/module/TabResourcesDetail;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/store/module/TabResourcesDetail;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/store/module/TabResourcesDetail;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    packed-switch v1, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_1

    .line 310
    .end local v1           #resource_id:I
    .end local v2           #ret:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 254
    .restart local v1       #resource_id:I
    .restart local v2       #ret:Ljava/lang/String;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_title_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    goto :goto_0

    .line 258
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_rest_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    goto :goto_0

    .line 262
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_on_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    goto/16 :goto_0

    .line 266
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_overlay_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    goto/16 :goto_0

    .line 271
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_title_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    goto/16 :goto_0

    .line 275
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_rest_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    goto/16 :goto_0

    .line 279
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_on_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    goto/16 :goto_0

    .line 283
    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_overlay_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    goto/16 :goto_0

    .line 288
    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_title_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    goto/16 :goto_0

    .line 292
    :pswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_rest_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    goto/16 :goto_0

    .line 296
    :pswitch_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_on_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    goto/16 :goto_0

    .line 300
    :pswitch_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawble"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "resource_id_overlay_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secondaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 305
    :cond_1
    iget-object v3, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 310
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #resource_id:I
    .end local v2           #ret:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch -0xd5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 8
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v7, 0xf4240

    .line 315
    sget-object v2, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResourcePackageName() id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    const/4 v1, 0x0

    .line 317
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 318
    .local v0, resource_id:I
    div-int v2, p1, v7

    const/16 v3, -0x236

    if-ne v2, v3, :cond_2

    .line 321
    rem-int v0, p1, v7

    .line 322
    packed-switch v0, :pswitch_data_0

    .line 342
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 349
    :goto_1
    return-object v2

    .line 335
    :pswitch_1
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 338
    :cond_0
    const-string v1, "com.htc.store"

    goto :goto_0

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 346
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 349
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 322
    :pswitch_data_0
    .packed-switch -0xd5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 8
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v7, 0xf4240

    .line 416
    sget-object v2, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResourceTypeName() id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 419
    .local v0, resource_id:I
    div-int v2, p1, v7

    const/16 v3, -0x236

    if-ne v2, v3, :cond_0

    .line 422
    rem-int v0, p1, v7

    .line 423
    packed-switch v0, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 450
    .end local v1           #ret:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 427
    .restart local v1       #ret:Ljava/lang/String;
    :pswitch_1
    const-string v1, "string"

    .line 428
    goto :goto_0

    .line 439
    :pswitch_2
    const-string v1, "drawble"

    goto :goto_0

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 450
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 423
    nop

    :pswitch_data_0
    .packed-switch -0xd5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getRestIconResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "s"
    .parameter "whichTab"

    .prologue
    .line 648
    const-string v0, "resource_id_rest_"

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/store/module/TabResourcesDetail;->encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawble"

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/store/module/TabResourcesDetail;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 14
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 186
    sget-object v9, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "getString(), id = "

    aput-object v11, v10, v12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v9, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_0

    .line 189
    const/4 v8, 0x0

    .line 190
    .local v8, ret:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    iget-object v9, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, accessHelper:Lcom/htc/store/provider/AccessHelper;
    const/4 v6, 0x0

    .line 192
    .local v6, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/store/module/vo/CarouselItem;>;"
    const/4 v5, 0x0

    .line 193
    .local v5, item:Lcom/htc/store/module/vo/CarouselItem;
    const/4 v7, -0x1

    .line 194
    .local v7, resource_id:I
    const v9, 0xf4240

    div-int v9, p1, v9

    const/16 v10, -0x236

    if-ne v9, v10, :cond_4

    .line 196
    const v9, 0xf4240

    rem-int v7, p1, v9

    .line 197
    sget-object v9, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "getString(), resource_id = "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    div-int/lit8 v9, v7, 0x64

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    .line 199
    iget-object v9, p0, Lcom/htc/store/module/TabResourcesDetail;->mDetailCarouselId2CarouselItem:Ljava/util/Map;

    if-nez v9, :cond_2

    .line 200
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/htc/store/module/TabResourcesDetail;->mDetailCarouselId2CarouselItem:Ljava/util/Map;

    .line 201
    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->getItemDetailCarouselItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 202
    .local v2, detailItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/CarouselItem;

    .line 203
    .local v1, carouselItem:Lcom/htc/store/module/vo/CarouselItem;
    iget-object v9, p0, Lcom/htc/store/module/TabResourcesDetail;->mDetailCarouselId2CarouselItem:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v0           #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .end local v1           #carouselItem:Lcom/htc/store/module/vo/CarouselItem;
    .end local v2           #detailItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/htc/store/module/vo/CarouselItem;
    .end local v6           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/store/module/vo/CarouselItem;>;"
    .end local v7           #resource_id:I
    :catch_0
    move-exception v3

    .line 233
    .local v3, e:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 236
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #ret:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_1
    :goto_1
    return-object v8

    .line 206
    .restart local v0       #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .restart local v5       #item:Lcom/htc/store/module/vo/CarouselItem;
    .restart local v6       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/store/module/vo/CarouselItem;>;"
    .restart local v7       #resource_id:I
    .restart local v8       #ret:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/htc/store/module/TabResourcesDetail;->mDetailCarouselId2CarouselItem:Ljava/util/Map;

    .line 208
    :cond_3
    if-eqz v6, :cond_4

    .line 209
    sparse-switch v7, :sswitch_data_0

    .line 231
    :cond_4
    :goto_2
    if-nez v8, :cond_1

    iget-object v9, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 211
    :sswitch_0
    sget-object v9, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #item:Lcom/htc/store/module/vo/CarouselItem;
    check-cast v5, Lcom/htc/store/module/vo/CarouselItem;

    .line 212
    .restart local v5       #item:Lcom/htc/store/module/vo/CarouselItem;
    if-eqz v5, :cond_4

    .line 213
    invoke-virtual {v5}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 217
    :sswitch_1
    sget-object v9, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #item:Lcom/htc/store/module/vo/CarouselItem;
    check-cast v5, Lcom/htc/store/module/vo/CarouselItem;

    .line 218
    .restart local v5       #item:Lcom/htc/store/module/vo/CarouselItem;
    if-eqz v5, :cond_4

    .line 219
    invoke-virtual {v5}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 223
    :sswitch_2
    sget-object v9, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #item:Lcom/htc/store/module/vo/CarouselItem;
    check-cast v5, Lcom/htc/store/module/vo/CarouselItem;

    .line 224
    .restart local v5       #item:Lcom/htc/store/module/vo/CarouselItem;
    if-eqz v5, :cond_4

    .line 225
    invoke-virtual {v5}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineLabel()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_2

    .line 209
    :sswitch_data_0
    .sparse-switch
        -0xd2 -> :sswitch_2
        -0xcd -> :sswitch_1
        -0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 822
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 830
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .parameter "def"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 838
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 846
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 1
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 856
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 1
    .parameter "name"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 865
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    goto :goto_0
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 872
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0
.end method

.method public isPreloading()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v0

    .line 880
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v0

    goto :goto_0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 888
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 896
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 13
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v12, 0xf4240

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 455
    const/4 v2, 0x0

    .line 456
    .local v2, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 457
    .local v1, filePath:Ljava/lang/String;
    sget-object v5, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openRawResource() id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    const/4 v4, -0x1

    .line 459
    .local v4, resource_id:I
    div-int v5, p1, v12

    const/16 v6, -0x236

    if-ne v5, v6, :cond_0

    .line 462
    rem-int v4, p1, v12

    .line 463
    packed-switch v4, :pswitch_data_0

    .line 503
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 504
    sget-object v5, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   filepath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    move-object v2, v3

    .line 515
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 465
    :pswitch_1
    const-string v5, "rest"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    goto :goto_0

    .line 469
    :pswitch_2
    const-string v5, "on"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    goto :goto_0

    .line 473
    :pswitch_3
    const-string v5, "overlay"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    goto :goto_0

    .line 477
    :pswitch_4
    const-string v5, "rest"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    goto :goto_0

    .line 481
    :pswitch_5
    const-string v5, "on"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    goto :goto_0

    .line 485
    :pswitch_6
    const-string v5, "overlay"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    goto :goto_0

    .line 489
    :pswitch_7
    const-string v5, "rest"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    goto/16 :goto_0

    .line 493
    :pswitch_8
    const-string v5, "on"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    goto/16 :goto_0

    .line 497
    :pswitch_9
    const-string v5, "overlay"

    const-string v6, "secondaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/module/TabResourcesDetail;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 512
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 513
    iget-object v5, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto/16 :goto_1

    .line 515
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto/16 :goto_1

    .line 463
    nop

    :pswitch_data_0
    .packed-switch -0xd5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 904
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 912
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 922
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 931
    :goto_0
    return-void

    .line 930
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "ci"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 940
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0
.end method
