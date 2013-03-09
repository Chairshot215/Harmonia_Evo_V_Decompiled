.class public Lcom/android/providers/contacts/ProfileDatabaseHelper;
.super Lcom/android/providers/contacts/COpenHelper;
.source "ProfileDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "profile.db"

.field private static final SEQUENCE_NAME:Ljava/lang/String; = "name"

.field private static final SEQUENCE_SEQ:Ljava/lang/String; = "seq"

.field private static final SEQUENCE_TABLE:Ljava/lang/String; = "sqlite_sequence"

.field private static final TAG:Ljava/lang/String; = "ProfileDatabaseHelper"

.field private static sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "databaseName"
    .parameter "optimizationEnabled"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/COpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .locals 4
    .parameter "context"

    .prologue
    .line 55
    const-class v1, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    const-string v2, "profile.db"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/android/providers/contacts/ProfileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    .line 58
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-static {p0, v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->attachCustomerHelper(Landroid/content/Context;Lcom/android/providers/contacts/COpenHelper;)V

    .line 61
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ProfileDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected dbForProfile()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getOpenHelperAdapterForName(Ljava/lang/String;)Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/providers/contacts/COpenHelper;->getOpenHelperAdapterForName(Ljava/lang/String;)Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 71
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;->SEQUENCE_TABLES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 72
    .local v3, table:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v5, "seq"

    const-wide v6, 0x7fffffff80000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v5, "sqlite_sequence"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v3           #table:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public bridge synthetic obtainCustomOpenHelperAdapter()[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/providers/contacts/COpenHelper;->obtainCustomOpenHelperAdapter()[Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/providers/contacts/COpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/providers/contacts/COpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/COpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public bridge synthetic wipeData()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/providers/contacts/COpenHelper;->wipeData()V

    return-void
.end method
