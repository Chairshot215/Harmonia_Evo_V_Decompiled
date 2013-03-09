.class public Lcom/htc/htcSceneManager/scene/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# static fields
.field private static final ACTION_ADD_FAVORITE:Ljava/lang/String; = "com.htc.launcher.ACTION_ADD_FAVORITE"

.field private static final CELL_X:Ljava/lang/String; = "cell_x"

.field private static final CELL_Y:Ljava/lang/String; = "cell_y"

.field private static final CLASS_NAME:Ljava/lang/String; = "className"

.field private static final COMPONENT:Ljava/lang/String; = "component"

.field private static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final FAVORITE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final FILENAME:Ljava/lang/String; = "filename"

.field private static final GUID:Ljava/lang/String; = "guid"

.field private static final HOMESCREEN:Ljava/lang/String; = "homeScreen"

.field private static final HOME_SCREEN_SETTING:Ljava/lang/String; = "HomeScreenSetting"

.field private static final ID:Ljava/lang/String; = "_id"

.field private static final INSERTSCENE:Ljava/lang/String; = "insertScene"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field private static final KEY_SCENE_ID:Ljava/lang/String; = "scene_id"

.field private static final LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final PREFIX_PROPERTY:Ljava/lang/String; = "property."

.field private static final PROVIDER_NAME:Ljava/lang/String; = "providerName"

.field private static final RESFILE:Ljava/lang/String; = "resFile"

.field private static final SCENE:Ljava/lang/String; = "scene"

.field private static final SCENE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SCREEN:Ljava/lang/String; = "screen"

.field private static final SKIN:Ljava/lang/String; = "skin"

.field private static final SPAN_X:Ljava/lang/String; = "span_x"

.field private static final SPAN_Y:Ljava/lang/String; = "span_y"

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPERSETTING:Ljava/lang/String; = "WallpaperSetting"

.field private static final WIDGET_NAME:Ljava/lang/String; = "widgetName"

.field private static final XML_TAG:Ljava/lang/String; = "XmlUtils"

.field private static final localLOG:Z

