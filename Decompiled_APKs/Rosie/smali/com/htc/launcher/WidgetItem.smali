.class public Lcom/htc/launcher/WidgetItem;
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
            "Lcom/htc/launcher/WidgetItem;",
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

.field public mWidgetPM:Lcom/htc/launcher/WidgetPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/htc/launcher/WidgetItem;->ITEM_CAT_NONE:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/htc/launcher/WidgetItem;->ITEM_CAT_GROUP:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/htc/launcher/WidgetItem;->ITEM_CAT_ITEM:I

    .line 32
    const-string v0, "category_id"

    sput-object v0, Lcom/htc/launcher/WidgetItem;->PROPS_CATEGORY_ID:Ljava/lang/String;

    .line 33
    const-string v0, "max_instances"

    sput-object v0, Lcom/htc/launcher/WidgetItem;->PROPS_MAX_INSTANCES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/launcher/WidgetItem;->mClientWidgetItem:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetItem;->mProps:Ljava/util/Properties;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/WidgetItem;->mObsolete:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetItem;->children:Ljava/util/List;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/WidgetItem;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private static evalRoom(IILcom/htc/launcher/Launcher;)[Ljava/lang/String;
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "launcher"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 282
    invoke-virtual {p2}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v8

    invoke-virtual {v8, p0, p1}, Lcom/htc/launcher/Workspace;->hasRoomForSpan(II)Z

    move-result v1

    .line 283
    .local v1, hasRoom:Z
    if-eqz v1, :cond_0

    .line 285
    new-array v8, v9, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 304
    :goto_0
    return-object v8

    .line 288
    :cond_0
    if-ne v9, p0, :cond_1

    if-ne v9, p1, :cond_1

    .line 289
    new-array v8, v11, [Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_1
    if-ne v9, p0, :cond_2

    .line 291
    add-int/lit8 v8, p1, -0x1

    invoke-static {p0, v8, p2}, Lcom/htc/launcher/WidgetItem;->evalRoom(IILcom/htc/launcher/Launcher;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 292
    :cond_2
    if-ne v9, p1, :cond_3

    .line 293
    add-int/lit8 v8, p0, -0x1

    invoke-static {v8, p1, p2}, Lcom/htc/launcher/WidgetItem;->evalRoom(IILcom/htc/launcher/Launcher;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 295
    :cond_3
    add-int/lit8 v8, p0, -0x1

    invoke-static {v8, p1, p2}, Lcom/htc/launcher/WidgetItem;->evalRoom(IILcom/htc/launcher/Launcher;)[Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, left:[Ljava/lang/String;
    add-int/lit8 v8, p1, -0x1

    invoke-static {p0, v8, p2}, Lcom/htc/launcher/WidgetItem;->evalRoom(IILcom/htc/launcher/Launcher;)[Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, right:[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 298
    .local v5, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v7, v0, v2

    .line 299
    .local v7, str:Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    .end local v7           #str:Ljava/lang/String;
    :cond_4
    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v7, v0, v2

    .line 302
    .restart local v7       #str:Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 304
    .end local v7           #str:Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static evalRoom2(Lcom/htc/launcher/Launcher;)[Ljava/lang/String;
    .locals 12
    .parameter "launcher"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 250
    const/16 v7, 0x10

    new-array v6, v7, [[I

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    aput-object v7, v6, v10

    new-array v7, v9, [I

    fill-array-data v7, :array_1

    aput-object v7, v6, v11

    new-array v7, v9, [I

    fill-array-data v7, :array_2

    aput-object v7, v6, v9

    const/4 v7, 0x3

    new-array v8, v9, [I

    fill-array-data v8, :array_3

    aput-object v8, v6, v7

    const/4 v7, 0x4

    new-array v8, v9, [I

    fill-array-data v8, :array_4

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-array v8, v9, [I

    fill-array-data v8, :array_5

    aput-object v8, v6, v7

    const/4 v7, 0x6

    new-array v8, v9, [I

    fill-array-data v8, :array_6

    aput-object v8, v6, v7

    const/4 v7, 0x7

    new-array v8, v9, [I

    fill-array-data v8, :array_7

    aput-object v8, v6, v7

    const/16 v7, 0x8

    new-array v8, v9, [I

    fill-array-data v8, :array_8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    new-array v8, v9, [I

    fill-array-data v8, :array_9

    aput-object v8, v6, v7

    const/16 v7, 0xa

    new-array v8, v9, [I

    fill-array-data v8, :array_a

    aput-object v8, v6, v7

    const/16 v7, 0xb

    new-array v8, v9, [I

    fill-array-data v8, :array_b

    aput-object v8, v6, v7

    const/16 v7, 0xc

    new-array v8, v9, [I

    fill-array-data v8, :array_c

    aput-object v8, v6, v7

    const/16 v7, 0xd

    new-array v8, v9, [I

    fill-array-data v8, :array_d

    aput-object v8, v6, v7

    const/16 v7, 0xe

    new-array v8, v9, [I

    fill-array-data v8, :array_e

    aput-object v8, v6, v7

    const/16 v7, 0xf

    new-array v8, v9, [I

    fill-array-data v8, :array_f

    aput-object v8, v6, v7

    .line 268
    .local v6, sizes:[[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v4, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, arr$:[[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 270
    .local v5, size:[I
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v7

    aget v8, v5, v10

    aget v9, v5, v11

    invoke-virtual {v7, v8, v9}, Lcom/htc/launcher/Workspace;->hasRoomForSpan_ForceUpdate(II)Z

    move-result v1

    .line 272
    .local v1, hasRoom:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v5, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v1           #hasRoom:Z
    .end local v5           #size:[I
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 250
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static startWidgetPicker(Lcom/htc/launcher/Launcher;I)V
    .locals 8
    .parameter "launcher"
    .parameter "itemType"

    .prologue
    .line 230
    const-string v1, "com.htc.AddProgramWidget"

    .line 231
    .local v1, PKG:Ljava/lang/String;
    const-string v0, ".widgetpicker.WidgetPicker"

    .line 233
    .local v0, CLASS:Ljava/lang/String;
    const-string v2, "VACANCY_INFO"

    .line 236
    .local v2, VACANCY_INFO:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/launcher/WidgetItem;->evalRoom2(Lcom/htc/launcher/Launcher;)[Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, rooms:[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v3, intent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.htc.AddProgramWidget"

    const-string v7, "com.htc.AddProgramWidget.widgetpicker.WidgetPicker"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 243
    const-string v5, "VACANCY_INFO"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v5, "item_type"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const/16 v5, 0x1f4

    invoke-virtual {p0, v3, v5}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 247
    return-void
.end method


# virtual methods
.method public addChild(Lcom/htc/launcher/WidgetItem;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/launcher/WidgetItem;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public getCategoryId()I
    .locals 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/htc/launcher/WidgetItem;->mProps:Ljava/util/Properties;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 211
    :goto_0
    return v1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetItem;->mProps:Ljava/util/Properties;

    sget-object v2, Lcom/htc/launcher/WidgetItem;->PROPS_CATEGORY_ID:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, strCateId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getChildAt(I)Lcom/htc/launcher/WidgetItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/launcher/WidgetItem;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetItem;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/launcher/WidgetItem;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClientWidgetItem()Lcom/htc/home/WidgetItemInterface;
    .locals 16

    .prologue
    const/4 v11, 0x0

    .line 89
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/launcher/WidgetItem;->mClientWidgetItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/home/WidgetItemInterface;

    .line 90
    .local v8, widget:Lcom/htc/home/WidgetItemInterface;
    if-eqz v8, :cond_0

    .line 121
    .end local v8           #widget:Lcom/htc/home/WidgetItemInterface;
    :goto_0
    return-object v8

    .line 95
    .restart local v8       #widget:Lcom/htc/home/WidgetItemInterface;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/launcher/WidgetItem;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/launcher/WidgetPackageManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/WidgetItem;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v12, v13}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetPackage(Ljava/lang/String;Landroid/content/Context;)Lcom/htc/launcher/WidgetPackage;

    move-result-object v10

    iget-object v9, v10, Lcom/htc/launcher/WidgetPackage;->mPackageContext:Landroid/content/Context;

    .line 96
    .local v9, widgetContext:Landroid/content/Context;
    const-string v10, "WidgetItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Density of widgetContext: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    float-to-double v12, v10

    const-wide/high16 v14, 0x3ff8

    cmpl-double v10, v12, v14

    if-nez v10, :cond_1

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v10

    if-nez v10, :cond_1

    .line 99
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 100
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 101
    .local v1, cfg:Landroid/content/res/Configuration;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 103
    .local v4, dm:Landroid/util/DisplayMetrics;
    const/high16 v10, 0x3f80

    iput v10, v4, Landroid/util/DisplayMetrics;->density:F

    .line 104
    const/16 v10, 0xa0

    iput v10, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 105
    invoke-virtual {v7, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 107
    .end local v1           #cfg:Landroid/content/res/Configuration;
    .end local v4           #dm:Landroid/util/DisplayMetrics;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/launcher/WidgetItem;->mPluginClassname:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {v10, v12, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 108
    .local v2, clazz:Ljava/lang/Class;
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 109
    .local v3, constructor:Ljava/lang/reflect/Constructor;
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 110
    .local v6, object:Ljava/lang/Object;
    instance-of v10, v6, Lcom/htc/home/WidgetItemInterface;

    if-eqz v10, :cond_2

    .line 111
    new-instance v12, Ljava/lang/ref/WeakReference;

    move-object v0, v6

    check-cast v0, Lcom/htc/home/WidgetItemInterface;

    move-object v10, v0

    invoke-direct {v12, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/launcher/WidgetItem;->mClientWidgetItem:Ljava/lang/ref/WeakReference;

    .line 112
    check-cast v6, Lcom/htc/home/WidgetItemInterface;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v6           #object:Ljava/lang/Object;
    move-object v8, v6

    goto/16 :goto_0

    .line 114
    .end local v2           #clazz:Ljava/lang/Class;
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;
    .end local v9           #widgetContext:Landroid/content/Context;
    :catch_0
    move-exception v5

    .line 115
    .local v5, e:Ljava/lang/ClassNotFoundException;
    const-string v10, "Widget"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Widget Plugin Class not found - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/WidgetItem;->mPluginClassname:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    :cond_2
    :goto_1
    move-object v8, v11

    .line 121
    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v5

    .line 117
    .local v5, e:Ljava/lang/NoSuchMethodException;
    const-string v10, "Widget"

    const-string v12, "Widget Plugin Class doesn\'t have default constructor."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v5           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v5

    .line 119
    .local v5, e:Ljava/lang/Exception;
    const-string v10, "Widget"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getGroupItem()Lcom/htc/home/WidgetGroupItemInterface;
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/launcher/WidgetItem;->isGroupItem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an instance of WidgetGroupItemInterface - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/WidgetItem;->mClientWidgetItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/WidgetItem;->mClientWidgetItem:Ljava/lang/ref/WeakReference;

    check-cast v0, Lcom/htc/home/WidgetGroupItemInterface;

    return-object v0
.end method

.method public getListItem(Lcom/htc/launcher/AddAdapter;)Lcom/htc/launcher/AddAdapter$ListItem;
    .locals 6
    .parameter "addAdapter"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/launcher/WidgetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 127
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v0, Lcom/htc/launcher/AddAdapter$ListItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/htc/launcher/WidgetItem;->mTextResource:I

    iget v4, p0, Lcom/htc/launcher/WidgetItem;->mIconResource:I

    const/16 v5, 0x64

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;III)V

    .line 128
    .local v0, listItem:Lcom/htc/launcher/AddAdapter$ListItem;
    iput-object p0, v0, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    .line 129
    return-object v0
.end method

.method public getMaxInstances()I
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/htc/launcher/WidgetItem;->mProps:Ljava/util/Properties;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 218
    :goto_0
    return v1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetItem;->mProps:Ljava/util/Properties;

    sget-object v2, Lcom/htc/launcher/WidgetItem;->PROPS_MAX_INSTANCES:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, strCateId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget package not found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/htc/launcher/WidgetItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGroupItem()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/htc/launcher/WidgetItem;->mItemCategory:I

    sget v1, Lcom/htc/launcher/WidgetItem;->ITEM_CAT_GROUP:I

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
    .line 133
    iget v0, p0, Lcom/htc/launcher/WidgetItem;->mParentId:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newWidget()Lcom/htc/launcher/WidgetProxy;
    .locals 4

    .prologue
    .line 70
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating a widget - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/WidgetItem;->mPluginClassname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    :try_start_0
    new-instance v1, Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {p0}, Lcom/htc/launcher/WidgetItem;->getClientWidgetItem()Lcom/htc/home/WidgetItemInterface;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/launcher/WidgetProxy;-><init>(Lcom/htc/launcher/WidgetItem;Lcom/htc/home/WidgetItemInterface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "Widget"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startVariationOptionActivity(Lcom/htc/launcher/Launcher;)V
    .locals 11
    .parameter "launcher"

    .prologue
    const/4 v10, -0x1

    .line 161
    invoke-virtual {p0}, Lcom/htc/launcher/WidgetItem;->getChildCount()I

    move-result v1

    .line 162
    .local v1, count:I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v2, hasSpace:Landroid/os/Bundle;
    const/4 v6, -0x1

    .local v6, spanX:I
    const/4 v7, -0x1

    .line 165
    .local v7, spanY:I
    const/4 v5, 0x0

    .line 166
    .local v5, prevHasSpace:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 168
    invoke-virtual {p0, v3}, Lcom/htc/launcher/WidgetItem;->getChildAt(I)Lcom/htc/launcher/WidgetItem;

    move-result-object v0

    .line 169
    .local v0, childWidget:Lcom/htc/launcher/WidgetItem;
    if-ne v6, v10, :cond_0

    if-eq v7, v10, :cond_1

    :cond_0
    iget v8, v0, Lcom/htc/launcher/WidgetItem;->mSpanX:I

    if-ne v6, v8, :cond_1

    iget v8, v0, Lcom/htc/launcher/WidgetItem;->mSpanY:I

    if-eq v7, v8, :cond_2

    .line 170
    :cond_1
    iget v6, v0, Lcom/htc/launcher/WidgetItem;->mSpanX:I

    .line 171
    iget v7, v0, Lcom/htc/launcher/WidgetItem;->mSpanY:I

    .line 172
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/htc/launcher/Workspace;->hasRoomForSpan(II)Z

    move-result v5

    .line 173
    invoke-virtual {v0}, Lcom/htc/launcher/WidgetItem;->getUniqueName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/launcher/Workspace;->invalidateVacant()V

    .line 166
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v0}, Lcom/htc/launcher/WidgetItem;->getUniqueName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    .end local v0           #childWidget:Lcom/htc/launcher/WidgetItem;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v4, intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.htc.AddProgramWidget"

    const-string v10, "com.htc.AddProgramWidget.WidgetVariationActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    const-string v8, "item_type"

    iget v9, p0, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v8, "widget_has_space"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    const/16 v8, 0x1f4

    invoke-virtual {p1, v4, v8}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method
