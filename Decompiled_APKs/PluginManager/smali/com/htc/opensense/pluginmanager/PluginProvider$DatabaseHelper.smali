.class Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PluginProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/pluginmanager/PluginProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field static final DBName:Ljava/lang/String; = "registry.db"

.field static final DB_Version:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/pluginmanager/PluginProvider;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/pluginmanager/PluginProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->this$0:Lcom/htc/opensense/pluginmanager/PluginProvider;

    .line 68
    const-string v0, "registry.db"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 69
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 84
    const-string v0, "CREATE TABLE features(_id INTEGER PRIMARY KEY AUTOINCREMENT, version INTEGER, feature TEXT, feature_type TEXT, UNIQUE(version,feature));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "CREATE TABLE meta_data(_id INTEGER PRIMARY KEY AUTOINCREMENT, package_id INTEGER, meta_name TEXT, type TEXT, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "CREATE TABLE plugin(_id INTEGER PRIMARY KEY AUTOINCREMENT, package_id INTEGER, feature_id INTEGER, version INTEGER, plugin_class TEXT, description TEXT, plugin_meta TEXT, removed BOOLEAN, UNIQUE(package_id, feature_id, plugin_class));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "CREATE TABLE plugin_pkg(_id INTEGER PRIMARY KEY AUTOINCREMENT, package TEXT UNIQUE, certificate TEXT, icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->initFeatures(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    return-void
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 109
    const-string v0, "DROP TABLE IF EXISTS features"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string v0, "DROP TABLE IF EXISTS meta_data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "DROP TABLE IF EXISTS plugin"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "DROP TABLE IF EXISTS plugin_pkg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private initFeatures(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 116
    iget-object v6, p0, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->this$0:Lcom/htc/opensense/pluginmanager/PluginProvider;

    invoke-virtual {v6}, Lcom/htc/opensense/pluginmanager/PluginProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f03

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 119
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 121
    .local v3, list:Lcom/htc/opensense/pluginmanager/data/FeatureList;
    :try_start_0
    invoke-static {v4}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/opensense/pluginmanager/data/FeatureList;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 128
    :goto_0
    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v3}, Lcom/htc/opensense/pluginmanager/data/FeatureList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;

    .line 130
    .local v1, feature:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "version"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v6, "feature"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v6, "feature_type"

    invoke-virtual {v1}, Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v6, "features"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 122
    .end local v1           #feature:Lcom/htc/opensense/pluginmanager/data/FeatureList$Feature;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "PluginProvider"

    const-string v7, "Error when parsing features"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PluginProvider"

    const-string v7, "Error when loading features"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 78
    const-string v0, "PluginProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade databases from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0, p1}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    return-void
.end method
