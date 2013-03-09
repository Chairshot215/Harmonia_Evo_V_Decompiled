.class public Lcom/android/providers/calendar/HtcFilterImpl_eas;
.super Lcom/android/providers/calendar/AbsHtcFilter;
.source "HtcFilterImpl_eas.java"


# static fields
.field private static final BASE:I = 0x258

.field private static final EAS_CLEAN_TRACK:I = 0x25e

.field private static final EAS_EVENTS:I = 0x259

.field private static final EAS_SYNC_INFO:I = 0x25d

.field private static final EAS_TRACKING:I = 0x25a

.field private static final EAS_TRACKING_ID:I = 0x25b

.field private static final EVENTS_EAS_SYNC:I = 0x25c

.field private static final TAG:Ljava/lang/String; = "HtcFilterImpl_eas"

.field private static sEASSyncInfoTable:Ljava/lang/String;

.field private static final sEasTrackingProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTrackingTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-string v0, "easTracking"

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    .line 32
    const-string v0, "easSyncInfo"

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEASSyncInfoTable:Ljava/lang/String;

    .line 37
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEasTrackingProjectionMap:Ljava/util/HashMap;

    .line 39
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEasTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEasTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "serverId"

    const-string v2, "serverId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEasTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_add"

    const-string v2, "_add"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEasTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_modify"

    const-string v2, "_modify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEasTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_delete"

    const-string v2, "_delete"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEasTrackingProjectionMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/providers/calendar/AbsHtcFilter;-><init>()V

    .line 51
    const-string v0, "HtcFilterImpl_eas"

    const-string v1, "Init...HtcFilterImpl_eas"

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/providers/calendar/HtcFilterImpl_eas;->initMatcher()V

    .line 53
    return-void
.end method


