.class public interface abstract Lcom/htc/opensense/social/SNConstants;
.super Ljava/lang/Object;
.source "SNConstants.java"


# static fields
.field public static final ACTIVITY_EVENT:Ljava/lang/String; = "event"

.field public static final ACTIVITY_PHOTO:Ljava/lang/String; = "photo"

.field public static final ACTIVITY_STATUS:Ljava/lang/String; = "status"

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.opensense.plugin"

.field public static final COLUMN_ACCOUNT:Ljava/lang/String; = "account_type"

.field public static final COLUMN_EXTRA:Ljava/lang/String; = "extra"

.field public static final COLUMN_FEATURE:Ljava/lang/String; = "feature"

.field public static final COLUMN_FEATURE_ID:Ljava/lang/String; = "feature_id"

.field public static final COLUMN_PACKAGE:Ljava/lang/String; = "package"

.field public static final COLUMN_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field public static final COLUMN_SERVICE:Ljava/lang/String; = "service"

.field public static final COLUMN_SERVICE_CLASS:Ljava/lang/String; = "service_class"

.field public static final COLUMN_SUPPORT:Ljava/lang/String; = "support"

.field public static final FEATURE_AUTHORITY:Landroid/net/Uri; = null

.field public static final FRIENDSHIP_ADD_FRIEND:I = 0x0

.field public static final FRIENDSHIP_REMOVE_FRIEND:I = 0x1

.field public static final INTENT_ACTION_COMPOSE_STATUS_UPDATE:Ljava/lang/String; = "com.htc.opensense.social.COMPOSE_STATUS_UPDATE"

.field public static final INTENT_ACTION_VIEW_FRIENDS_LIST:Ljava/lang/String; = "com.htc.opensense.social.VIEW_FRIENDS_LIST"

.field public static final MEDIUM_TYPE_PHOTO:I = 0x1

.field public static final MEDIUM_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIUM_TYPE_VIDEO:I = 0x2

.field public static final PKG_AUTHORITY:Landroid/net/Uri; = null

.field public static final PRIVACY_PRIVATE:Ljava/lang/String; = "private"

.field public static final PRIVACY_PRIVATE_FAMILY_ONLY:Ljava/lang/String; = "family"

.field public static final PRIVACY_PRIVATE_FRIENDS_AND_FAMILY:Ljava/lang/String; = "ff"

.field public static final PRIVACY_PRIVATE_FRIENDS_ONLY:Ljava/lang/String; = "friends"

.field public static final PRIVACY_PUBLIC:Ljava/lang/String; = "public"

.field public static final RAWQUERY:Landroid/net/Uri; = null

.field public static final SERVICE_AUTHORITY:Landroid/net/Uri; = null

.field public static final SUPPORT_AUTHORITY:Landroid/net/Uri; = null

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "SOCIAL_NETWORK_SYNC_INTERVAL"

.field public static final SYNC_TYPE:Ljava/lang/String; = "sync_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "content://com.htc.opensense.plugin/features"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/SNConstants;->FEATURE_AUTHORITY:Landroid/net/Uri;

    .line 82
    const-string v0, "content://com.htc.opensense.plugin/services"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/SNConstants;->SERVICE_AUTHORITY:Landroid/net/Uri;

    .line 87
    const-string v0, "content://com.htc.opensense.plugin/plugin_pkg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/SNConstants;->PKG_AUTHORITY:Landroid/net/Uri;

    .line 92
    const-string v0, "content://com.htc.opensense.plugin/supports"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/SNConstants;->SUPPORT_AUTHORITY:Landroid/net/Uri;

    .line 97
    const-string v0, "content://com.htc.opensense.plugin/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/SNConstants;->RAWQUERY:Landroid/net/Uri;

    return-void
.end method
