.class public Lcom/android/htccontacts/util/NameUtility;
.super Ljava/lang/Object;
.source "NameUtility.java"


# static fields
.field private static final JOIN_NAME_PROJECTION:[Ljava/lang/String;

.field private static final JOIN_NAME_URI:Landroid/net/Uri;

.field private static final SPLITTED_NAME_PROJECTION:[Ljava/lang/String;

.field private static final SPLIT_MAIN_NAME_URI:Landroid/net/Uri;

.field private static final SPLIT_NAME_URI:Landroid/net/Uri;

.field private static final UNSTRUCTURED_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "split_name"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/NameUtility;->SPLIT_NAME_URI:Landroid/net/Uri;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data2"

    aput-object v1, v0, v2

    const-string v1, "data3"

    aput-object v1, v0, v3

    const-string v1, "data5"

    aput-object v1, v0, v4

    const-string v1, "data4"

    aput-object v1, v0, v5

    const-string v1, "data6"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/htccontacts/util/NameUtility;->SPLITTED_NAME_PROJECTION:[Ljava/lang/String;

    .line 30
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data10"

    aput-object v1, v0, v3

    const-string v1, "phonetic_name"

    aput-object v1, v0, v4

    const-string v1, "data11"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/htccontacts/util/NameUtility;->JOIN_NAME_PROJECTION:[Ljava/lang/String;

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data2"

    aput-object v1, v0, v2

    const-string v1, "data3"

    aput-object v1, v0, v3

    const-string v1, "data5"

    aput-object v1, v0, v4

    const-string v1, "data4"

    aput-object v1, v0, v5

    const-string v1, "data6"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/util/NameUtility;->UNSTRUCTURED_NAMES:[Ljava/lang/String;

    .line 49
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "split_main_name"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/NameUtility;->SPLIT_MAIN_NAME_URI:Landroid/net/Uri;

    .line 52
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "join_name"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/NameUtility;->JOIN_NAME_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conjectFirstLastName(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "resolver"
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 175
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v0, data:Landroid/content/ContentValues;
    const-string v2, "data2"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "data3"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p0, v0}, Lcom/android/htccontacts/util/NameUtility;->joinNames(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 179
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data1"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static joinNames(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 16
    .parameter "resolver"
    .parameter "values"

    .prologue
    .line 120
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v14, result:Landroid/content/ContentValues;
    sget-object v2, Lcom/android/htccontacts/util/NameUtility;->JOIN_NAME_URI:Landroid/net/Uri;

    .line 122
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 123
    .local v8, builder:Landroid/net/Uri$Builder;
    sget-object v7, Lcom/android/htccontacts/util/NameUtility;->UNSTRUCTURED_NAMES:[Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v13, v7

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_1

    aget-object v10, v7, v11

    .line 124
    .local v10, column:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, value:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v8, v10, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 123
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 130
    .end local v10           #column:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 131
    sget-object v3, Lcom/android/htccontacts/util/NameUtility;->JOIN_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 132
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 134
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    sget-object v7, Lcom/android/htccontacts/util/NameUtility;->JOIN_NAME_PROJECTION:[Ljava/lang/String;

    array-length v13, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_3

    aget-object v10, v7, v11

    .line 136
    .restart local v10       #column:Ljava/lang/String;
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 137
    .local v12, index:I
    if-ltz v12, :cond_2

    .line 138
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 139
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    invoke-virtual {v14, v10, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v15           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 146
    .end local v10           #column:Ljava/lang/String;
    .end local v12           #index:I
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_4
    return-object v14
.end method

.method public static joinSimpleNames(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2
    .parameter "resolver"
    .parameter "values"

    .prologue
    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 161
    .local v0, updates:Landroid/content/ContentValues;
    const-string v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 162
    const-string v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 163
    invoke-static {p0, v0}, Lcom/android/htccontacts/util/NameUtility;->joinNames(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    return-object v1
.end method

.method public static splitToFullName(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 14
    .parameter "resolver"
    .parameter "fullName"

    .prologue
    const/4 v3, 0x0

    .line 61
    sget-object v0, Lcom/android/htccontacts/util/NameUtility;->SPLIT_NAME_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "data1"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, filterUri:Landroid/net/Uri;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v13, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/android/htccontacts/util/NameUtility;->SPLITTED_NAME_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 64
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 66
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v6, Lcom/android/htccontacts/util/NameUtility;->SPLITTED_NAME_PROJECTION:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v8, v6, v9

    .line 68
    .local v8, columnName:Ljava/lang/String;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 69
    .local v10, index:I
    if-ltz v10, :cond_0

    .line 70
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, value:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {v13, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v12           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 78
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #columnName:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #index:I
    .end local v11           #len$:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_2
    return-object v13
.end method

.method public static splitToMainName(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 14
    .parameter "resolver"
    .parameter "fullName"

    .prologue
    const/4 v3, 0x0

    .line 90
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v13, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/htccontacts/util/NameUtility;->SPLIT_MAIN_NAME_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "data1"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 92
    .local v1, filterUri:Landroid/net/Uri;
    sget-object v2, Lcom/android/htccontacts/util/NameUtility;->SPLITTED_NAME_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 93
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 95
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v6, Lcom/android/htccontacts/util/NameUtility;->SPLITTED_NAME_PROJECTION:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v8, v6, v9

    .line 97
    .local v8, columnName:Ljava/lang/String;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 98
    .local v10, index:I
    if-ltz v10, :cond_0

    .line 99
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, value:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {v13, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v12           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 107
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #columnName:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #index:I
    .end local v11           #len$:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_2
    return-object v13
.end method