# virtual methods
.method public handle_Delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 267
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 287
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :pswitch_0
    iget-object v2, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v2, v2, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 270
    .local v1, result:I
    iget-object v2, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    .line 281
    .end local v1           #result:I
    :goto_0
    return v1

    .line 274
    :pswitch_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 278
    :goto_1
    :pswitch_2
    iget-object v2, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v2, v2, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 274
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 281
    :pswitch_3
    iget-object v2, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v2, v2, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEASSyncInfoTable:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 285
    :pswitch_4
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete into that URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handle_Insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 16
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 106
    .local v11, match:I
    packed-switch v11, :pswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v5, ""

    invoke-direct {v1, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :pswitch_0
    if-nez p3, :cond_0

    .line 109
    const-string v1, "dirty"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "dtstart"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "DTSTART field missing from event"

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 116
    .local v2, updatedEasValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    .line 119
    if-nez v2, :cond_1

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "Could not insert event."

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_1
    const-string v1, "iCalGUID"

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    const-string v1, "iCalGUID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, v2, v2}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    const-string v1, "HtcFilterImpl_eas"

    const/4 v5, 0x5

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    const-string v1, "HtcFilterImpl_eas"

    const-string v5, "insertInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 137
    const/4 v14, 0x0

    .line 138
    .local v14, uri1:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 140
    .local v12, owner1:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsInsert(Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 141
    .local v3, rowId1:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/events/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 142
    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v6, v6, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    const-string v1, "selfAttendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    const-string v1, "selfAttendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 150
    .local v13, status:I
    if-nez v12, :cond_4

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    const-string v5, "calendar_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v12

    .line 153
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, v3, v4, v13, v12}, Lcom/android/providers/calendar/CalendarProvider2;->createAttendeeEntry(JILjava/lang/String;)V

    .line 155
    .end local v13           #status:I
    :cond_5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v7, cv:Landroid/content/ContentValues;
    const-string v1, "_syncing"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v7, v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    .line 160
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 176
    .end local v2           #updatedEasValues:Landroid/content/ContentValues;
    .end local v3           #rowId1:J
    .end local v12           #owner1:Ljava/lang/String;
    .end local v14           #uri1:Landroid/net/Uri;
    :goto_0
    return-object v14

    .line 161
    .restart local v2       #updatedEasValues:Landroid/content/ContentValues;
    .restart local v12       #owner1:Ljava/lang/String;
    .restart local v14       #uri1:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 162
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "HtcFilterImpl_eas"

    const-string v5, "error"

    invoke-static {v1, v5, v8}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v5, v5, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 171
    .end local v2           #updatedEasValues:Landroid/content/ContentValues;
    .end local v12           #owner1:Ljava/lang/String;
    .end local v14           #uri1:Landroid/net/Uri;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->easSyncInfoInsert(Landroid/content/ContentValues;)J

    move-result-wide v9

    .line 173
    .local v9, id:J
    const-wide/16 v5, 0x0

    cmp-long v1, v9, v5

    if-gez v1, :cond_7

    .line 174
    const/4 v14, 0x0

    goto :goto_0

    .line 176
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto :goto_0

    .line 182
    .end local v9           #id:J
    :pswitch_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert that URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handle_Query(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupBy"
    .parameter "limit"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 77
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :pswitch_1
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEasTrackingProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_0

    .line 89
    :pswitch_2
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEASSyncInfoTable:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot query into that URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handle_Update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 15
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 193
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 195
    .local v7, match:I
    packed-switch v7, :pswitch_data_0

    .line 257
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    const-string v12, ""

    invoke-direct {v11, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 197
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_id = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .local v10, where1:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v12, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v11, v12, v0, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 250
    .end local v10           #where1:Ljava/lang/StringBuilder;
    :goto_0
    return v8

    .line 202
    :pswitch_1
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v12, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v11, v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v12, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEASSyncInfoTable:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v11, v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 208
    :pswitch_3
    const/4 v8, -0x1

    .line 209
    .local v8, ret:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") OR _syncing=1)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, trackingWhere:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 211
    const/4 v4, 0x0

    .line 213
    .local v4, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 215
    .local v3, changeIdList:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT _id FROM "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " WHERE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 217
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 219
    :cond_0
    if-nez v3, :cond_4

    .line 220
    const/4 v11, 0x0

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 226
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v5, cv:Landroid/content/ContentValues;
    const-string v11, "_sync_dirty"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "Events"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id IN ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v5, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v12, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    const-string v13, "_delete = 1"

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #cv:Landroid/content/ContentValues;
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .restart local v5       #cv:Landroid/content/ContentValues;
    const-string v11, "_add"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v11, "_modify"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v11, "_syncing"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v12, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sTrackingTable:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v5, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v12, Lcom/android/providers/calendar/HtcFilterImpl_eas;->sEASSyncInfoTable:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v11, v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 238
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    if-eqz v4, :cond_3

    .line 243
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_2

    .line 244
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_2
    const/4 v4, 0x0

    .line 248
    :cond_3
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 222
    .end local v5           #cv:Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1

    .line 239
    :catch_0
    move-exception v6

    .line 240
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    if-eqz v4, :cond_6

    .line 243
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_5

    .line 244
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_5
    const/4 v4, 0x0

    .line 248
    :cond_6
    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v11, v11, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 242
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v4, :cond_8

    .line 243
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_7

    .line 244
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_7
    const/4 v4, 0x0

    .line 248
    :cond_8
    iget-object v12, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v12, v12, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11

    .line 255
    .end local v3           #changeIdList:Ljava/lang/String;
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v8           #ret:I
    .end local v9           #trackingWhere:Ljava/lang/String;
    :pswitch_4
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot update into that URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 195
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method handle_getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 294
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot getType that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initMatcher()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "eas_events"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "eas_tracking"

    const/16 v3, 0x25a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "eas_tracking/#"

    const/16 v3, 0x25b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/eas_sync"

    const/16 v3, 0x25c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "easSyncInfo"

    const/16 v3, 0x25d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "easSyncInfo/cleanTrack"

    const/16 v3, 0x25e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method
