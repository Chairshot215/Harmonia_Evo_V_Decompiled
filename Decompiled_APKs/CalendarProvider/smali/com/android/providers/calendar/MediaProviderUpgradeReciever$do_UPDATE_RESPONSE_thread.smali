.class Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;
.super Ljava/lang/Thread;
.source "MediaProviderUpgradeReciever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/MediaProviderUpgradeReciever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "do_UPDATE_RESPONSE_thread"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/providers/calendar/MediaProviderUpgradeReciever;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/MediaProviderUpgradeReciever;Landroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "cr"
    .parameter "intent"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;->this$0:Lcom/android/providers/calendar/MediaProviderUpgradeReciever;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;->mContentResolver:Landroid/content/ContentResolver;

    .line 161
    iput-object p3, p0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;->mIntent:Landroid/content/Intent;

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 166
    .local v14, media_type:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;->mIntent:Landroid/content/Intent;

    const-string v2, "media_ids_res"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 167
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v1, "MediaProviderUpgradeReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media_type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz v13, :cond_3

    .line 169
    const-string v1, "MediaProviderUpgradeReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media_ids_req: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 175
    .local v3, projectArys:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "alerts_ringtone IS NOT NULL  and alerts_ringtone like \'content://media%\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 176
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 177
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 178
    .local v15, nCnt:I
    const-string v1, "MediaProviderUpgradeReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total have "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " calendars in update_response_thread"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-lez v15, :cond_2

    .line 180
    const/16 v16, 0x0

    .line 183
    .local v16, nIndex:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v17, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 191
    .local v18, uri:Landroid/net/Uri;
    const-string v1, "MediaProviderUpgradeReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nIndex:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-nez v18, :cond_4

    .line 194
    add-int/lit8 v16, v16, 0x1

    .line 205
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v16

    if-lt v0, v1, :cond_0

    .line 207
    .end local v18           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 209
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPDATE_RESPONSE_thread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.calendar"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    .end local v16           #nIndex:I
    .end local v17           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 224
    .end local v3           #projectArys:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v15           #nCnt:I
    :cond_3
    return-void

    .line 197
    .restart local v3       #projectArys:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v15       #nCnt:I
    .restart local v16       #nIndex:I
    .restart local v17       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v11, cv:Landroid/content/ContentValues;
    const-string v1, "alerts_ringtone"

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 202
    .local v9, calendar_id:J
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 203
    .local v8, calendarUri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 211
    .end local v8           #calendarUri:Landroid/net/Uri;
    .end local v9           #calendar_id:J
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v18           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 212
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 214
    .local v12, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method
