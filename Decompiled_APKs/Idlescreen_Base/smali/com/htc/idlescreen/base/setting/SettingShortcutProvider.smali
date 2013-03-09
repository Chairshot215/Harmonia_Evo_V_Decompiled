.class public Lcom/htc/idlescreen/base/setting/SettingShortcutProvider;
.super Landroid/content/ContentProvider;
.source "SettingShortcutProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "shortcut.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "shortcut"

.field private static final Tag_Name:Ljava/lang/String; = "com.idlescreen.base.setting.SettingShortcutProvider"


# instance fields
.field private databasehelper:Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider;->databasehelper:Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "shortcut"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 60
    const/4 v1, 0x0

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v1, p0, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider;->databasehelper:Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 73
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "shortcut"

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    return-object v2
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider;->databasehelper:Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider;->databasehelper:Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 85
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 86
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "shortcut"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 87
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 91
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 89
    .end local v8           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 90
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const/4 v8, 0x0

    .line 91
    .restart local v8       #c:Landroid/database/Cursor;
    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider;->databasehelper:Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/setting/SettingShortcutProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "shortcut"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v1, 0x0

    return v1
.end method
