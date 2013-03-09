.class public final Lcom/futuredial/pim/Calendar$CalendarAlerts;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/futuredial/pim/BaseColumns;
.implements Lcom/futuredial/pim/Calendar$CalendarAlertsColumns;
.implements Lcom/futuredial/pim/Calendar$EventsColumns;
.implements Lcom/futuredial/pim/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarAlerts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BY_INSTANCE:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "CalendarAlerts"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 954
    invoke-static {v2}, Lcom/futuredial/pim/FDUri;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "calendar_alerts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 963
    invoke-static {v2}, Lcom/futuredial/pim/FDUri;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "calendar_alerts/by_instance"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Calendar$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .locals 6
    .parameter "cr"
    .parameter "eventId"
    .parameter "begin"
    .parameter "alarmTime"

    .prologue
    .line 1086
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "begin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "alarmTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "alarmTime"

    aput-object v5, v2, v4

    .line 1092
    .local v2, projection:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/futuredial/pim/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1093
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1095
    .local v1, found:Z
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_0

    .line 1096
    const/4 v1, 0x1

    .line 1099
    :cond_0
    if-eqz v0, :cond_1

    .line 1100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1103
    :cond_1
    return v1

    .line 1099
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 1100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public static final findNextAlarmTime(Landroid/content/ContentResolver;J)J
    .locals 8
    .parameter "cr"
    .parameter "millis"

    .prologue
    const/4 v7, 0x0

    .line 997
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarmTime>="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1000
    .local v4, selection:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "alarmTime"

    aput-object v5, v3, v7

    .line 1001
    .local v3, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/futuredial/pim/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1002
    .local v2, cursor:Landroid/database/Cursor;
    const-wide/16 v0, -0x1

    .line 1004
    .local v0, alarmTime:J
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1005
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1008
    :cond_0
    if-eqz v2, :cond_1

    .line 1009
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1012
    :cond_1
    return-wide v0

    .line 1008
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 1009
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method public static final insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 967
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 968
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 969
    const-string v3, "begin"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 970
    const-string v3, "end"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 971
    const-string v3, "alarmTime"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 973
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 974
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 975
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    const-string v3, "minutes"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    sget-object v3, Lcom/futuredial/pim/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 983
    sget-object v1, Lcom/futuredial/pim/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "alarmTime ASC,begin ASC,title ASC"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 25
    .parameter "cr"
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1030
    .local v16, now:J
    const-wide/32 v22, 0x5265c00

    sub-long v6, v16, v22

    .line 1031
    .local v6, ancient:J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "state=0 AND alarmTime<"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " AND "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "alarmTime"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ">"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " AND "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "end"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ">="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1035
    .local v19, selection:Ljava/lang/String;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    const-string v23, "_id"

    aput-object v23, v18, v22

    const/16 v22, 0x1

    const-string v23, "begin"

    aput-object v23, v18, v22

    const/16 v22, 0x2

    const-string v23, "end"

    aput-object v23, v18, v22

    const/16 v22, 0x3

    const-string v23, "alarmTime"

    aput-object v23, v18, v22

    .line 1041
    .local v18, projection:[Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/futuredial/pim/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1042
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1045
    :cond_0
    const-string v22, "Calendar"

    const/16 v23, 0x3

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1046
    const-string v22, "Calendar"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "missed alarms found: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1051
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1052
    .local v13, id:J
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1053
    .local v8, begin:J
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1054
    .local v11, end:J
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1055
    .local v4, alarmTime:J
    sget-object v22, Lcom/futuredial/pim/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 1056
    .local v21, uri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v22, "android.intent.action.EVENT_REMINDER"

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1057
    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1058
    const-string v22, "beginTime"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1059
    const-string v22, "endTime"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1060
    const/16 v22, 0x0

    const/high16 v23, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 1062
    .local v20, sender:Landroid/app/PendingIntent;
    const-string v22, "Calendar"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "rescheduling missed alarm, id: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " begin: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " end: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " alarmTime: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1067
    .end local v4           #alarmTime:J
    .end local v8           #begin:J
    .end local v11           #end:J
    .end local v13           #id:J
    .end local v15           #intent:Landroid/content/Intent;
    .end local v20           #sender:Landroid/app/PendingIntent;
    .end local v21           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v22

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v22

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
