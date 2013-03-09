.class public Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
.super Ljava/lang/Object;
.source "GDataSyncStateCalendar.java"


# instance fields
.field public final feedData:Landroid/os/Bundle;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    .line 95
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    const-string v1, "firstSeen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .parameter "uri"
    .parameter "feedData"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    .line 100
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    .line 101
    return-void
.end method

.method public static create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 5
    .parameter "provider"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v2, values:Landroid/content/ContentValues;
    new-instance v0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>()V

    .line 198
    .local v0, syncState:Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    const-string v3, "data"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->toBytes(Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 199
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v3, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, uri:Landroid/net/Uri;
    new-instance v3, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-direct {v3, v1, v4}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-object v3
.end method

.method static fromBytes(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 5
    .parameter "uri"
    .parameter "syncStateData"

    .prologue
    const/4 v3, 0x0

    .line 124
    if-eqz p1, :cond_2

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    .local v0, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v0, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 127
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 129
    :try_start_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, -0x21524111

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 130
    new-instance v1, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    .end local v0           #parcel:Landroid/os/Parcel;
    :cond_0
    :goto_0
    return-object v1

    .line 136
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 132
    :catch_0
    move-exception v2

    .line 136
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    .end local v0           #parcel:Landroid/os/Parcel;
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->migratePreFroyoSyncState(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v1

    .line 140
    .local v1, syncState:Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    if-nez v1, :cond_0

    .line 143
    const-string v2, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting sync state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v1, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    .end local v1           #syncState:Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 3
    .parameter "provider"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    sget-object v1, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Landroid/provider/SyncStateContract$Helpers;->getWithUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)Landroid/util/Pair;

    move-result-object v0

    .line 210
    .local v0, syncStateUriAndData:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/net/Uri;[B>;"
    if-nez v0, :cond_0

    .line 211
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v2, v1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->fromBytes(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v1

    goto :goto_0
.end method

.method private static migratePreFroyoSyncState(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 14
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v7

    .line 153
    .local v7, oldSyncState:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    if-nez v7, :cond_0

    .line 154
    const/4 v11, 0x0

    .line 179
    :goto_0
    return-object v11

    .line 156
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v1, feedData:Landroid/os/Bundle;
    iget-object v11, v7, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, feed:Ljava/lang/String;
    iget-object v11, v7, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 160
    .local v6, oldFeedData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v2, feedSyncState:Landroid/os/Bundle;
    iget-wide v4, v6, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    .line 162
    .local v4, lastUpdatedTime:J
    iget-wide v9, v6, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 164
    .local v9, windowEnd:J
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-lez v11, :cond_1

    .line 166
    const-string v11, "do_incremental_sync"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    new-instance v8, Landroid/text/format/Time;

    const-string v11, "UTC"

    invoke-direct {v8, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 168
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 169
    const-string v11, "feed_updated_time"

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v8           #time:Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
    const-string v11, "CalendarSyncAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "migrated sync state from old release: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    :cond_1
    const-string v11, "do_incremental_sync"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 179
    .end local v0           #feed:Ljava/lang/String;
    .end local v2           #feedSyncState:Landroid/os/Bundle;
    .end local v4           #lastUpdatedTime:J
    .end local v6           #oldFeedData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v9           #windowEnd:J
    :cond_2
    new-instance v11, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    invoke-direct {v11, p0, v1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static toBytes(Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;)[B
    .locals 2
    .parameter "syncState"

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 185
    .local v0, parcel:Landroid/os/Parcel;
    const v1, -0x21524111

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    return-object v1

    .line 190
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method


# virtual methods
.method public isFirstSeen()Z
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    const-string v1, "firstSeen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public newUpdateOperation()Landroid/content/ContentProviderOperation;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->toBytes(Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/SyncStateContract$Helpers;->newUpdateOperation(Landroid/net/Uri;[B)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public setFirstSeen(Z)V
    .locals 2
    .parameter "firstSeen"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    const-string v1, "firstSeen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "GDataSyncData:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 108
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 112
    .local v3, value:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    .line 113
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public updateInProvider(Landroid/content/ContentProviderClient;)V
    .locals 2
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->toBytes(Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/provider/SyncStateContract$Helpers;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;[B)V

    .line 220
    return-void
.end method
