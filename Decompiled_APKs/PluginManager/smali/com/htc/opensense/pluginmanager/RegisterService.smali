.class public Lcom/htc/opensense/pluginmanager/RegisterService;
.super Landroid/app/IntentService;
.source "RegisterService.java"

# interfaces
.implements Lcom/htc/opensense/plugin/PluginConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/pluginmanager/RegisterService$1;,
        Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;
    }
.end annotation


# static fields
.field private static final ACTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;",
            ">;"
        }
    .end annotation
.end field

.field static final ACTION_SCAN_FINISH:Ljava/lang/String; = "com.htc.plugin.ACTION_SCAN_FINISH"

.field static final ACTION_SERVICE_NAME:Ljava/lang/String; = "com.htc.ACTION_SERVICE_NAME"

.field static final ACTION_SERVICE_REGISTER:Ljava/lang/String; = "com.htc.ACTION_SERVICE_REGISTER"

.field static final ATTR_SUPPORT:Ljava/lang/String; = "supports"

.field private static final BROADCAST_PERMISSION:Ljava/lang/String; = "htc.pluginmanager.permission.USE_BROADCAST"

.field static final CLASS_AUTHORITY:Landroid/net/Uri; = null

.field static final EXTRA_PKG_REMOVED:Ljava/lang/String; = "com.htc.plugin.EXTRA_PKG_REMOVED"

.field static final EXTRA_PKG_REPLACED:Ljava/lang/String; = "com.htc.plugin.EXTRA_PKG_REPLACED"

.field static final FEATURE_AUTHORITY:Landroid/net/Uri; = null

.field public static final HEAD_TAG:Ljava/lang/String; = "register_service"

.field static final LOG_TAG:Ljava/lang/String; = "RegisterService"

.field static final PLUGIN_AUTHORITY:Landroid/net/Uri; = null

.field static final PLUGIN_PKG_AUTHORITY:Landroid/net/Uri; = null

.field static final PLUGIN_RAWQUERY_AUTHORITY:Landroid/net/Uri; = null

.field static final RAWQUERY_AUTHORITY:Landroid/net/Uri; = null

.field static final SERVICE_META_DATA:Ljava/lang/String; = "com.htc.ACTION_SERVICE_REGISTER"


# instance fields
.field final registerServiceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "content://com.htc.opensense.plugin/features"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->FEATURE_AUTHORITY:Landroid/net/Uri;

    .line 67
    const-string v0, "content://com.htc.opensense.plugin/meta_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->CLASS_AUTHORITY:Landroid/net/Uri;

    .line 70
    const-string v0, "content://com.htc.opensense.plugin/plugins"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_AUTHORITY:Landroid/net/Uri;

    .line 73
    const-string v0, "content://com.htc.opensense.plugin/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->RAWQUERY_AUTHORITY:Landroid/net/Uri;

    .line 76
    const-string v0, "content://com.htc.opensense.plugin/plugins_raw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_RAWQUERY_AUTHORITY:Landroid/net/Uri;

    .line 79
    const-string v0, "content://com.htc.opensense.plugin/plugin_pkg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_PKG_AUTHORITY:Landroid/net/Uri;

    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->ACTION_MAP:Ljava/util/HashMap;

    .line 438
    sget-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->ACTION_MAP:Ljava/util/HashMap;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_ADDED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->ACTION_MAP:Ljava/util/HashMap;

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_INSTALL:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->ACTION_MAP:Ljava/util/HashMap;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_REMOVED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->ACTION_MAP:Ljava/util/HashMap;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_REPLACED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->ACTION_MAP:Ljava/util/HashMap;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->BOOT_COMPLETED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "RegisterService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.ACTION_SERVICE_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/opensense/pluginmanager/RegisterService;->registerServiceIntent:Landroid/content/Intent;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/pluginmanager/RegisterService;->setIntentRedelivery(Z)V

    .line 43
    return-void
.end method

