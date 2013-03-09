.class public interface abstract Lcom/htc/opensense/sync/SyncSettings;
.super Ljava/lang/Object;
.source "SyncSettings.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final ACTION_SYNC_SCHEDULE_CHANGE:Ljava/lang/String; = "com.htc.settings.accountsync.ACTION_SYNC_SCHEDULE_CHANGE"

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.settings.accountsync.SYNC"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final COL_NAME:Ljava/lang/String; = "key"

.field public static final COL_VALUE:Ljava/lang/String; = "value"

.field public static final EXTRA_ID:Ljava/lang/String; = "_id"

.field public static final NOT_UPDATE_WHEN_OPEN:I = 0x0

.field public static final NO_UPDATE_WHEN_OPEN_SETTING:I = -0x1

.field public static final PLUGIN_PKG_NAME:Ljava/lang/String; = "plugin_pkg_name"

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

.field public static final REFRESH_WHEN_OPEN:Ljava/lang/String; = "refresh_when_open"

.field public static final SYNC_EXTRAS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SYNC_EXTRAS_TABLE_NAME:Ljava/lang/String; = "extras"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "sync_interval"

.field public static final SYNC_SETTINGS_TABLE_NAME:Ljava/lang/String; = "sync_settings"

.field public static final SYNC_SETTING_AS_ITEM_CHANGES:I = -0x2

.field public static final SYNC_SETTING_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SYNC_SETTING_MANUAL:I = -0x1

.field public static final UPDATE_INTENT_ACTION:Ljava/lang/String; = "update_intent_action"

.field public static final UPDATE_SECS_ARRAY_RES:Ljava/lang/String; = "update_secs_res_id"

.field public static final UPDATE_WHEN_OPEN:I = 0x1

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "content://com.htc.settings.accountsync.SYNC"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/sync/SyncSettings;->AUTHORITY_URI:Landroid/net/Uri;

    .line 22
    sget-object v0, Lcom/htc/opensense/sync/SyncSettings;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sync_settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/sync/SyncSettings;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/opensense/sync/SyncSettings;->PROJECTION_MAP:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/htc/opensense/sync/SyncSettings;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "extras"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/sync/SyncSettings;->SYNC_EXTRAS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
