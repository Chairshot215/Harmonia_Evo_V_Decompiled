.class public Lcom/htc/providers/settings/HtcInternalSettingsProvider;
.super Landroid/content/ContentProvider;
.source "HtcInternalSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.providers.settings.HtcInternalSettingsProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "settings.db"

.field private static final DATABASE_TABLE_NAME:Ljava/lang/String; = "settings"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DB_ICON_RES_ID:Ljava/lang/String; = "icon_res_id"

.field public static final DB_INDEX:Ljava/lang/String; = "id"

.field public static final DB_ITEM_ORDER:Ljava/lang/String; = "item_order"

.field public static final DB_LABEL_RES_ID:Ljava/lang/String; = "label_res_id"

.field public static final DB_META_DATA:Ljava/lang/String; = "meta_data"

.field public static final DB_NAME:Ljava/lang/String; = "name"

.field public static final DB_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final DB_PROCESS_NAME:Ljava/lang/String; = "process_name"

.field private static final DEBUG_FLAG:Z = false

.field private static final SETTINGS:I = 0x1

.field private static final SETTINGS_ID:I = 0x2

.field private static final SETTINGS_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/settings"

.field private static final SETTINGS_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/settings"

.field private static final TAG:Ljava/lang/String; = "HtcInternalSettingsProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 65
    sget-object v0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.providers.settings.HtcInternalSettingsProvider"

    const-string v2, "settings"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.providers.settings.HtcInternalSettingsProvider"

    const-string v2, "settings/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    const-string v0, "content://com.htc.providers.settings.HtcInternalSettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 240
    return-void
.end method

.method static synthetic access$000()Landroid/content/UriMatcher;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->mDbHelper:Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 204
    .local v0, count:I
    if-lez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 207
    :cond_0
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, mimeType:Ljava/lang/String;
    sget-object v1, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/settings"

    .line 165
    :goto_0
    return-object v0

    .line 158
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/settings"

    .line 159
    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 178
    const-wide/16 v1, -0x1

    .line 179
    .local v1, rowId:J
    const/4 v0, 0x0

    .line 181
    .local v0, newUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->mDbHelper:Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;

    invoke-virtual {v3, p1, v5, p2}, Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;->insert(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 182
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 183
    sget-object v3, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 185
    :cond_0
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 188
    :cond_1
    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;-><init>(Lcom/htc/providers/settings/HtcInternalSettingsProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->mDbHelper:Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->mDbHelper:Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v6, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 137
    :cond_0
    return-object v6
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->mDbHelper:Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/providers/settings/HtcInternalSettingsProvider$DatabaseHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 228
    .local v0, count:I
    if-lez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/htc/providers/settings/HtcInternalSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 231
    :cond_0
    return v0
.end method
