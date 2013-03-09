.class public Lcom/android/providers/calendar/HtcFilterImpl_pcsc;
.super Lcom/android/providers/calendar/AbsHtcFilter;
.source "HtcFilterImpl_pcsc.java"


# static fields
.field private static final BASE:I = 0x2bc

.field private static final PCSC_SYNC_INFO:I = 0x2bd

.field private static final PCSC_TRACKING:I = 0x2bc

.field private static final TAG:Ljava/lang/String; = "HtcFilterImpl_pcsc"

.field protected static pcscSyncInfoTable:Ljava/lang/String;

.field private static final pcscTrackingProjectionMap:Ljava/util/HashMap;
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

.field protected static pcscTrackingTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "pcscTracking"

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingTable:Ljava/lang/String;

    .line 22
    const-string v0, "pcscSyncInfo"

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscSyncInfoTable:Ljava/lang/String;

    .line 26
    invoke-static {}, Landroid/app/SyncConfig;->isPCSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingProjectionMap:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_guid"

    const-string v2, "_guid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_add"

    const-string v2, "_add"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_modify"

    const-string v2, "_modify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingProjectionMap:Ljava/util/HashMap;

    const-string v1, "_delete"

    const-string v2, "_delete"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingProjectionMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/providers/calendar/AbsHtcFilter;-><init>()V

    .line 40
    const-string v0, "HtcFilterImpl_pcsc"

    const-string v1, "Init...HtcFilterImpl_pcsc"

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->initMatcher()V

    .line 42
    return-void
.end method


# virtual methods
.method public handle_Delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 112
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :pswitch_0
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingTable:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 117
    :pswitch_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete into that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handle_Insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 80
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot insert into that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_0
        :pswitch_0
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
    .line 60
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 61
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 71
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

    .line 63
    :pswitch_0
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscSyncInfoTable:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_1
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingTable:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handle_Update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 96
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :pswitch_0
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscSyncInfoTable:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 100
    :goto_0
    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;->pcscTrackingTable:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method handle_getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 126
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot getType that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initMatcher()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "pcsc_tracking"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "pcscSyncInfo"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method
