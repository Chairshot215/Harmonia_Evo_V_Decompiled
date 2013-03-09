.class public final Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;
.super Ljava/lang/Object;
.source "SyncProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/syncprovider/SyncProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncParms"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = null

.field public static final PROJECTION_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "sync_settings"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    .line 352
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "refresh_when_open"

    const-string v2, "refresh_when_open"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "sync_interval"

    const-string v2, "sync_interval"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "update_secs_res_id"

    const-string v2, "update_secs_res_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "update_intent_action"

    const-string v2, "update_intent_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "plugin_pkg_name"

    const-string v2, "plugin_pkg_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTableSQL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 363
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT, %s INTEGER, %s INTEGER DEFAULT -1, %s TEXT, %s TEXT, %s TEXT );"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sync_settings"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "account_type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "refresh_when_open"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sync_interval"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "update_secs_res_id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "update_intent_action"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "plugin_pkg_name"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
