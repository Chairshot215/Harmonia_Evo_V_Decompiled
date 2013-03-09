.class public final Lcom/htc/android/rosie/widget/ProviderInfoHelper;
.super Ljava/lang/Object;
.source "ProviderInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;,
        Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;
    }
.end annotation


# static fields
.field public static final DB_COLUMNS:[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn; = null

.field private static final INFO_PRJ:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Rosie 3D Widget Info"

.field private static final STYLE_PRJ:[Ljava/lang/String;

.field private static final localLOGD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->CATEGORY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PKG_VERSION:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_TYPE_ID:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_NAME_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_PREVIEW_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_DESC_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_REL_DATE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SETTINGS_ACTIVITY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_X:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_Y:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SCENE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->DB_COLUMNS:[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->CATEGORY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->INFO_PRJ:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PKG_VERSION:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_TYPE_ID:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_NAME_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_PREVIEW_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_DESC_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_REL_DATE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SETTINGS_ACTIVITY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_X:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_Y:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SCENE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->STYLE_PRJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->INFO_PRJ:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->STYLE_PRJ:[Ljava/lang/String;

    return-object v0
.end method

.method public static fromCusor(Landroid/content/pm/PackageManager;Landroid/database/Cursor;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/4 v12, 0x0

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v13, 0x0

    :cond_2
    return-object v13

    :cond_3
    const/4 v9, 0x0

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->CATEGORY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v8, "default"

    :cond_4
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_1
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget v2, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v1, Lcom/htc/android/rosie/widget/WidgetProvider$Info;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/htc/android/rosie/widget/WidgetProvider$Info;-><init>(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v12, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v1, "Rosie 3D Widget Info"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getReceiverInfo error: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v10

    const-string v1, "Rosie 3D Widget Info"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getPackageInfo error: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->strings:[Ljava/lang/String;

    return-object v0
.end method

.method public static load(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    .locals 4

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->load(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Z)Lcom/htc/android/rosie/widget/WidgetProvider$Info;

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final load(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Z)Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    .locals 13

    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    const-string v0, "com.htc.android.rosie.widget.provider"

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->loadStyles(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "com.htc.android.rosie.widget.category"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, "default"

    :cond_2
    const/4 v10, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget v1, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/rosie/widget/WidgetProvider$Info;-><init>(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v8

    const/4 v0, 0x0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static loadStyles(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_1

    if-ne v5, v8, :cond_0

    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "rosie-widget"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XML parser: Expect rosie-widget; Actual "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Rosie 3D Widget Info"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v6, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v3, 0x0

    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_5

    if-ne v5, v8, :cond_3

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "style"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-static {p1, p0}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->parseStyle(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_6
    return-object v4
.end method

.method private static parseStyle(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    .locals 29

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v0, v14, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    const-string v3, "id"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_2
    const-string v3, "label"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    :catch_0
    move-exception v20

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const-string v3, "description"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    :try_start_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_1

    :catch_1
    move-exception v20

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const-string v3, "preview"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    :try_start_2
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    goto/16 :goto_1

    :catch_2
    move-exception v20

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v3, "date"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    :try_start_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v18

    goto/16 :goto_1

    :catch_3
    move-exception v20

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_6
    const-string v3, "configure"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_7
    const-string v3, "span_x"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v26

    goto/16 :goto_1

    :cond_8
    const-string v3, "span_y"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v27

    goto/16 :goto_1

    :cond_9
    const-string v3, "scene"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v15, :cond_b

    const-string v3, "."

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_2
    if-nez v11, :cond_c

    const-string v3, "Rosie 3D Widget Info"

    const-string v28, "parse style: component name is null!"

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v16, :cond_d

    const-string v3, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v12, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_3
    if-nez v5, :cond_10

    const-string v6, ""

    :goto_4
    if-nez v7, :cond_11

    const-string v8, ""

    :goto_5
    if-nez v18, :cond_12

    const-string v9, ""

    :goto_6
    new-instance v13, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    move/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v13, v0, v1, v2}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;-><init>(IILjava/lang/String;)V

    new-instance v3, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    invoke-direct/range {v3 .. v13}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/ComponentName;Landroid/content/ComponentName;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;)V

    return-object v3

    :cond_e
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    goto :goto_2

    :cond_f
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_3

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4

    :cond_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_5

    :cond_12
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_6
.end method

.method public static styleAtCursor(Landroid/content/pm/PackageManager;Landroid/database/Cursor;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    .locals 24

    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    const/16 v19, 0x0

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :try_start_1
    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_TYPE_ID:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_NAME_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_0
    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_PREVIEW_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_DESC_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_REL_DATE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    if-eqz v14, :cond_0

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    :cond_0
    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SETTINGS_ACTIVITY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v12, 0x0

    if-eqz v21, :cond_1

    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    :cond_1
    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_X:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_Y:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    sget-object v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SCENE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v3, v3, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v3, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    new-instance v13, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v13, v0, v1, v2}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;-><init>(IILjava/lang/String;)V

    invoke-direct/range {v3 .. v13}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/ComponentName;Landroid/content/ComponentName;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v3

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v15

    const-string v3, "Rosie 3D Widget Info"

    const-string v13, "error caused by cannot found out resource files"

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static toContentValuesList(Lcom/htc/android/rosie/widget/WidgetProvider$Info;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->getStyles()[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-result-object v5

    array-length v0, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v4, v5, v2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->category:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->CATEGORY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->category:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->version:Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PKG_VERSION:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->version:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_TYPE_ID:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_NAME_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getLabelRes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_DESC_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getDescriptionRes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_PREVIEW_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getPreviewRes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getDate()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_REL_DATE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getDate()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v6, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->settings:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SETTINGS_ACTIVITY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->settings:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_X:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v7, v7, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_Y:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v7, v7, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SCENE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v6, v6, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget-object v7, v7, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x0

    :cond_7
    return-object v3
.end method
