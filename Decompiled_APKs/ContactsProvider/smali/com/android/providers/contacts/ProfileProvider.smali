.class public Lcom/android/providers/contacts/ProfileProvider;
.super Lcom/android/providers/contacts/AbstractContactsProvider;
.source "ProfileProvider.java"


# static fields
.field private static final READ_PERMISSION:Ljava/lang/String; = "android.permission.READ_PROFILE"

.field private static final WRITE_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_PROFILE"


# instance fields
.field private final mDelegate:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    .line 43
    return-void
.end method

.method private useProfileDbForTransaction()V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->getCurrentTransaction()Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 117
    .local v1, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "profile"

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/providers/contacts/ContactsTransaction;->startTransactionForDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 119
    iget-object v2, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->substituteDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->enforceWritePermission()V

    .line 99
    invoke-direct {p0}, Lcom/android/providers/contacts/ProfileProvider;->useProfileDbForTransaction()V

    .line 100
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enforceReadPermission(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->isValidPreAuthorizedUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROFILE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public enforceWritePermission()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_PROFILE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected getTransactionHolder()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getTransactionHolder()Ljava/lang/ThreadLocal;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->enforceWritePermission()V

    .line 84
    invoke-direct {p0}, Lcom/android/providers/contacts/ProfileProvider;->useProfileDbForTransaction()V

    .line 85
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected notifyChange()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange()V

    .line 125
    return-void
.end method

.method protected notifyChange(Z)V
    .locals 1
    .parameter "syncToNetwork"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(Z)V

    .line 129
    return-void
.end method

.method public onBegin()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 137
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->onBegin()V

    .line 138
    return-void
.end method

.method public onCommit()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 142
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->onCommit()V

    .line 143
    return-void
.end method

.method public onRollback()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 148
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->onRollback()V

    .line 149
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p2, :cond_0

    const-string v0, "w"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->enforceWritePermission()V

    .line 107
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->substituteDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->openAssetFileLocal(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ProfileProvider;->enforceReadPermission(Landroid/net/Uri;)V

    .line 110
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->substituteDb(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ProfileProvider;->enforceReadPermission(Landroid/net/Uri;)V

    .line 77
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->substituteDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const-wide/16 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/providers/contacts/ProfileProvider;->enforceWritePermission()V

    .line 92
    invoke-direct {p0}, Lcom/android/providers/contacts/ProfileProvider;->useProfileDbForTransaction()V

    .line 93
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    .locals 1
    .parameter "transaction"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/providers/contacts/ProfileProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z

    move-result v0

    return v0
.end method