.field private static sInstances:Lcom/htc/htcSceneManager/scene/XmlUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.htc.home.personalize.SceneProvider.SceneProvider/scene?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcSceneManager/scene/XmlUtils;->SCENE_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.htc.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcSceneManager/scene/XmlUtils;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.copyFile"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.home.personalize.fileSrc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.fileDest"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static getEntry(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/htcSceneManager/scene/Entry;)Lcom/htc/htcSceneManager/scene/Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/htc/htcSceneManager/scene/Entry;->setTag(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/htcSceneManager/scene/Entry;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_1
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    new-instance v3, Lcom/htc/htcSceneManager/scene/Entry;

    invoke-direct {v3}, Lcom/htc/htcSceneManager/scene/Entry;-><init>()V

    invoke-static {p0, v3}, Lcom/htc/htcSceneManager/scene/XmlUtils;->getEntry(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/htcSceneManager/scene/Entry;)Lcom/htc/htcSceneManager/scene/Entry;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/htc/htcSceneManager/scene/Entry;->addEntry(Lcom/htc/htcSceneManager/scene/Entry;)V

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static instance()Lcom/htc/htcSceneManager/scene/XmlUtils;
    .locals 1

    sget-object v0, Lcom/htc/htcSceneManager/scene/XmlUtils;->sInstances:Lcom/htc/htcSceneManager/scene/XmlUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/htcSceneManager/scene/XmlUtils;

    invoke-direct {v0}, Lcom/htc/htcSceneManager/scene/XmlUtils;-><init>()V

    sput-object v0, Lcom/htc/htcSceneManager/scene/XmlUtils;->sInstances:Lcom/htc/htcSceneManager/scene/XmlUtils;

    :cond_0
    sget-object v0, Lcom/htc/htcSceneManager/scene/XmlUtils;->sInstances:Lcom/htc/htcSceneManager/scene/XmlUtils;

    return-object v0
.end method

.method private static isContainString(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private printEntry(Lcom/htc/htcSceneManager/scene/Entry;)V
    .locals 6

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Entry;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "scene"

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Entry;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcSceneManager/scene/Entry;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/htc/htcSceneManager/scene/XmlUtils;->printEntry(Lcom/htc/htcSceneManager/scene/Entry;)V

    goto :goto_1

    :cond_2
    const-string v4, "item"

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static requestSceneId(Landroid/content/ContentResolver;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    :try_start_0
    sget-object v1, Lcom/htc/htcSceneManager/scene/XmlUtils;->SCENE_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-le v8, v9, :cond_1

    move v9, v8

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    const/4 v0, -0x1

    if-ne v9, v0, :cond_5

    move v0, v10

    :goto_1
    return v0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    add-int/lit8 v0, v9, 0x1

    goto :goto_1
.end method

.method public static requestSceneName(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    sget-object v1, Lcom/htc/htcSceneManager/scene/XmlUtils;->SCENE_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    sget-object v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v3, v3, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v0, v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, p2, :cond_3

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {p1, v10}, Lcom/htc/htcSceneManager/scene/XmlUtils;->isContainString(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move-object v9, p1

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-object v9

    :cond_3
    :try_start_1
    sget-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v0, v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/htc/htcSceneManager/scene/XmlUtils;->isContainString(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static saveSceneInfo(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Entry;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11

    const-string v8, "XmlUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveSceneInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "scene"

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v5

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Entry;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    move-object v3, p4

    :goto_0
    if-nez p6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    if-nez v5, :cond_5

    const/4 v8, -0x1

    :goto_1
    invoke-static {p1, v3, v8}, Lcom/htc/htcSceneManager/scene/XmlUtils;->requestSceneName(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v8, "skin"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "lockscreen"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/com.htc.home.personalize/files/scenes_picker_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/com.htc.home.personalize/files/scenes_picker_land_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_6

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    sget-object v9, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->DOWNLOAD_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v9}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Lcom/htc/htcSceneManager/scene/XmlUtils;->saveSceneWallpaper(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Entry;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_7

    if-nez p6, :cond_7

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->isCurrentScene()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_3
    if-eqz v2, :cond_2

    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v8, Lcom/htc/htcSceneManager/scene/XmlUtils;->SCENE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/htcSceneManager/scene/SceneManager;->setSceneUpdate(Z)V

    :cond_3
    return-void

    :cond_4
    const-string v8, "name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v8

    goto/16 :goto_1

    :cond_6
    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    sget-object v9, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->BUILDER_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v9}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    iget-object v8, v8, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3
.end method

.method private static saveSceneWallpaper(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Entry;I)Ljava/lang/String;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/Entry;->getEntries()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/com.htc.home.personalize/files/home_wallpaper_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcSceneManager/scene/Entry;

    const-string v12, "WallpaperSetting"

    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Entry;->getInfo()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v12, "resFile"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "guid"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "component"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_3

    new-instance v11, Ljava/io/File;

    invoke-static {v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v12, "XmlUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Copy wallpaper from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", src.exists : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v3}, Lcom/htc/htcSceneManager/scene/XmlUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v12, "XmlUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot find build in wallpaper("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "), we use default wallpaper"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->retrieveDefaultWallpaper()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v3}, Lcom/htc/htcSceneManager/scene/XmlUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->retrieveDefaultWallpaper()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v3}, Lcom/htc/htcSceneManager/scene/XmlUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->retrieveDefaultWallpaper()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v3}, Lcom/htc/htcSceneManager/scene/XmlUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static saveSceneWidgets(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Entry;IZ)V
    .locals 16

    const-string v13, "scene"

    invoke-virtual/range {p2 .. p2}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/htcSceneManager/scene/Entry;->getInfo()Landroid/os/Bundle;

    move-result-object v10

    const-string v13, "homeScreen"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v8, -0x1

    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v13, "XmlUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HomeScreen : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v13, "HomeScreenSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/htc/htcSceneManager/scene/Entry;->getEntryByTag(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v4

    const-string v13, "XmlUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HomeScreen format error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htcSceneManager/scene/Entry;

    invoke-virtual {v13}, Lcom/htc/htcSceneManager/scene/Entry;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v9, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcSceneManager/scene/Entry;

    const-string v13, "item"

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Entry;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Entry;->getInfo()Landroid/os/Bundle;

    move-result-object v11

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v13, "com.htc.launcher.ACTION_ADD_FAVORITE"

    invoke-direct {v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "scene_id"

    move/from16 v0, p3

    invoke-virtual {v1, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "homeScreen"

    invoke-virtual {v1, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "insertScene"

    move/from16 v0, p4

    invoke-virtual {v1, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private static saveWorkspace(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Entry;Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/htc/htcSceneManager/scene/XmlUtils;->saveSceneInfo(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Entry;ILjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {p0, v1, p1, p4, p5}, Lcom/htc/htcSceneManager/scene/XmlUtils;->saveSceneWidgets(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Entry;IZ)V

    return p4
.end method

.method private static saveWorkspace(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Entry;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/htcSceneManager/scene/XmlUtils;->requestSceneId(Landroid/content/ContentResolver;)I

    move-result v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/htcSceneManager/scene/XmlUtils;->saveSceneInfo(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Entry;ILjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {p0, v1, p1, v3, p4}, Lcom/htc/htcSceneManager/scene/XmlUtils;->saveSceneWidgets(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Entry;IZ)V

    return v3
.end method

.method public static startParsing(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v3, v3, v2}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    return v2
.end method

.method public static startParsing(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    invoke-static {p0, v1, p2, p3, v5}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    goto :goto_0
.end method

.method public static startParsing(Landroid/content/Context;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    invoke-static {p0, v1, p2, p3, v5}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    goto :goto_0
.end method

.method public static startParsing(Landroid/content/Context;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, p4, v2, v3}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    return v2
.end method

.method private static declared-synchronized startParsing(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-class v8, Lcom/htc/htcSceneManager/scene/XmlUtils;

    monitor-enter v8

    :try_start_0
    new-instance v1, Lcom/htc/htcSceneManager/scene/Entry;

    invoke-direct {v1}, Lcom/htc/htcSceneManager/scene/Entry;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    :goto_0
    const/4 v0, 0x1

    if-eq v7, v0, :cond_1

    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    invoke-static {p1, v1}, Lcom/htc/htcSceneManager/scene/XmlUtils;->getEntry(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/htcSceneManager/scene/Entry;)Lcom/htc/htcSceneManager/scene/Entry;

    move-result-object v1

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/htcSceneManager/scene/XmlUtils;->saveWorkspace(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Entry;Ljava/lang/String;Ljava/lang/String;IZZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static declared-synchronized startParsing(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const-class v7, Lcom/htc/htcSceneManager/scene/XmlUtils;

    monitor-enter v7

    :try_start_0
    new-instance v1, Lcom/htc/htcSceneManager/scene/Entry;

    invoke-direct {v1}, Lcom/htc/htcSceneManager/scene/Entry;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :goto_0
    if-eq v6, v2, :cond_1

    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    invoke-static {p1, v1}, Lcom/htc/htcSceneManager/scene/XmlUtils;->getEntry(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/htcSceneManager/scene/Entry;)Lcom/htc/htcSceneManager/scene/Entry;

    move-result-object v1

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/htcSceneManager/scene/XmlUtils;->saveWorkspace(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Entry;Ljava/lang/String;Ljava/lang/String;ZZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method
