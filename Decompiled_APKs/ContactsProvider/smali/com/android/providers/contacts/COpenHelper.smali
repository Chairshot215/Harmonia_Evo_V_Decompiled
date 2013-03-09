.class Lcom/android/providers/contacts/COpenHelper;
.super Lcom/android/providers/contacts/ContactsDatabaseHelper;
.source "COpenHelper.java"


# static fields
.field private static sSingleton:Lcom/android/providers/contacts/COpenHelper;


# instance fields
.field private sAllowedDatabase:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/COpenHelper;->sSingleton:Lcom/android/providers/contacts/COpenHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    const-string v0, "contacts2.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/COpenHelper;->sAllowedDatabase:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "databaseName"
    .parameter "optimizationEnabled"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/COpenHelper;->sAllowedDatabase:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    .line 50
    return-void
.end method

.method protected static attachCustomerHelper(Landroid/content/Context;Lcom/android/providers/contacts/COpenHelper;)V
    .locals 5
    .parameter "context"
    .parameter "helper"

    .prologue
    .line 151
    iget-object v0, p1, Lcom/android/providers/contacts/COpenHelper;->sAllowedDatabase:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    new-instance v3, Lcom/android/providers/contacts/HtcCustomOpenHelper;

    invoke-virtual {p1}, Lcom/android/providers/contacts/COpenHelper;->dbForProfile()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/android/providers/contacts/HtcCustomOpenHelper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;-><init>(Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;)V

    aput-object v2, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/COpenHelper;->sAllowedDatabase:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    .line 156
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/COpenHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    const-class v1, Lcom/android/providers/contacts/COpenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/COpenHelper;->sSingleton:Lcom/android/providers/contacts/COpenHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/providers/contacts/COpenHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/COpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/COpenHelper;->sSingleton:Lcom/android/providers/contacts/COpenHelper;

    .line 41
    sget-object v0, Lcom/android/providers/contacts/COpenHelper;->sSingleton:Lcom/android/providers/contacts/COpenHelper;

    invoke-static {p0, v0}, Lcom/android/providers/contacts/COpenHelper;->attachCustomerHelper(Landroid/content/Context;Lcom/android/providers/contacts/COpenHelper;)V

    .line 43
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/COpenHelper;->sSingleton:Lcom/android/providers/contacts/COpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getOpenHelperAdapterForName(Ljava/lang/String;)Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    .locals 7
    .parameter "name"

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "null name is not allowed !!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/COpenHelper;->obtainCustomOpenHelperAdapter()[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    move-result-object v2

    .line 63
    .local v2, helperAdapter:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    move-object v1, v2

    .local v1, arr$:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 64
    .local v0, adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    invoke-virtual {v0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    .end local v0           #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    :goto_1
    return-object v0

    .line 63
    .restart local v0       #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v0           #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public obtainCustomOpenHelperAdapter()[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/providers/contacts/COpenHelper;->sAllowedDatabase:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 104
    const-string v5, "COpenHelper"

    const-string v6, "onCreate E"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/providers/contacts/COpenHelper;->obtainCustomOpenHelperAdapter()[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    move-result-object v2

    .line 110
    .local v2, helperAdapter:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    move-object v1, v2

    .local v1, arr$:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 111
    .local v0, adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v0           #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    :cond_0
    const-string v5, "COpenHelper"

    const-string v6, "onCreate X"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    .line 73
    const-string v9, "COpenHelper"

    const-string v10, "onOpen E"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/android/providers/contacts/COpenHelper;->obtainCustomOpenHelperAdapter()[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    move-result-object v4

    .line 79
    .local v4, helperAdapter:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    move-object v1, v4

    .local v1, arr$:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 80
    .local v0, adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    invoke-virtual {v0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, p1, v9}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getCustomDatabaseVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v8

    .line 81
    .local v8, oldVersion:I
    invoke-virtual {v0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getDatabaseVersion()I

    move-result v7

    .line 82
    .local v7, newVersion:I
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 83
    .local v3, googleVersion:I
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 84
    .local v2, googleNewVersion:I
    if-eq v8, v7, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 87
    :try_start_0
    invoke-virtual {v0, p1, v3, v2}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 88
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v9

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 94
    .end local v0           #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    .end local v2           #googleNewVersion:I
    .end local v3           #googleVersion:I
    .end local v7           #newVersion:I
    .end local v8           #oldVersion:I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    move-object v1, v4

    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 96
    .restart local v0       #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 99
    .end local v0           #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    :cond_2
    const-string v9, "COpenHelper"

    const-string v10, "onOpen X"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 119
    const-string v5, "COpenHelper"

    const-string v6, "onUpgrade E"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 121
    invoke-virtual {p0}, Lcom/android/providers/contacts/COpenHelper;->obtainCustomOpenHelperAdapter()[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    move-result-object v2

    .line 125
    .local v2, helperAdapter:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    move-object v1, v2

    .local v1, arr$:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 126
    .local v0, adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v0           #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    :cond_0
    const-string v5, "COpenHelper"

    const-string v6, "onUpgrade X"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public wipeData()V
    .locals 6

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->wipeData()V

    .line 134
    invoke-virtual {p0}, Lcom/android/providers/contacts/COpenHelper;->obtainCustomOpenHelperAdapter()[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    move-result-object v3

    .line 138
    .local v3, helperAdapter:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    invoke-virtual {p0}, Lcom/android/providers/contacts/COpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 140
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, v3

    .local v1, arr$:[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 141
    .local v0, adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->onWipeData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    .end local v0           #adapter:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    :cond_0
    return-void
.end method
