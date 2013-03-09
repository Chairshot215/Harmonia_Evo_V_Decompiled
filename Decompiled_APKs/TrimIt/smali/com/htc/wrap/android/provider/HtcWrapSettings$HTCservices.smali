.class public final Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;
.super Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HTCservices"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices$QueryMap;
    }
.end annotation


# static fields
.field public static final CHANGED_ACTION:Ljava/lang/String; = "com.htc.htcservices.intent.action.HTCSERVICES_CHANGED"

.field public static final CHECKIN_DUMPSYS_LIST:Ljava/lang/String; = "checkin_dumpsys_list"

.field public static final CHECKIN_EVENTS:Ljava/lang/String; = "checkin_events"

.field public static final CHECKIN_INTERVAL:Ljava/lang/String; = "checkin_interval"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final OVERRIDE_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.HTCSERVICES_OVERRIDE"

.field public static final PARENTAL_CONTROL_APPS_LIST:Ljava/lang/String; = "parental_control_apps_list"

.field public static final PARENTAL_CONTROL_CHECK_ENABLED:Ljava/lang/String; = "parental_control_check_enabled"

.field public static final PARENTAL_CONTROL_EXPECTED_RESPONSE:Ljava/lang/String; = "parental_control_expected_response"

.field public static final PARENTAL_CONTROL_REDIRECT_REGEX:Ljava/lang/String; = "parental_control_redirect_regex"

.field public static final PARENTAL_CONTROL_TIMEOUT_IN_MS:Ljava/lang/String; = "parental_control_timeout_in_ms"

.field public static final PROVISIONING_DIGEST:Ljava/lang/String; = "digest"

.field public static final PROVISIONING_OVERRIDE:Ljava/lang/String; = "override"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_hservices_version"

.field public static final UPLOAD_EVENTS:Ljava/lang/String; = "upload_events"

.field public static final UPLOAD_STATS:Ljava/lang/String; = "upload_stats"

.field private static volatile mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

.field private static final mNameValueCacheLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3817
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    .line 3818
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->mNameValueCacheLock:Ljava/lang/Object;

    .line 3892
    const-string v0, "content://settings/htcservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3799
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;-><init>()V

    .line 3970
    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 3853
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3856
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3860
    .local v2, value:I
    :goto_0
    return v2

    .end local v2           #value:I
    :cond_0
    move v2, p2

    .line 3856
    goto :goto_0

    .line 3857
    :catch_0
    move-exception v0

    .line 3858
    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2       #value:I
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .parameter "resolver"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 3869
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3872
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3876
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 3872
    goto :goto_0

    .line 3873
    :catch_0
    move-exception v0

    .line 3874
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 3827
    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->mNameValueCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3828
    :try_start_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    if-nez v0, :cond_0

    .line 3829
    new-instance v0, Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    const-string v2, "sys.settings_hservices_version"

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/wrap/android/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    .line 3831
    :cond_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/htc/wrap/android/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3832
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    .line 3886
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3844
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
