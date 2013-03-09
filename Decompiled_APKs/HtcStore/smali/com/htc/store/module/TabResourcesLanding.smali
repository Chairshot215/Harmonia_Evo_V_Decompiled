.class public Lcom/htc/store/module/TabResourcesLanding;
.super Landroid/content/res/Resources;
.source "TabResourcesLanding.java"


# static fields
.field static final ENTRY_NAME_ON:Ljava/lang/String; = "resource_id_on_"

.field static final ENTRY_NAME_OVERLAY:Ljava/lang/String; = "resource_id_overlay_"

.field static final ENTRY_NAME_REST:Ljava/lang/String; = "resource_id_rest_"

.field static final ENTRY_NAME_TITLE:Ljava/lang/String; = "resource_id_title_"

.field public static final FILE_NAME_PRIMARY:Ljava/lang/String; = "primaryTabs_"

.field static final IMAGE_STATUS_ON:Ljava/lang/String; = "on"

.field static final IMAGE_STATUS_OVERLAY:Ljava/lang/String; = "overlay"

.field static final IMAGE_STATUS_REST:Ljava/lang/String; = "rest"

.field private static final MAJOR_SCALE:I = 0xf4240

.field private static final MAJOR_THREE_BITS:I = -0x236

.field private static final RESOURCE_ID_PRIMARY_ACTIVITY_ON:I = -0x75

.field private static final RESOURCE_ID_PRIMARY_ACTIVITY_OVERLAY:I = -0x76

.field private static final RESOURCE_ID_PRIMARY_ACTIVITY_REST:I = -0x74

.field private static final RESOURCE_ID_PRIMARY_ACTIVITY_TITLE:I = -0x73

.field private static final RESOURCE_ID_PRIMARY_COMMENTS_ON:I = -0x70

.field private static final RESOURCE_ID_PRIMARY_COMMENTS_OVERLAY:I = -0x71

.field private static final RESOURCE_ID_PRIMARY_COMMENTS_REST:I = -0x6f

.field private static final RESOURCE_ID_PRIMARY_COMMENTS_TITLE:I = -0x6e

.field private static final RESOURCE_ID_PRIMARY_HOME_ON:I = -0x66

.field private static final RESOURCE_ID_PRIMARY_HOME_OVERLAY:I = -0x67

.field private static final RESOURCE_ID_PRIMARY_HOME_REST:I = -0x65

.field private static final RESOURCE_ID_PRIMARY_HOME_TITLE:I = -0x64

.field private static final RESOURCE_ID_PRIMARY_OPERATOR_ON:I = -0x6b

.field private static final RESOURCE_ID_PRIMARY_OPERATOR_OVERLAY:I = -0x6c

.field private static final RESOURCE_ID_PRIMARY_OPERATOR_REST:I = -0x6a

.field private static final RESOURCE_ID_PRIMARY_OPERATOR_TITLE:I = -0x69

.field private static final RESOURCE_TYPE_DRAWABLE:Ljava/lang/String; = "drawble"

.field private static final RESOURCE_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String;

.field private static sCount:I

.field private static sKey:Ljava/lang/Object;

