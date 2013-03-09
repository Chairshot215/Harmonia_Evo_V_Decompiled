.class Lcom/android/providers/telephony/TelephonyProvider$3;
.super Ljava/lang/Thread;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/TelephonyProvider;->createCarriersCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$3;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1904
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$3;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    #calls: Lcom/android/providers/telephony/TelephonyProvider;->getOperatorNumeric()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$800(Lcom/android/providers/telephony/TelephonyProvider;)Ljava/lang/String;

    move-result-object v13

    .line 1905
    .local v13, numeric:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' OR numeric = \'00000\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1910
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$3;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    #getter for: Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$900(Lcom/android/providers/telephony/TelephonyProvider;)Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1911
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "carriers"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1912
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1913
    const-string v1, "carriers_cache"

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1914
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v11

    .line 1915
    .local v11, length:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1916
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1917
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1918
    .local v12, map:Landroid/content/ContentValues;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v11, :cond_2

    .line 1919
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1921
    :cond_2
    const-string v1, "carriers_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1922
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1928
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v11           #length:I
    .end local v12           #map:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 1929
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "TelephonyProvider"

    const-string v2, "Got exception while creating APN cache"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1924
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #length:I
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1925
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$302(Z)Z

    .line 1926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create carriers cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$400(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
