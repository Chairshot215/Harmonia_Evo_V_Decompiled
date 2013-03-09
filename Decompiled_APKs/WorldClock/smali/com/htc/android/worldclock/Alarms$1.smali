.class final Lcom/htc/android/worldclock/Alarms$1;
.super Ljava/lang/Object;
.source "Alarms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Alarms;->writeOffAlarmData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 946
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 949
    invoke-static {}, Lcom/htc/android/worldclock/Alarms;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/worldclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 950
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 951
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 955
    :cond_0
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    .line 956
    .local v4, hour:I
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v6, v7

    .line 958
    .local v6, minute:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 959
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 961
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 962
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 963
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 964
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 966
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    const/4 v7, 0x5

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 971
    .end local v0           #c:Ljava/util/Calendar;
    .end local v4           #hour:I
    .end local v6           #minute:I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 973
    new-instance v3, Lcom/htc/android/worldclock/DmdCmd;

    invoke-direct {v3}, Lcom/htc/android/worldclock/DmdCmd;-><init>()V

    .line 974
    .local v3, dmdCmd:Lcom/htc/android/worldclock/DmdCmd;
    invoke-virtual {v3}, Lcom/htc/android/worldclock/DmdCmd;->Conn()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 975
    new-array v7, v11, [Ljava/lang/Long;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    .line 976
    .local v2, data:[Ljava/lang/Long;
    invoke-static {v2}, Lcom/htc/android/worldclock/Alarms;->convertLongToByte([Ljava/lang/Long;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/htc/android/worldclock/DmdCmd;->writeData([B)Ljava/lang/String;

    .line 977
    invoke-virtual {v3}, Lcom/htc/android/worldclock/DmdCmd;->DisConn()V

    .line 984
    .end local v2           #data:[Ljava/lang/Long;
    .end local v3           #dmdCmd:Lcom/htc/android/worldclock/DmdCmd;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :goto_0
    return-void

    .line 982
    :cond_3
    const-string v7, "writeOffAlarmData, thread:run(), cursor = null"

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