.method private addInsertFeaturesOp(Lcom/htc/opensense/pluginmanager/data/FeatureList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "features"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/pluginmanager/data/FeatureList;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->size()I

    move-result v3

    if-ltz v3, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;

    .line 114
    .local v0, feature:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v2, v:Landroid/content/ContentValues;
    const-string v3, "version"

    invoke-virtual {v0}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v3, "feature"

    invoke-virtual {v0}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "feature_type"

    invoke-virtual {v0}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v3, Lcom/htc/opensense/pluginmanager/RegisterService;->FEATURE_AUTHORITY:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0           #feature:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #v:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private addInsertMetaDataOp(Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter "pkgId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/MetaData;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/MetaData;>;"
    .local p4, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez p4, :cond_1

    .line 146
    :cond_0
    return-void

    .line 132
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "package_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/pluginmanager/data/MetaData;

    .line 136
    .local v3, service:Lcom/htc/opensense/pluginmanager/data/MetaData;
    const-string v5, "meta_name"

    invoke-virtual {v3}, Lcom/htc/opensense/pluginmanager/data/MetaData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Lcom/htc/opensense/pluginmanager/data/MetaData;->getDataList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;

    .line 138
    .local v0, data:Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;
    const-string v5, "type"

    iget-object v6, v0, Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v5, "value"

    iget-object v6, v0, Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;->value:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v5, Lcom/htc/opensense/pluginmanager/RegisterService;->CLASS_AUTHORITY:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addInsertPluginPackageOp(Lcom/htc/opensense/pluginmanager/data/PluginPackage;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "pluginPackage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/pluginmanager/data/PluginPackage;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/opensense/pluginmanager/RegisterService;->getPackageId(Ljava/lang/String;)J

    move-result-wide v0

    .line 453
    .local v0, existingPkgId:J
    invoke-direct {p0, p1, v0, v1}, Lcom/htc/opensense/pluginmanager/RegisterService;->insertPluginPkg(Lcom/htc/opensense/pluginmanager/data/PluginPackage;J)J

    move-result-wide v2

    .line 455
    .local v2, newPkgId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 456
    const-string v4, "RegisterService"

    const-string v5, "insertPluginPackage newPkgId < 0, return"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0           #existingPkgId:J
    .end local v2           #newPkgId:J
    :cond_0
    :goto_0
    return-void

    .line 459
    .restart local v0       #existingPkgId:J
    .restart local v2       #newPkgId:J
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getServices()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3, p2}, Lcom/htc/opensense/pluginmanager/RegisterService;->addInsertMetaDataOp(Ljava/util/ArrayList;JLjava/util/ArrayList;)V

    .line 460
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getPlugins()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3, p2}, Lcom/htc/opensense/pluginmanager/RegisterService;->addInsertPluginsOp(Ljava/util/ArrayList;JLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private addInsertPluginsOp(Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter "pkgId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/Plugin;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, plugins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/Plugin;>;"
    .local p4, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/pluginmanager/data/Plugin;

    .line 192
    .local v1, plugin:Lcom/htc/opensense/pluginmanager/data/Plugin;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v2, v:Landroid/content/ContentValues;
    const-string v3, "package_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v3, "feature"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getFeature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v3, "plugin_class"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "version"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v3, "description"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v3, "plugin_meta"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getPluginMeta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v3, "removed"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 201
    sget-object v3, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_RAWQUERY_AUTHORITY:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #plugin:Lcom/htc/opensense/pluginmanager/data/Plugin;
    .end local v2           #v:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private final getFeatureId(Ljava/lang/String;)J
    .locals 4
    .parameter "feature"

    .prologue
    .line 168
    sget-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->FEATURE_AUTHORITY:Landroid/net/Uri;

    const-string v1, "feature=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/opensense/pluginmanager/RegisterService;->getId(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final getFeatureList(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/htc/opensense/pluginmanager/data/FeatureList;
    .locals 7
    .parameter "pm"
    .parameter "app"

    .prologue
    .line 349
    if-nez p1, :cond_1

    .line 350
    const/4 v1, 0x0

    .line 370
    :cond_0
    :goto_0
    return-object v1

    .line 353
    :cond_1
    const/4 v1, 0x0

    .line 355
    .local v1, features:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "opensense_feature"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 359
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "opensense_feature"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 360
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v2}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/FeatureList;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 361
    .end local v2           #parser:Landroid/content/res/XmlResourceParser;
    .end local v3           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "RegisterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureList failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 363
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 364
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "RegisterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureList failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 365
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 366
    .local v0, e:Ljava/io/IOException;
    const-string v4, "RegisterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureList failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final getId(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 177
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    :goto_0
    return-wide v0

    .line 181
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getInstalledPluginPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .parameter "pm"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/PluginPackage;",
            "Lcom/htc/opensense/pluginmanager/data/FeatureList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 375
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-object v4

    .line 379
    :cond_1
    const/4 v0, 0x0

    .line 382
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 388
    :goto_1
    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0, v0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getInstalledPluginPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/htc/opensense/pluginmanager/data/PluginPackage;

    move-result-object v3

    .line 393
    .local v3, p:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    invoke-static {p0, v0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getFeatureList(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/htc/opensense/pluginmanager/data/FeatureList;

    move-result-object v2

    .line 395
    .local v2, features:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    .line 399
    :cond_2
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 384
    .end local v2           #features:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    .end local v3           #p:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    :catch_0
    move-exception v1

    .line 385
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to getApplicationInfo for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static final getInstalledPluginPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    .locals 7
    .parameter "pm"
    .parameter "app"

    .prologue
    .line 320
    if-nez p1, :cond_1

    .line 321
    const/4 v1, 0x0

    .line 344
    :cond_0
    :goto_0
    return-object v1

    .line 324
    :cond_1
    const/4 v1, 0x0

    .line 326
    .local v1, p:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "opensense"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 329
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "opensense"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 330
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v2}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/PluginPackage;

    move-result-object v1

    .line 331
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 332
    .end local v2           #parser:Landroid/content/res/XmlResourceParser;
    .end local v3           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "RegisterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInstalledPluginPackage failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 335
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 336
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "RegisterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInstalledPluginPackage failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 339
    .local v0, e:Ljava/io/IOException;
    const-string v4, "RegisterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInstalledPluginPackage failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstalledPluginPackages(Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .locals 9
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/PluginPackage;",
            ">;",
            "Lcom/htc/opensense/pluginmanager/data/FeatureList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v6, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/PluginPackage;>;"
    new-instance v3, Lcom/htc/opensense/pluginmanager/data/FeatureList;

    invoke-direct {v3}, Lcom/htc/opensense/pluginmanager/data/FeatureList;-><init>()V

    .line 407
    .local v3, features:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    const/16 v7, 0x80

    invoke-virtual {p0, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 409
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v1, :cond_0

    .line 410
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Plugin cannot be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 413
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 414
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    invoke-static {p0, v0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getInstalledPluginPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/htc/opensense/pluginmanager/data/PluginPackage;

    move-result-object v5

    .line 415
    .local v5, p:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    invoke-static {p0, v0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getFeatureList(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/htc/opensense/pluginmanager/data/FeatureList;

    move-result-object v2

    .line 417
    .local v2, f:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    if-eqz v5, :cond_2

    .line 418
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 422
    invoke-virtual {v3, v2}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 426
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #f:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    .end local v5           #p:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    :cond_3
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method private final getPackageId(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 163
    sget-object v0, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_PKG_AUTHORITY:Landroid/net/Uri;

    const-string v1, "package=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/opensense/pluginmanager/RegisterService;->getId(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final insertFeatures(Lcom/htc/opensense/pluginmanager/data/FeatureList;)V
    .locals 9
    .parameter "features"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->size()I

    move-result v7

    if-gez v7, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->size()I

    move-result v7

    new-array v6, v7, [Landroid/content/ContentValues;

    .line 94
    .local v6, values:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 95
    .local v2, i:I
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;

    .line 96
    .local v1, feature:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v5, v:Landroid/content/ContentValues;
    const-string v7, "version"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getVersion()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v7, "feature"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v7, "feature_type"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v5, v6, v2

    move v2, v3

    .line 101
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 104
    .end local v1           #feature:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    .end local v5           #v:Landroid/content/ContentValues;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/htc/opensense/pluginmanager/RegisterService;->FEATURE_AUTHORITY:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "RegisterService"

    const-string v8, "insertFeatures failed to bulkInsert"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final insertMetaData(Ljava/util/ArrayList;J)V
    .locals 7
    .parameter
    .parameter "pkgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/MetaData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/MetaData;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "package_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/pluginmanager/data/MetaData;

    .line 153
    .local v3, service:Lcom/htc/opensense/pluginmanager/data/MetaData;
    const-string v5, "meta_name"

    invoke-virtual {v3}, Lcom/htc/opensense/pluginmanager/data/MetaData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3}, Lcom/htc/opensense/pluginmanager/data/MetaData;->getDataList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;

    .line 155
    .local v0, data:Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;
    const-string v5, "type"

    iget-object v6, v0, Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v5, "value"

    iget-object v6, v0, Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;->value:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense/pluginmanager/RegisterService;->CLASS_AUTHORITY:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 160
    .end local v0           #data:Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #service:Lcom/htc/opensense/pluginmanager/data/MetaData;
    :cond_1
    return-void
.end method

.method private final insertPluginPackage(Lcom/htc/opensense/pluginmanager/data/PluginPackage;)V
    .locals 6
    .parameter "pluginPackage"

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    const-string v4, "RegisterService"

    const-string v5, "insertPluginPackage pluginPackage is null, return"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/opensense/pluginmanager/RegisterService;->getPackageId(Ljava/lang/String;)J

    move-result-wide v0

    .line 471
    .local v0, existingPkgId:J
    invoke-direct {p0, p1, v0, v1}, Lcom/htc/opensense/pluginmanager/RegisterService;->insertPluginPkg(Lcom/htc/opensense/pluginmanager/data/PluginPackage;J)J

    move-result-wide v2

    .line 473
    .local v2, newPkgId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 474
    const-string v4, "RegisterService"

    const-string v5, "insertPluginPackage newPkgId < 0, return"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getServices()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3}, Lcom/htc/opensense/pluginmanager/RegisterService;->insertMetaData(Ljava/util/ArrayList;J)V

    .line 479
    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getPlugins()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3}, Lcom/htc/opensense/pluginmanager/RegisterService;->insertPlugins(Ljava/util/ArrayList;J)V

    goto :goto_0
.end method

.method private final insertPluginPkg(Lcom/htc/opensense/pluginmanager/data/PluginPackage;J)J
    .locals 11
    .parameter "pkg"
    .parameter "existingPkgId"

    .prologue
    .line 285
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "certificate"

    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getCertification()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-wide/16 v5, -0x1

    cmp-long v5, p2, v5

    if-lez v5, :cond_0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_PKG_AUTHORITY:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local p2
    :goto_0
    return-wide p2

    .line 293
    .restart local p2
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update plugin_pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", existingPkgId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "package"

    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-wide/16 v1, -0x1

    .line 302
    .local v1, packageId:J
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_PKG_AUTHORITY:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 304
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .end local v3           #uri:Landroid/net/Uri;
    :goto_1
    move-wide p2, v1

    .line 308
    goto :goto_0

    .line 305
    :catch_1
    move-exception v0

    .line 306
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "RegisterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert plugin_pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final insertPlugins(Ljava/util/ArrayList;J)V
    .locals 8
    .parameter
    .parameter "pkgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/Plugin;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, plugins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/Plugin;>;"
    const/4 v7, 0x0

    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 210
    :cond_0
    const-string v5, "RegisterService"

    const-string v6, "insertPlugin, plugin == null or plugins.size <=0, return"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 214
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/pluginmanager/data/Plugin;

    .line 217
    .local v2, plugin:Lcom/htc/opensense/pluginmanager/data/Plugin;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v3, v:Landroid/content/ContentValues;
    const-string v5, "package_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string v5, "feature"

    invoke-virtual {v2}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getFeature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v5, "plugin_class"

    invoke-virtual {v2}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v5, "version"

    invoke-virtual {v2}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string v5, "description"

    invoke-virtual {v2}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v5, "plugin_meta"

    invoke-virtual {v2}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getPluginMeta()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v5, "removed"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 225
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    .end local v2           #plugin:Lcom/htc/opensense/pluginmanager/data/Plugin;
    .end local v3           #v:Landroid/content/ContentValues;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_RAWQUERY_AUTHORITY:Landroid/net/Uri;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_2
    invoke-direct {p0, p1}, Lcom/htc/opensense/pluginmanager/RegisterService;->notifyChangeWithPlugins(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "RegisterService"

    const-string v6, "Something wrong while trying to insertPlugins!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private notifyChangeWithPlugins(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/pluginmanager/data/Plugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, plugins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/Plugin;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 242
    .local v9, featureNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense/pluginmanager/data/Plugin;

    .line 243
    .local v12, plugin:Lcom/htc/opensense/pluginmanager/data/Plugin;
    invoke-virtual {v12}, Lcom/htc/opensense/pluginmanager/data/Plugin;->getFeature()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v12           #plugin:Lcom/htc/opensense/pluginmanager/data/Plugin;
    :cond_0
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v6, builder:Ljava/lang/StringBuilder;
    const-string v0, "SELECT DISTINCT "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feature_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "features"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    .local v10, i:I
    :goto_1
    if-lez v10, :cond_2

    .line 255
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 256
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    const-string v0, "?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 260
    :cond_2
    const-string v0, ") AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feature_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'com.htc.opensense.plugin.TabPlugin\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 264
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 266
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/pluginmanager/RegisterService;->RAWQUERY_AUTHORITY:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 268
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 269
    const-string v0, "RegisterService"

    const-string v1, "Notify Carousel that a new TabPlugin has been installed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_AUTHORITY:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_3
    if-eqz v7, :cond_4

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #i:I
    :cond_4
    :goto_2
    return-void

    .line 273
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #builder:Ljava/lang/StringBuilder;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v10       #i:I
    :catch_0
    move-exception v8

    .line 274
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RegisterService"

    const-string v1, "Something wrong while trying to notify Carousel!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    if-eqz v7, :cond_4

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 277
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 85
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 24
    .parameter "intent"

    .prologue
    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 485
    .local v13, intentAction:Ljava/lang/String;
    if-eqz v13, :cond_0

    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService;->ACTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 609
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 489
    :cond_1
    const-string v2, "RegisterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService;->ACTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    .line 493
    .local v8, action:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;
    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService$1;->$SwitchMap$com$htc$opensense$pluginmanager$RegisterService$ActionCmd:[I

    invoke-virtual {v8}, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 500
    :pswitch_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v14, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_AUTHORITY:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense/pluginmanager/RegisterService;->getInstalledPluginPackages(Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v19

    .line 508
    .local v19, result:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/PluginPackage;>;Lcom/htc/opensense/pluginmanager/data/FeatureList;>;"
    if-eqz v19, :cond_0

    .line 512
    move-object/from16 v0, v19

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/htc/opensense/pluginmanager/data/FeatureList;

    .line 513
    .local v11, features:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/htc/opensense/pluginmanager/RegisterService;->addInsertFeaturesOp(Lcom/htc/opensense/pluginmanager/data/FeatureList;Ljava/util/ArrayList;)V

    .line 516
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/ArrayList;

    .line 517
    .local v17, pluginPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/PluginPackage;>;"
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 518
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense/pluginmanager/data/PluginPackage;

    .line 520
    .local v16, pluginPackage:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/htc/opensense/pluginmanager/RegisterService;->addInsertPluginPackageOp(Lcom/htc/opensense/pluginmanager/data/PluginPackage;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 523
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #pluginPackage:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    :cond_2
    const-string v2, "RegisterService"

    const-string v3, "insertPluginPackage result.first is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.opensense.plugin"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 528
    if-eqz v17, :cond_4

    .line 529
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense/pluginmanager/data/PluginPackage;

    .line 530
    .restart local v16       #pluginPackage:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/pluginmanager/data/PluginPackage;->getPlugins()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/opensense/pluginmanager/RegisterService;->notifyChangeWithPlugins(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 533
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #pluginPackage:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    :catch_0
    move-exception v10

    .line 534
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 536
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 537
    .local v10, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0

    .line 541
    .end local v10           #e:Landroid/content/OperationApplicationException;
    :cond_4
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.htc.plugin.ACTION_SCAN_FINISH"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v20, scanFinish:Landroid/content/Intent;
    const-string v2, "htc.pluginmanager.permission.USE_BROADCAST"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/pluginmanager/RegisterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    .end local v11           #features:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    .end local v14           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v17           #pluginPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/PluginPackage;>;"
    .end local v19           #result:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/htc/opensense/pluginmanager/data/PluginPackage;>;Lcom/htc/opensense/pluginmanager/data/FeatureList;>;"
    .end local v20           #scanFinish:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 548
    .local v15, pkg:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/pluginmanager/RegisterService;->getInstalledPluginPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v18

    .line 551
    .local v18, result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/htc/opensense/pluginmanager/data/PluginPackage;Lcom/htc/opensense/pluginmanager/data/FeatureList;>;"
    if-eqz v18, :cond_0

    .line 556
    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/htc/opensense/pluginmanager/data/FeatureList;

    .line 557
    .restart local v11       #features:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/opensense/pluginmanager/RegisterService;->insertFeatures(Lcom/htc/opensense/pluginmanager/data/FeatureList;)V

    .line 560
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/opensense/pluginmanager/data/PluginPackage;

    .line 561
    .restart local v16       #pluginPackage:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/opensense/pluginmanager/RegisterService;->insertPluginPackage(Lcom/htc/opensense/pluginmanager/data/PluginPackage;)V

    .line 562
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.htc.plugin.ACTION_SCAN_FINISH"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .restart local v20       #scanFinish:Landroid/content/Intent;
    const-string v2, "com.htc.plugin.EXTRA_PKG_REPLACED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 564
    const-string v2, "htc.pluginmanager.permission.USE_BROADCAST"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/pluginmanager/RegisterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 568
    .end local v11           #features:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    .end local v15           #pkg:Landroid/net/Uri;
    .end local v16           #pluginPackage:Lcom/htc/opensense/pluginmanager/data/PluginPackage;
    .end local v18           #result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/htc/opensense/pluginmanager/data/PluginPackage;Lcom/htc/opensense/pluginmanager/data/FeatureList;>;"
    .end local v20           #scanFinish:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 569
    .restart local v15       #pkg:Landroid/net/Uri;
    const-string v23, "package_id IN ( SELECT _id FROM plugin_pkg WHERE package=? )"

    .line 572
    .local v23, where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 573
    .local v6, selectionArgs:[Ljava/lang/String;
    new-instance v22, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 574
    .local v22, values:Landroid/content/ContentValues;
    const-string v2, "removed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_AUTHORITY:Landroid/net/Uri;

    const-string v4, "package_id IN ( SELECT _id FROM plugin_pkg WHERE package=? )"

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/pluginmanager/RegisterService;->CLASS_AUTHORITY:Landroid/net/Uri;

    const-string v4, "package_id IN ( SELECT _id FROM plugin_pkg WHERE package=? )"

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 578
    const-string v21, "SELECT DISTINCT feature_type FROM features WHERE feature_type=\'com.htc.opensense.plugin.TabPlugin\' AND _id IN ( SELECT feature_id FROM plugin WHERE package_id IN ( SELECT _id FROM plugin_pkg WHERE package=? ))"

    .line 585
    .local v21, sql:Ljava/lang/String;
    const/4 v9, 0x0

    .line 587
    .local v9, c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/pluginmanager/RegisterService;->RAWQUERY_AUTHORITY:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "SELECT DISTINCT feature_type FROM features WHERE feature_type=\'com.htc.opensense.plugin.TabPlugin\' AND _id IN ( SELECT feature_id FROM plugin WHERE package_id IN ( SELECT _id FROM plugin_pkg WHERE package=? ))"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 589
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 590
    const-string v2, "RegisterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify Carousel about removal of a TabPlugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/pluginmanager/RegisterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/pluginmanager/RegisterService;->PLUGIN_AUTHORITY:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 598
    :cond_5
    if-eqz v9, :cond_6

    .line 599
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_6
    :goto_3
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.htc.plugin.ACTION_SCAN_FINISH"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .restart local v20       #scanFinish:Landroid/content/Intent;
    const-string v2, "com.htc.plugin.EXTRA_PKG_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 604
    const-string v2, "htc.pluginmanager.permission.USE_BROADCAST"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/pluginmanager/RegisterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    .end local v20           #scanFinish:Landroid/content/Intent;
    :catch_2
    move-exception v10

    .line 596
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "RegisterService"

    const-string v3, "Something wrong while notifying Carousel!"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    if-eqz v9, :cond_6

    .line 599
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 598
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_7

    .line 599
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
