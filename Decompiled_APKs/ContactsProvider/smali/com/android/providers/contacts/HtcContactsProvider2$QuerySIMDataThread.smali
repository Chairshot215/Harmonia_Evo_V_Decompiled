.class Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;
.super Ljava/lang/Thread;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuerySIMDataThread"
.end annotation


# static fields
.field private static final MAX_TRY:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

.field private tryCount:I

.field private tryLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    .locals 1
    .parameter

    .prologue
    .line 9716
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 9717
    const-string v0, "QuerySIMDataThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 9713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryCount:I

    .line 9714
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryLock:Ljava/lang/Object;

    .line 9718
    return-void
.end method

.method private cleasrSpeedDialList()V
    .locals 11

    .prologue
    .line 9862
    :try_start_0
    invoke-static {}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$900()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9863
    sget-object v0, Lcom/htc/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "clearlist"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 9867
    .local v1, CONTENT_URI_CLEARLIST:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 9868
    .local v2, PROJECTION_MAP:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/HtcContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 9871
    .local v7, cur_clearList:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 9872
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9874
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 9875
    .local v9, index:Ljava/lang/Long;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9877
    .local v6, WHERE:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 9878
    .local v10, updateValues:Landroid/content/ContentValues;
    const-string v0, "raw_contact_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 9880
    const-string v0, "data_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 9882
    const-string v0, "recordNumber"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 9884
    const-string v0, "recordLocation"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 9886
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v10, v6, v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9888
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9890
    .end local v6           #WHERE:Ljava/lang/String;
    .end local v9           #index:Ljava/lang/Long;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9896
    .end local v1           #CONTENT_URI_CLEARLIST:Landroid/net/Uri;
    .end local v2           #PROJECTION_MAP:[Ljava/lang/String;
    .end local v7           #cur_clearList:Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-void

    .line 9893
    :catch_0
    move-exception v8

    .line 9894
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "HtcContactsProvider2"

    const-string v3, "clear Speed dial list Failed:"

    invoke-static {v0, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private copySimIntoPeople(Landroid/database/Cursor;)V
    .locals 3
    .parameter "phonebookCursor"

    .prologue
    .line 9907
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mSimContactsCount:I
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1000(Lcom/android/providers/contacts/HtcContactsProvider2;)I

    move-result v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 9911
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->getTelephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$200(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 9917
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9918
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->insertSimPhonebook(Landroid/database/Cursor;)V

    .line 9936
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 9922
    .restart local v0       #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 9923
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->insertSimPhonebook(Landroid/database/Cursor;)V

    goto :goto_0

    .line 9925
    :cond_2
    const-string v1, "HtcContactsProvider2"

    const-string v2, "querySIMDataThread start but sim is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9927
    const-wide/16 v1, 0x2710

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->pause(J)V

    goto :goto_0
.end method

.method private insertSimPhonebook(Landroid/database/Cursor;)V
    .locals 10
    .parameter "phonebookCursor"

    .prologue
    .line 9941
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v2, v2, Lcom/android/providers/contacts/HtcContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 9943
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v1, v1, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 9944
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 10024
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-void

    .line 9948
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    if-eqz v0, :cond_0

    .line 9951
    if-eqz p1, :cond_5

    .line 9954
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 9961
    .local v7, count:I
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->getTelephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$200(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 9963
    .local v6, SimSerialNumber:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9964
    .local v3, blockedRecordNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9966
    .local v4, vipRecordNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v1, :cond_2

    .line 9968
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->queryBlockedSimContactRecordNumbers(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v1, v0, v6}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1100(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 9972
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/htc/provider/HtcContactsContract;->enableManageCalls:Z

    if-eqz v1, :cond_3

    .line 9974
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->queryBlockedSimContactRecordNumbers(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v1, v0, v6}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1100(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 9976
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->queryVIPSimContactRecordNumbers(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v1, v0, v6}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1200(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 9983
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "SIM"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils;->insertIccIntoContactsDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 9988
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v2, 0x1

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mIsSIMLoadedOnce:Z
    invoke-static {v1, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$302(Lcom/android/providers/contacts/HtcContactsProvider2;Z)Z

    .line 9989
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$902(Z)Z

    .line 9991
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mSimContactsCount:I
    invoke-static {v1, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1002(Lcom/android/providers/contacts/HtcContactsProvider2;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9995
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.htccontacts"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 10001
    .local v9, prefs:Landroid/content/SharedPreferences;
    if-eqz v9, :cond_4

    const-string v1, "pref_key_sync_sim"

    const/4 v2, 0x1

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10004
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1302(Z)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 10018
    .end local v3           #blockedRecordNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #vipRecordNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #SimSerialNumber:Ljava/lang/String;
    .end local v7           #count:I
    .end local v9           #prefs:Landroid/content/SharedPreferences;
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->broadcastSimContactsReadyIntent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 10023
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_2
    const-wide/16 v1, 0x2710

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->pause(J)V

    goto/16 :goto_0

    .line 10006
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #blockedRecordNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #vipRecordNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #SimSerialNumber:Ljava/lang/String;
    .restart local v7       #count:I
    .restart local v9       #prefs:Landroid/content/SharedPreferences;
    :cond_4
    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1302(Z)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 10008
    .end local v9           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 10009
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v1, "HtcContactsProvider2"

    const-string v2, "getDefaultSharedPreferences: pref_key_sync_sim"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10012
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1302(Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 10019
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #blockedRecordNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #vipRecordNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #SimSerialNumber:Ljava/lang/String;
    .end local v7           #count:I
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v8

    .line 10020
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "HtcContactsProvider2"

    const-string v2, "insertSimPhonebook"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 10015
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :try_start_5
    const-string v1, "HtcContactsProvider2"

    const-string v2, "insertSimPhonebook Failed sssss"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method private loadAndCopySimContact()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 9762
    invoke-static {v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$702(I)I

    .line 9764
    const/4 v9, 0x0

    .line 9765
    .local v9, phonebookCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 9774
    .local v8, hasException:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 9776
    .local v6, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v3

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->simProvider:Landroid/content/IContentProvider;
    invoke-static {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$802(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;

    .line 9779
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->simProvider:Landroid/content/IContentProvider;
    invoke-static {v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$800(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/IccContract$IccPhonebook;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 9795
    .end local v6           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/contacts/ContactsProvider2;->sIsTryLoadSIM:Z

    .line 9797
    if-eqz v9, :cond_3

    .line 9798
    if-nez v8, :cond_1

    .line 9799
    invoke-direct {p0, v9}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->copySimIntoPeople(Landroid/database/Cursor;)V

    .line 9802
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9803
    invoke-direct {p0}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->cleasrSpeedDialList()V

    .line 9808
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9809
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 9812
    :cond_2
    if-eqz v8, :cond_3

    .line 9813
    const-wide/16 v2, 0x2710

    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->pause(J)V

    .line 9818
    :cond_3
    sget-boolean v2, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v2, :cond_4

    .line 9819
    const/4 v10, 0x0

    .line 9821
    .local v10, sdnCursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->simProvider:Landroid/content/IContentProvider;
    invoke-static {v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$800(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/content/IContentProvider;

    move-result-object v0

    const-string v2, "content://icc/htc_sdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccContract$IccPhonebook;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 9833
    .end local v10           #sdnCursor:Landroid/database/Cursor;
    .local v1, sdnCursor:Landroid/database/Cursor;
    :goto_1
    if-eqz v1, :cond_8

    .line 9834
    if-nez v8, :cond_8

    .line 9835
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v3, v3, Lcom/android/providers/contacts/HtcContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 9837
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v2, v2, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 9838
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_7

    .line 9856
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #sdnCursor:Landroid/database/Cursor;
    :cond_4
    :goto_2
    return-void

    .line 9781
    :catch_0
    move-exception v7

    .line 9782
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HtcContactsProvider2"

    const-string v3, "querySIMDataThread Failed:"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9784
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 9785
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 9787
    :cond_5
    const/4 v8, 0x1

    .line 9789
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9790
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v3, 0x0

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mIsSIMLoadedOnce:Z
    invoke-static {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$302(Lcom/android/providers/contacts/HtcContactsProvider2;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9792
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 9824
    .restart local v10       #sdnCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v7

    .line 9825
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "HtcContactsProvider2"

    const-string v3, "querySIM SDN Thread Failed:"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9826
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 9827
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9829
    :cond_6
    const/4 v8, 0x1

    move-object v1, v10

    .line 9831
    .end local v10           #sdnCursor:Landroid/database/Cursor;
    .restart local v1       #sdnCursor:Landroid/database/Cursor;
    goto :goto_1

    .line 9830
    .end local v1           #sdnCursor:Landroid/database/Cursor;
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #sdnCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    throw v2

    .line 9841
    .end local v10           #sdnCursor:Landroid/database/Cursor;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #sdnCursor:Landroid/database/Cursor;
    :cond_7
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "SIM_SDN"

    move-object v3, v11

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils;->insertIccIntoContactsDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 9844
    invoke-static {}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$708()I

    .line 9847
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 9848
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9851
    :cond_9
    invoke-static {}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$700()I

    move-result v2

    if-eqz v2, :cond_4

    .line 9852
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->broadcastSimContactsReadyIntent()V

    goto :goto_2
.end method

.method private pause(J)V
    .locals 3
    .parameter "mSeconds"

    .prologue
    .line 10028
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10032
    :goto_0
    return-void

    .line 10029
    :catch_0
    move-exception v0

    .line 10030
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "HtcContactsProvider2"

    const-string v2, "insertSimPhonebook:pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method decreaseTryCount()V
    .locals 2

    .prologue
    .line 9727
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9728
    :try_start_0
    iget v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryCount:I

    if-lez v0, :cond_0

    .line 9729
    iget v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryCount:I

    .line 9731
    :cond_0
    monitor-exit v1

    .line 9732
    return-void

    .line 9731
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTryCount()I
    .locals 2

    .prologue
    .line 9721
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9722
    :try_start_0
    iget v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryCount:I

    monitor-exit v1

    return v0

    .line 9723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method increaseTryCount()V
    .locals 2

    .prologue
    .line 9735
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9736
    :try_start_0
    iget v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryCount:I

    .line 9737
    monitor-exit v1

    .line 9738
    return-void

    .line 9737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resetTryCount()V
    .locals 2

    .prologue
    .line 9741
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9742
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->tryCount:I

    .line 9743
    monitor-exit v1

    .line 9744
    return-void

    .line 9743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->resetTryCount()V

    .line 9749
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->getTryCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 9750
    invoke-direct {p0}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->loadAndCopySimContact()V

    .line 9751
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->increaseTryCount()V

    goto :goto_0

    .line 9754
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->querySimLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$500(Lcom/android/providers/contacts/HtcContactsProvider2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 9755
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v2, 0x0

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->queryThread:Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;
    invoke-static {v0, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$602(Lcom/android/providers/contacts/HtcContactsProvider2;Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;)Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;

    .line 9756
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9757
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->resetTryCount()V

    .line 9758
    return-void

    .line 9756
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
