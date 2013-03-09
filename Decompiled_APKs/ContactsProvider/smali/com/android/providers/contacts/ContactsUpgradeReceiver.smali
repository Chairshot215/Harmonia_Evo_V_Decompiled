.class public Lcom/android/providers/contacts/ContactsUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactsUpgradeReceiver.java"


# static fields
.field static final PREF_DB_VERSION:Ljava/lang/String; = "db_version"

.field static final TAG:Ljava/lang/String; = "ContactsUpgradeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x271

    const/4 v10, 0x1

    .line 49
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 52
    .local v4, startTime:J
    const-string v7, "ContactsUpgradeReceiver"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 53
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v7, "db_version"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 56
    .local v1, prefVersion:I
    if-eq v1, v9, :cond_1

    .line 61
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "db_version"

    const/16 v9, 0x271

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    invoke-static {p1}, Lcom/android/providers/contacts/COpenHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/COpenHelper;

    move-result-object v0

    .line 72
    .local v0, helper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    const-string v7, "ContactsUpgradeReceiver"

    const-string v8, "Creating or opening contacts database"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    const v8, 0x7f05009a

    invoke-virtual {p1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/android/providers/contacts/COpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->close()V

    .line 83
    invoke-static {p1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v3

    .line 84
    .local v3, profileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;
    invoke-virtual {v3}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .end local v0           #helper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .end local v1           #prefVersion:I
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #profileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .end local v4           #startTime:J
    :cond_1
    :goto_1
    return-void

    .line 90
    :catch_0
    move-exception v6

    .line 93
    .local v6, t:Ljava/lang/Throwable;
    const-string v7, "ContactsUpgradeReceiver"

    const-string v8, "Error during upgrade attempt. Disabling receiver."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 77
    .end local v6           #t:Ljava/lang/Throwable;
    .restart local v0       #helper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .restart local v1       #prefVersion:I
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #startTime:J
    :catch_1
    move-exception v7

    goto :goto_0
.end method
