.class public Lcom/android/htccontacts/util/NameConverter;
.super Ljava/lang/Object;
.source "NameConverter.java"


# static fields
.field public static final STRUCTURED_NAME_FIELDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data6"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "builder"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    :cond_0
    return-void
.end method

.method public static displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4
    .parameter "context"
    .parameter "displayName"
    .parameter "contentValues"

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 153
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .restart local p2
    :cond_0
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 156
    .local v2, mapValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, key:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public static displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .parameter "context"
    .parameter "displayName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    const/4 v3, 0x0

    .line 118
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 119
    .local v9, structuredName:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "complete_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 121
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "data1"

    invoke-static {v6, v0, p1}, Lcom/android/htccontacts/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/htccontacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget-object v0, Lcom/android/htccontacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/htccontacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 132
    .end local v8           #i:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 134
    return-object v9
.end method

.method private static fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    .local v7, displayName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 101
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    return-object v7

    .line 101
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "values"

    .prologue
    .line 78
    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "complete_name"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 79
    .local v1, builder:Landroid/net/Uri$Builder;
    sget-object v0, Lcom/android/htccontacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 80
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/android/htccontacts/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/htccontacts/util/NameConverter;->fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static structuredNameToDisplayName(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, structuredName:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "complete_name"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 63
    .local v1, builder:Landroid/net/Uri$Builder;
    sget-object v0, Lcom/android/htccontacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 64
    .local v3, key:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v3, v5}, Lcom/android/htccontacts/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/htccontacts/util/NameConverter;->fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
