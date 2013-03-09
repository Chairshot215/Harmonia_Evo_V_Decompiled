.class public Lcom/android/providers/contacts/ContactDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "ContactDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "HTCContactDatabaseErrorHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "dbObj"

    .prologue
    .line 21
    const-string v1, "HTCContactDatabaseErrorHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Corruption reported by sqlite on database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    :cond_0
    :goto_0
    const-string v1, "HTCContactDatabaseErrorHandler"

    const-string v3, "Contacts2.db Corrupt Exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CHECK_CONTACT_DB_CORRUPT"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 39
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 41
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :cond_1
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v11

    .line 45
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "HTCContactDatabaseErrorHandler"

    const-string v3, "Contacts2.db Corrupt Exception but can not find activity manager to broadcast intent"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 34
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    move-object v12, v1

    const-string v1, "HTCContactDatabaseErrorHandler"

    const-string v3, "Contacts2.db Corrupt Exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CHECK_CONTACT_DB_CORRUPT"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 39
    .restart local v0       #am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_2

    .line 41
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_2
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    :cond_2
    :goto_2
    throw v12

    .line 43
    :catch_1
    move-exception v11

    .line 45
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v1, "HTCContactDatabaseErrorHandler"

    const-string v3, "Contacts2.db Corrupt Exception but can not find activity manager to broadcast intent"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 30
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_0
.end method
