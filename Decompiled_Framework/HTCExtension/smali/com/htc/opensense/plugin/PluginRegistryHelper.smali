.class public Lcom/htc/opensense/plugin/PluginRegistryHelper;
.super Ljava/lang/Object;
.source "PluginRegistryHelper.java"

# interfaces
.implements Lcom/htc/opensense/plugin/PluginConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    }
.end annotation


# static fields
.field static final FEATURE_URI:Landroid/net/Uri; = null

.field static final METADATA_URI:Landroid/net/Uri; = null

.field public static final RAWQUERY:Landroid/net/Uri; = null

.field public static final URL_RAW_QUERY:Ljava/lang/String; = "rawquery"

.field private static sSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    :try_start_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "content://com.htc.opensense.plugin/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    const-string v0, "content://com.htc.opensense.plugin/features"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->FEATURE_URI:Landroid/net/Uri;

    const-string v0, "content://com.htc.opensense.plugin/meta_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->METADATA_URI:Landroid/net/Uri;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->FEATURE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "feature_type"

    aput-object v3, v2, v7

    const-string v3, "feature=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v5

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    .locals 11

    const/4 v2, 0x0

    const-string v1, "SELECT A2.%s,  A3.%s from %s A1, %s A2, %s A3 where A1.%s = \'%s\' AND A2.%s=A1.%s AND A2.%s=A3.%s AND A2.%s=\'%s\' %s"

    const/16 v0, 0xe

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v5, "plugin_class"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "package"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "features"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "plugin"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "feature"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    aput-object p2, v4, v0

    const/4 v0, 0x7

    const-string v5, "feature_id"

    aput-object v5, v4, v0

    const/16 v0, 0x8

    const-string v5, "_id"

    aput-object v5, v4, v0

    const/16 v0, 0x9

    const-string v5, "package_id"

    aput-object v5, v4, v0

    const/16 v0, 0xa

    const-string v5, "_id"

    aput-object v5, v4, v0

    const/16 v0, 0xb

    const-string v5, "plugin_meta"

    aput-object v5, v4, v0

    const/16 v0, 0xc

    aput-object p1, v4, v0

    const/16 v5, 0xd

    sget v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    const/high16 v10, 0x4000

    cmpg-float v0, v0, v10

    if-gez v0, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "PluginRegistryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;

    invoke-direct {v7}, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "package"

    invoke-static {v6, v1}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getValueInColumn(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "plugin_class"

    invoke-static {v6, v4}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getValueInColumn(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    iput-object p1, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->accountType:Ljava/lang/String;

    const-string v0, "PluginRegistryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "accountType"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->accountType:Ljava/lang/String;

    const-string v0, "extra"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->extra:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const-string v0, "AND A2.removed=0"

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getOpenSenseServices(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    const-string v1, "SELECT A2.%s FROM %s A1, %s A2 where A1.%s=\'%s\' AND A2.%s = A1.%s %s"

    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/Object;

    const-string v0, "plugin_meta"

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "features"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "plugin"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "feature"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object p1, v4, v0

    const/4 v0, 0x5

    const-string v5, "feature_id"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "_id"

    aput-object v5, v4, v0

    const/4 v5, 0x7

    sget v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    const/high16 v8, 0x4000

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "PluginRegistryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    const-string v0, "AND A2.removed=0"

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    :cond_2
    return-object v2
.end method

.method public static getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;
    .locals 12

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    const-string v1, "SELECT A1.%s, A2.%s FROM %s A1, %s A2 WHERE %s A1.%s IN (SELECT A2.%s FROM %s WHERE A2.%s IN (SELECT %s FROM %s WHERE %s=\'%s\'))"

    const/16 v0, 0xd

    new-array v4, v0, [Ljava/lang/Object;

    const-string v0, "package"

    aput-object v0, v4, v11

    const-string v0, "plugin_class"

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "plugin"

    aput-object v5, v4, v0

    const/4 v5, 0x4

    sget v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    const/high16 v10, 0x4000

    cmpg-float v0, v0, v10

    if-gez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x5

    const-string v5, "_id"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "package_id"

    aput-object v5, v4, v0

    const/4 v0, 0x7

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v0

    const/16 v0, 0x8

    const-string v5, "feature_id"

    aput-object v5, v4, v0

    const/16 v0, 0x9

    const-string v5, "_id"

    aput-object v5, v4, v0

    const/16 v0, 0xa

    const-string v5, "features"

    aput-object v5, v4, v0

    const/16 v0, 0xb

    const-string v5, "feature"

    aput-object v5, v4, v0

    const/16 v0, 0xc

    aput-object p1, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Landroid/content/ComponentName;

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v8, v9, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v8

    goto :goto_1

    :cond_0
    const-string v0, "A2.removed=0 AND"

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    new-array v7, v11, [Landroid/content/ComponentName;

    :goto_2
    return-object v7

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;
    .locals 25

    const-string v2, "SELECT t1.%s plugin_id, t2.%s, t3.%s feature_id, t3.%s feature_version, t3.%s, t3.%s, t1.%s, t1.%s, t1.%s, t1.%s FROM %s t1, %s t2, %s t3 WHERE t1.%s=t2.%s AND t1.%s=t3.%s AND t3.%s=\'%s\' %s"

    const/16 v1, 0x14

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "package"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string v5, "version"

    aput-object v5, v3, v1

    const/4 v1, 0x4

    const-string v5, "feature"

    aput-object v5, v3, v1

    const/4 v1, 0x5

    const-string v5, "feature_type"

    aput-object v5, v3, v1

    const/4 v1, 0x6

    const-string v5, "version"

    aput-object v5, v3, v1

    const/4 v1, 0x7

    const-string v5, "plugin_class"

    aput-object v5, v3, v1

    const/16 v1, 0x8

    const-string v5, "description"

    aput-object v5, v3, v1

    const/16 v1, 0x9

    const-string v5, "plugin_meta"

    aput-object v5, v3, v1

    const/16 v1, 0xa

    const-string v5, "plugin"

    aput-object v5, v3, v1

    const/16 v1, 0xb

    const-string v5, "plugin_pkg"

    aput-object v5, v3, v1

    const/16 v1, 0xc

    const-string v5, "features"

    aput-object v5, v3, v1

    const/16 v1, 0xd

    const-string v5, "package_id"

    aput-object v5, v3, v1

    const/16 v1, 0xe

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/16 v1, 0xf

    const-string v5, "feature_id"

    aput-object v5, v3, v1

    const/16 v1, 0x10

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/16 v1, 0x11

    const-string v5, "feature"

    aput-object v5, v3, v1

    const/16 v1, 0x12

    aput-object p1, v3, v1

    const/16 v5, 0x13

    sget v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    const/high16 v6, 0x4000

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    const-string v1, ""

    :goto_0
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_2

    :try_start_0
    const-string v1, "plugin_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v1, "package"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v1, "feature_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v1, "feature_version"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v1, "feature"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v1, "feature_type"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v1, "version"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v1, "plugin_class"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v1, "description"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v1, "plugin_meta"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v0, v1, [Lcom/htc/opensense/plugin/Plugin;

    move-object/from16 v24, v0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v18, v1, -0x1

    :goto_1
    if-ltz v18, :cond_3

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v7, Lcom/htc/opensense/plugin/Feature;

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v1, v2, v3, v5}, Lcom/htc/opensense/plugin/Feature;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/ComponentName;

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/htc/opensense/plugin/Plugin;

    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/htc/opensense/plugin/Plugin;-><init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v24, v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    :cond_1
    const-string v1, "AND t1.removed=0"

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    const/16 v24, 0x0

    :goto_2
    return-object v24

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method static getValueInColumn(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
