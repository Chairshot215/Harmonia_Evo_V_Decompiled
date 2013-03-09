.class public Lcom/htc/home/personalize/widgetpicker/WidgetItem;
.super Ljava/lang/Object;
.source "WidgetItem.java"


# static fields
.field public static ITEM_CAT_GROUP:I = 0x0

.field public static ITEM_CAT_ITEM:I = 0x0

.field public static ITEM_CAT_NONE:I = 0x0

.field public static PROPS_CATEGORY_ID:Ljava/lang/String; = null

.field public static PROPS_MAX_INSTANCES:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Widget"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mClientWidgetItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/home/WidgetItemInterface;",
            ">;"
        }
    .end annotation
.end field

.field public mClientWidgetItemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/htc/home/WidgetItemInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mIconResource:I

.field public mItemCategory:I

.field public mItemType:I

.field public mLayoutResource:I

.field public mObsolete:Z

.field public mPackageName:Ljava/lang/String;

.field public mParentId:I

.field public mPluginClassname:Ljava/lang/String;

.field public mProps:Ljava/util/Properties;

.field public mSpanX:I

.field public mSpanY:I

.field public mTextResource:I

.field public mWidgetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->ITEM_CAT_NONE:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->ITEM_CAT_GROUP:I

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->ITEM_CAT_ITEM:I

    .line 22
    const-string v0, "category_id"

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->PROPS_CATEGORY_ID:Ljava/lang/String;

    .line 23
    const-string v0, "max_instances"

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->PROPS_MAX_INSTANCES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mClientWidgetItem:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mProps:Ljava/util/Properties;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mObsolete:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->children:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public addChild(Lcom/htc/home/personalize/widgetpicker/WidgetItem;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public getCategoryId()I
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mProps:Ljava/util/Properties;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 151
    :goto_0
    return v1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mProps:Ljava/util/Properties;

    sget-object v2, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->PROPS_CATEGORY_ID:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, strCateId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getChildAt(I)Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupItem()Lcom/htc/home/WidgetGroupItemInterface;
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->isGroupItem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an instance of WidgetGroupItemInterface - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mClientWidgetItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mClientWidgetItem:Ljava/lang/ref/WeakReference;

    check-cast v0, Lcom/htc/home/WidgetGroupItemInterface;

    return-object v0
.end method

.method public getMaxInstances()I
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mProps:Ljava/util/Properties;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 158
    :goto_0
    return v1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mProps:Ljava/util/Properties;

    sget-object v2, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->PROPS_MAX_INSTANCES:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, strCateId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget package not found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGroupItem()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemCategory:I

    sget v1, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->ITEM_CAT_GROUP:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