.field private static sTabResources:Lcom/htc/store/module/TabResourcesLanding;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLandingCarouselId2CarouselItem:Ljava/util/Map;
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
    const-class v0, Lcom/htc/store/module/TabResourcesLanding;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/store/module/TabResourcesLanding;->sKey:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/htc/store/module/TabResourcesLanding;->sCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 89
    iput-object p1, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method private encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "whichTab"
    .parameter "key"

    .prologue
    .line 749
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

    .line 698
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 700
    .local v0, result:[I
    const-string v1, "primaryTabs_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    const v1, 0x7f0a0076

    aput v1, v0, v2

    .line 704
    const v1, 0x208029e

    aput v1, v0, v3

    .line 705
    const v1, 0x208029d

    aput v1, v0, v4

    .line 706
    const v1, 0x2080389

    aput v1, v0, v5

    .line 725
    :cond_0
    :goto_0
    return-object v0

    .line 707
    :cond_1
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 708
    const v1, 0x7f0a004d

    aput v1, v0, v2

    .line 709
    const v1, 0x2080ada

    aput v1, v0, v3

    .line 710
    const v1, 0x2080ad9

    aput v1, v0, v4

    .line 711
    const v1, 0x2080acf

    aput v1, v0, v5

    goto :goto_0

    .line 712
    :cond_2
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 713
    const v1, 0x7f0a004e

    aput v1, v0, v2

    .line 714
    const v1, 0x20802b5

    aput v1, v0, v3

    .line 715
    const v1, 0x20802b4

    aput v1, v0, v4

    .line 716
    const v1, 0x2080392

    aput v1, v0, v5

    goto :goto_0

    .line 717
    :cond_3
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const v1, 0x7f0a002b

    aput v1, v0, v2

    .line 719
    const v1, 0x2080401

    aput v1, v0, v3

    .line 720
    const v1, 0x2080400

    aput v1, v0, v4

    .line 721
    const v1, 0x2080386

    aput v1, v0, v5

    goto :goto_0

    .line 698
    :array_0
    .array-data 0x4
        0x5ct 0x0t 0xat 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/store/module/TabResourcesLanding;
    .locals 6
    .parameter "context"

    .prologue
    .line 93
    sget-object v1, Lcom/htc/store/module/TabResourcesLanding;->sKey:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/htc/store/module/TabResourcesLanding;

    invoke-direct {v0, p0}, Lcom/htc/store/module/TabResourcesLanding;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    .line 97
    :cond_0
    sget v0, Lcom/htc/store/module/TabResourcesLanding;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/store/module/TabResourcesLanding;->sCount:I

    .line 98
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reference count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/store/module/TabResourcesLanding;->sCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (new reference)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    return-object v0

    .line 99
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

    .line 676
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 683
    .local v0, result:[I
    const-string v1, "primaryTabs_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    if-eqz p3, :cond_1

    .line 685
    invoke-direct {p0, p1, p2}, Lcom/htc/store/module/TabResourcesLanding;->getDefaultResourceIds(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 686
    const-string v1, "primaryTabs_"

    invoke-virtual {p0, p1, v1}, Lcom/htc/store/module/TabResourcesLanding;->getLabelResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 694
    :cond_0
    :goto_0
    return-object v0

    .line 688
    :cond_1
    const-string v1, "primaryTabs_"

    invoke-virtual {p0, p1, v1}, Lcom/htc/store/module/TabResourcesLanding;->getLabelResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 689
    const/4 v1, 0x1

    const-string v2, "primaryTabs_"

    invoke-virtual {p0, p1, v2}, Lcom/htc/store/module/TabResourcesLanding;->getRestIconResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 690
    const/4 v1, 0x2

    const-string v2, "primaryTabs_"

    invoke-virtual {p0, p1, v2}, Lcom/htc/store/module/TabResourcesLanding;->getOnIconResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 691
    const/4 v1, 0x3

    const-string v2, "primaryTabs_"

    invoke-virtual {p0, p1, v2}, Lcom/htc/store/module/TabResourcesLanding;->getOverlayIconResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 676
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
    .line 104
    sget-object v1, Lcom/htc/store/module/TabResourcesLanding;->sKey:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget v0, Lcom/htc/store/module/TabResourcesLanding;->sCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/store/module/TabResourcesLanding;->sCount:I

    .line 106
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reference count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/store/module/TabResourcesLanding;->sCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (release reference)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    sget v0, Lcom/htc/store/module/TabResourcesLanding;->sCount:I

    if-nez v0, :cond_1

    .line 108
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tab resource for Landing is released....."

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    .line 111
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    iget-object v0, v0, Lcom/htc/store/module/TabResourcesLanding;->mLandingCarouselId2CarouselItem:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    iget-object v0, v0, Lcom/htc/store/module/TabResourcesLanding;->mLandingCarouselId2CarouselItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/store/module/TabResourcesLanding;->sTabResources:Lcom/htc/store/module/TabResourcesLanding;

    .line 117
    :cond_1
    monitor-exit v1

    .line 118
    return-void

    .line 117
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
    .line 756
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 759
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
    .line 764
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 767
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
    .line 772
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 775
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
    .line 780
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 783
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
    .line 788
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 791
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
    .line 796
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 799
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
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
    .line 812
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 815
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
    .line 820
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 823
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
    .line 828
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 831
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
    .line 836
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 839
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v12, 0xf4240

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 122
    sget-object v4, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

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

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, filePath:Ljava/lang/String;
    const/4 v2, -0x1

    .line 125
    .local v2, resource_id:I
    div-int v4, p1, v12

    const/16 v5, -0x236

    if-ne v4, v5, :cond_0

    .line 132
    rem-int v2, p1, v12

    .line 133
    packed-switch v2, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 186
    sget-object v4, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "resource id = "

    aput-object v6, v5, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "   filepath = "

    aput-object v6, v5, v10

    aput-object v0, v5, v11

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 188
    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 189
    .local v1, res:Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 190
    .local v3, ret:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/htc/store/module/TabResourcesLanding;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 199
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v3           #ret:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    return-object v3

    .line 135
    :pswitch_1
    const-string v4, "rest"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    goto :goto_0

    .line 139
    :pswitch_2
    const-string v4, "on"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_3
    const-string v4, "overlay"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    goto :goto_0

    .line 147
    :pswitch_4
    const-string v4, "rest"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    goto :goto_0

    .line 151
    :pswitch_5
    const-string v4, "on"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    goto :goto_0

    .line 155
    :pswitch_6
    const-string v4, "overlay"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_0

    .line 159
    :pswitch_7
    const-string v4, "rest"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    goto/16 :goto_0

    .line 163
    :pswitch_8
    const-string v4, "on"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    goto/16 :goto_0

    .line 167
    :pswitch_9
    const-string v4, "overlay"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    goto/16 :goto_0

    .line 171
    :pswitch_a
    const-string v4, "rest"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    goto/16 :goto_0

    .line 175
    :pswitch_b
    const-string v4, "on"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    goto/16 :goto_0

    .line 179
    :pswitch_c
    const-string v4, "overlay"

    const-string v5, "primaryTabs"

    sget-object v6, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-static {v4, v5, v6}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    .line 199
    :cond_3
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch -0x76
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
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
    .line 844
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 847
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    goto :goto_0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "name"
    .parameter "defType"
    .parameter "defPackage"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 595
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 596
    .local v0, i:I
    if-eq v7, v0, :cond_0

    .line 597
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 598
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 600
    :cond_0
    if-eqz p1, :cond_1

    .line 601
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 602
    if-eq v7, v0, :cond_1

    .line 603
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 604
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 608
    :cond_1
    const/4 v1, 0x0

    .line 609
    .local v1, ret:I
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 610
    const-string v2, "resource_id_title_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "string"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 612
    const-string v2, "primaryTabs_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 614
    const v1, -0x21bc79e4

    .line 664
    :cond_2
    :goto_0
    if-eqz v1, :cond_12

    .line 670
    .end local v1           #ret:I
    :goto_1
    return v1

    .line 615
    .restart local v1       #ret:I
    :cond_3
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 616
    const v1, -0x21bc79e9

    goto :goto_0

    .line 617
    :cond_4
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 618
    const v1, -0x21bc79ee

    goto :goto_0

    .line 619
    :cond_5
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    const v1, -0x21bc79f3

    goto :goto_0

    .line 623
    :cond_6
    const-string v2, "resource_id_rest_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "drawble"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 625
    const-string v2, "primaryTabs_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 627
    const v1, -0x21bc79e5

    goto :goto_0

    .line 628
    :cond_7
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 629
    const v1, -0x21bc79ea

    goto/16 :goto_0

    .line 630
    :cond_8
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 631
    const v1, -0x21bc79ef

    goto/16 :goto_0

    .line 632
    :cond_9
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    const v1, -0x21bc79f4

    goto/16 :goto_0

    .line 636
    :cond_a
    const-string v2, "resource_id_on_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "drawble"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 638
    const-string v2, "primaryTabs_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 640
    const v1, -0x21bc79e6

    goto/16 :goto_0

    .line 641
    :cond_b
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 642
    const v1, -0x21bc79eb

    goto/16 :goto_0

    .line 643
    :cond_c
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 644
    const v1, -0x21bc79f0

    goto/16 :goto_0

    .line 645
    :cond_d
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 646
    const v1, -0x21bc79f5

    goto/16 :goto_0

    .line 649
    :cond_e
    const-string v2, "resource_id_overlay_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "drawble"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 651
    const-string v2, "primaryTabs_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 652
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 653
    const v1, -0x21bc79e7

    goto/16 :goto_0

    .line 654
    :cond_f
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 655
    const v1, -0x21bc79ec

    goto/16 :goto_0

    .line 656
    :cond_10
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 657
    const v1, -0x21bc79f1

    goto/16 :goto_0

    .line 658
    :cond_11
    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 659
    const v1, -0x21bc79f6

    goto/16 :goto_0

    .line 667
    :cond_12
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_13

    .line 668
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    .line 670
    :cond_13
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
    .line 852
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 855
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
    .line 860
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 863
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
    .line 733
    const-string v0, "resource_id_title_"

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/store/module/TabResourcesLanding;->encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/store/module/TabResourcesLanding;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLandingTabResourceID(Ljava/lang/String;Z)[I
    .locals 1
    .parameter "tabName"
    .parameter "useDefault"

    .prologue
    .line 729
    const-string v0, "primaryTabs_"

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/store/module/TabResourcesLanding;->getTabResourceID(Ljava/lang/String;Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
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
    .line 868
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 871
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
    .line 876
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v0

    .line 879
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
    .line 741
    const-string v0, "resource_id_on_"

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/store/module/TabResourcesLanding;->encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawble"

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/store/module/TabResourcesLanding;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOverlayIconResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "s"
    .parameter "whichTab"

    .prologue
    .line 745
    const-string v0, "resource_id_overlay_"

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/store/module/TabResourcesLanding;->encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawble"

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/store/module/TabResourcesLanding;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

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
    .line 892
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 895
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
    .line 884
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 887
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
    .line 900
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 903
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 11
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v10, 0xf4240

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 401
    sget-object v2, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

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

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 404
    .local v0, resource_id:I
    div-int v2, p1, v10

    const/16 v3, -0x236

    if-ne v2, v3, :cond_0

    .line 407
    rem-int v0, p1, v10

    .line 408
    packed-switch v0, :pswitch_data_0

    .line 462
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 468
    .end local v1           #ret:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 410
    .restart local v1       #ret:Ljava/lang/String;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_title_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    goto :goto_0

    .line 413
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_rest_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    goto :goto_0

    .line 416
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_on_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    goto :goto_0

    .line 419
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_overlay_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    goto :goto_0

    .line 423
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_title_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    goto :goto_0

    .line 426
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_rest_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    goto/16 :goto_0

    .line 429
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_on_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    goto/16 :goto_0

    .line 432
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_overlay_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    goto/16 :goto_0

    .line 436
    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_title_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    goto/16 :goto_0

    .line 439
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_rest_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    goto/16 :goto_0

    .line 442
    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_on_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    goto/16 :goto_0

    .line 445
    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_overlay_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    goto/16 :goto_0

    .line 449
    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_title_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    goto/16 :goto_0

    .line 452
    :pswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_rest_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    goto/16 :goto_0

    .line 455
    :pswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_on_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    goto/16 :goto_0

    .line 458
    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource_id_overlay_primaryTabs_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 466
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 468
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 408
    :pswitch_data_0
    .packed-switch -0x76
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
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

    .line 265
    sget-object v3, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

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

    .line 267
    iget-object v3, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, ret:Ljava/lang/String;
    const/4 v1, -0x1

    .line 271
    .local v1, resource_id:I
    const v3, 0xf4240

    :try_start_0
    div-int v3, p1, v3

    const/16 v4, -0x236

    if-ne v3, v4, :cond_0

    .line 274
    const v3, 0xf4240

    rem-int v1, p1, v3

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/store/module/TabResourcesLanding;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/store/module/TabResourcesLanding;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/store/module/TabResourcesLanding;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    packed-switch v1, :pswitch_data_0

    .line 347
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_1

    .line 352
    .end local v1           #resource_id:I
    .end local v2           #ret:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 278
    .restart local v1       #resource_id:I
    .restart local v2       #ret:Ljava/lang/String;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    goto :goto_0

    .line 282
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    goto :goto_0

    .line 286
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    goto/16 :goto_0

    .line 290
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    goto/16 :goto_0

    .line 295
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    goto/16 :goto_0

    .line 299
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    goto/16 :goto_0

    .line 303
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    goto/16 :goto_0

    .line 307
    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    goto/16 :goto_0

    .line 312
    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    goto/16 :goto_0

    .line 316
    :pswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    goto/16 :goto_0

    .line 320
    :pswitch_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    goto/16 :goto_0

    .line 324
    :pswitch_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    goto/16 :goto_0

    .line 329
    :pswitch_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    goto/16 :goto_0

    .line 333
    :pswitch_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    goto/16 :goto_0

    .line 337
    :pswitch_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    goto/16 :goto_0

    .line 341
    :pswitch_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

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

    const-string v4, "primaryTabs_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 347
    :cond_1
    iget-object v3, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 352
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #resource_id:I
    .end local v2           #ret:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch -0x76
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
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

    .line 357
    sget-object v2, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

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

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 360
    .local v0, resource_id:I
    div-int v2, p1, v7

    const/16 v3, -0x236

    if-ne v2, v3, :cond_2

    .line 363
    rem-int v0, p1, v7

    .line 364
    packed-switch v0, :pswitch_data_0

    .line 388
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 395
    :goto_1
    return-object v2

    .line 381
    :pswitch_1
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 384
    :cond_0
    const-string v1, "com.htc.store"

    goto :goto_0

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 395
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 364
    :pswitch_data_0
    .packed-switch -0x76
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

    .line 475
    sget-object v2, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

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

    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 478
    .local v0, resource_id:I
    div-int v2, p1, v7

    const/16 v3, -0x236

    if-ne v2, v3, :cond_0

    .line 481
    rem-int v0, p1, v7

    .line 482
    packed-switch v0, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 513
    .end local v1           #ret:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 487
    .restart local v1       #ret:Ljava/lang/String;
    :pswitch_1
    const-string v1, "string"

    .line 488
    goto :goto_0

    .line 502
    :pswitch_2
    const-string v1, "drawble"

    goto :goto_0

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 510
    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 513
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch -0x76
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
    .line 737
    const-string v0, "resource_id_rest_"

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/store/module/TabResourcesLanding;->encodeResourceEntryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawble"

    iget-object v2, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/store/module/TabResourcesLanding;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

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

    .line 204
    sget-object v9, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "getString(), id = "

    aput-object v11, v10, v12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v9, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_0

    .line 207
    const/4 v8, 0x0

    .line 208
    .local v8, ret:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    iget-object v9, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, accessHelper:Lcom/htc/store/provider/AccessHelper;
    const/4 v5, 0x0

    .line 210
    .local v5, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/store/module/vo/CarouselItem;>;"
    const/4 v4, 0x0

    .line 211
    .local v4, item:Lcom/htc/store/module/vo/CarouselItem;
    const/4 v7, -0x1

    .line 212
    .local v7, resource_id:I
    const v9, 0xf4240

    div-int v9, p1, v9

    const/16 v10, -0x236

    if-ne v9, v10, :cond_4

    .line 214
    const v9, 0xf4240

    rem-int v7, p1, v9

    .line 215
    sget-object v9, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

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

    .line 216
    div-int/lit8 v9, v7, 0x64

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 217
    iget-object v9, p0, Lcom/htc/store/module/TabResourcesLanding;->mLandingCarouselId2CarouselItem:Ljava/util/Map;

    if-nez v9, :cond_2

    .line 218
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/htc/store/module/TabResourcesLanding;->mLandingCarouselId2CarouselItem:Ljava/util/Map;

    .line 219
    invoke-virtual {v0}, Lcom/htc/store/provider/AccessHelper;->getLandingCarouselItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 220
    .local v6, landingItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/CarouselItem;

    .line 221
    .local v1, carouselItem:Lcom/htc/store/module/vo/CarouselItem;
    iget-object v9, p0, Lcom/htc/store/module/TabResourcesLanding;->mLandingCarouselId2CarouselItem:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v0           #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .end local v1           #carouselItem:Lcom/htc/store/module/vo/CarouselItem;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/htc/store/module/vo/CarouselItem;
    .end local v5           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/store/module/vo/CarouselItem;>;"
    .end local v6           #landingItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    .end local v7           #resource_id:I
    :catch_0
    move-exception v2

    .line 257
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 260
    .end local v2           #e:Ljava/lang/Exception;
    .end local v8           #ret:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_1
    :goto_1
    return-object v8

    .line 224
    .restart local v0       #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .restart local v4       #item:Lcom/htc/store/module/vo/CarouselItem;
    .restart local v5       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/store/module/vo/CarouselItem;>;"
    .restart local v7       #resource_id:I
    .restart local v8       #ret:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/htc/store/module/TabResourcesLanding;->mLandingCarouselId2CarouselItem:Ljava/util/Map;

    .line 226
    :cond_3
    if-eqz v5, :cond_4

    .line 227
    sparse-switch v7, :sswitch_data_0

    .line 255
    :cond_4
    :goto_2
    if-nez v8, :cond_1

    iget-object v9, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 229
    :sswitch_0
    sget-object v9, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/htc/store/module/vo/CarouselItem;
    check-cast v4, Lcom/htc/store/module/vo/CarouselItem;

    .line 230
    .restart local v4       #item:Lcom/htc/store/module/vo/CarouselItem;
    if-eqz v4, :cond_4

    .line 231
    invoke-virtual {v4}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 235
    :sswitch_1
    sget-object v9, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/htc/store/module/vo/CarouselItem;
    check-cast v4, Lcom/htc/store/module/vo/CarouselItem;

    .line 236
    .restart local v4       #item:Lcom/htc/store/module/vo/CarouselItem;
    if-eqz v4, :cond_4

    .line 237
    invoke-virtual {v4}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 241
    :sswitch_2
    sget-object v9, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/htc/store/module/vo/CarouselItem;
    check-cast v4, Lcom/htc/store/module/vo/CarouselItem;

    .line 242
    .restart local v4       #item:Lcom/htc/store/module/vo/CarouselItem;
    if-eqz v4, :cond_4

    .line 243
    invoke-virtual {v4}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 247
    :sswitch_3
    sget-object v9, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/htc/store/module/vo/CarouselItem;
    check-cast v4, Lcom/htc/store/module/vo/CarouselItem;

    .line 248
    .restart local v4       #item:Lcom/htc/store/module/vo/CarouselItem;
    if-eqz v4, :cond_4

    .line 249
    invoke-virtual {v4}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineLabel()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_2

    .line 227
    :sswitch_data_0
    .sparse-switch
        -0x73 -> :sswitch_3
        -0x6e -> :sswitch_2
        -0x69 -> :sswitch_1
        -0x64 -> :sswitch_0
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
    .line 908
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 911
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
    .line 916
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 919
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
    .line 924
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 927
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
    .line 932
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 935
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
    .line 940
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 945
    :goto_0
    return-void

    .line 944
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
    .line 949
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 954
    :goto_0
    return-void

    .line 953
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
    .line 958
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 961
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
    .line 966
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v0

    .line 969
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
    .line 974
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 977
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
    .line 982
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 985
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 14
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v13, 0xf4240

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 518
    const/4 v2, 0x0

    .line 519
    .local v2, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 520
    .local v1, filePath:Ljava/lang/String;
    sget-object v5, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

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

    .line 521
    const/4 v4, -0x1

    .line 522
    .local v4, resource_id:I
    div-int v5, p1, v13

    const/16 v6, -0x236

    if-ne v5, v6, :cond_0

    .line 525
    rem-int v4, p1, v13

    .line 526
    packed-switch v4, :pswitch_data_0

    .line 578
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 579
    sget-object v5, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

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

    .line 581
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    move-object v2, v3

    .line 590
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 528
    :pswitch_1
    const-string v5, "rest"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    goto :goto_0

    .line 532
    :pswitch_2
    const-string v5, "on"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    goto :goto_0

    .line 536
    :pswitch_3
    const-string v5, "overlay"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    goto :goto_0

    .line 540
    :pswitch_4
    const-string v5, "rest"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    goto :goto_0

    .line 544
    :pswitch_5
    const-string v5, "on"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    goto :goto_0

    .line 548
    :pswitch_6
    const-string v5, "overlay"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    goto :goto_0

    .line 552
    :pswitch_7
    const-string v5, "rest"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    goto/16 :goto_0

    .line 556
    :pswitch_8
    const-string v5, "on"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    goto/16 :goto_0

    .line 560
    :pswitch_9
    const-string v5, "overlay"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    goto/16 :goto_0

    .line 564
    :pswitch_a
    const-string v5, "rest"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v12

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    goto/16 :goto_0

    .line 568
    :pswitch_b
    const-string v5, "on"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v12

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    goto/16 :goto_0

    .line 572
    :pswitch_c
    const-string v5, "overlay"

    const-string v6, "primaryTabs"

    sget-object v7, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v7, v7, v12

    invoke-static {v5, v6, v7}, Lcom/htc/store/util/StorageUtils;->getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/module/TabResourcesLanding;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 587
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 588
    iget-object v5, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto/16 :goto_1

    .line 590
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto/16 :goto_1

    .line 526
    :pswitch_data_0
    .packed-switch -0x76
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
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
    .line 990
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 993
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
    .line 998
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 1001
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
    .line 1006
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1011
    :goto_0
    return-void

    .line 1010
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
    .line 1015
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 1020
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "ci"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/htc/store/module/TabResourcesLanding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1029
    :goto_0
    return-void

    .line 1028
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0
.end method
