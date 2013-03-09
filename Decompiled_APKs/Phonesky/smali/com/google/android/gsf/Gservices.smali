.class public Lcom/google/android/gsf/Gservices;
.super Ljava/lang/Object;
.source "Gservices.java"


# static fields
.field public static final CONTENT_PREFIX_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FALSE_PATTERN:Ljava/util/regex/Pattern;

.field public static final TRUE_PATTERN:Ljava/util/regex/Pattern;

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloadedPrefixes:[Ljava/lang/String;

.field private static sResolver:Landroid/content/ContentResolver;

.field private static sVersionToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 44
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/Gservices;->sResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static varargs bulkCacheByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 225
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 226
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 227
    sput-object p1, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    .line 228
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    sget-object v3, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    return-void
.end method

.method private static ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "cr"

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 63
    sput-object p0, Lcom/google/android/gsf/Gservices;->sResolver:Landroid/content/ContentResolver;

    .line 68
    new-instance v0, Lcom/google/android/gsf/Gservices$1;

    const-string v1, "Gservices"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gsf/Gservices$1;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/Gservices$1;->start()V

    .line 86
    :cond_0
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, valString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 185
    .restart local p2
    :cond_1
    sget-object v1, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    const/4 p2, 0x1

    goto :goto_0

    .line 187
    :cond_2
    sget-object v1, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    const/4 p2, 0x0

    goto :goto_0

    .line 191
    :cond_3
    const-string v1, "Gservices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to read gservices key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\") as boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 161
    .local v2, value:I
    :goto_0
    return v2

    .end local v2           #value:I
    :cond_0
    move v2, p2

    .line 157
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2       #value:I
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 171
    invoke-static {p0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 178
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 174
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "key"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 99
    sget-object v6, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    monitor-exit v1

    .line 133
    :cond_1
    :goto_0
    return-object p2

    .line 104
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    sget-object v1, Lcom/google/android/gsf/Gservices;->sPreloadedPrefixes:[Ljava/lang/String;

    array-length v4, v1

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 109
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 114
    :cond_3
    sget-object v0, Lcom/google/android/gsf/Gservices;->sResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 115
    if-nez v1, :cond_4

    .line 116
    sget-object v0, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    const-class v2, Lcom/google/android/gsf/Gservices;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    :try_start_3
    sget-object v3, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    if-ne v6, v3, :cond_5

    .line 128
    sget-object v3, Lcom/google/android/gsf/Gservices;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    if-eqz v0, :cond_6

    move-object p2, v0

    .line 133
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 130
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 133
    :catchall_2
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static varargs getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .parameter "cr"
    .parameter "prefixes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 204
    sget-object v1, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 205
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 206
    .local v7, out:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 215
    :goto_0
    return-object v7

    .line 209
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 240
    const-class v1, Lcom/google/android/gsf/Gservices;

    monitor-enter v1

    .line 243
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;)V

    .line 244
    sget-object v0, Lcom/google/android/gsf/Gservices;->sVersionToken:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
