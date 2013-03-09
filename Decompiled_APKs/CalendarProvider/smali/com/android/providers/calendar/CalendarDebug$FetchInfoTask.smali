.class Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;
.super Landroid/os/AsyncTask;
.source "CalendarDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarDebug;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarDebug;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarDebug;Lcom/android/providers/calendar/CalendarDebug$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;-><init>(Lcom/android/providers/calendar/CalendarDebug;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 22
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v12, 0x0

    .line 82
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v20, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/providers/calendar/CalendarDebug;->access$100(Lcom/android/providers/calendar/CalendarDebug;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/providers/calendar/CalendarDebug;->access$000()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "calendar_displayName"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 88
    if-nez v12, :cond_3

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v3}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/providers/calendar/CalendarDebug;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    if-eqz v12, :cond_1

    .line 140
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v3}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v3

    const v4, 0x7f05000a

    invoke-virtual {v3, v4}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/providers/calendar/CalendarDebug;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    return-object v20

    .line 91
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 94
    .local v19, id:I
    const/16 v17, -0x1

    .line 95
    .local v17, eventCount:I
    const/4 v13, -0x1

    .line 96
    .local v13, dirtyCount:I
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 99
    .local v15, displayName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/providers/calendar/CalendarDebug;->access$100(Lcom/android/providers/calendar/CalendarDebug;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/providers/calendar/CalendarDebug;->access$300()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .line 104
    .local v18, eventCursor:Landroid/database/Cursor;
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    .line 106
    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dirty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, dirtyWhere:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/providers/calendar/CalendarDebug;->access$100(Lcom/android/providers/calendar/CalendarDebug;)Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/providers/calendar/CalendarDebug;->access$300()[Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    .line 116
    .local v14, dirtyCursor:Landroid/database/Cursor;
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v13

    .line 118
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 123
    if-nez v13, :cond_5

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v2}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v2

    const v3, 0x7f05000b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 131
    .local v21, text:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v15, v1}, Lcom/android/providers/calendar/CalendarDebug;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 134
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #dirtyWhere:Ljava/lang/String;
    .end local v13           #dirtyCount:I
    .end local v14           #dirtyCursor:Landroid/database/Cursor;
    .end local v15           #displayName:Ljava/lang/String;
    .end local v17           #eventCount:I
    .end local v18           #eventCursor:Landroid/database/Cursor;
    .end local v19           #id:I
    .end local v21           #text:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 137
    .local v16, e:Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v3}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/providers/calendar/CalendarDebug;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 139
    if-eqz v12, :cond_1

    .line 140
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 106
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v13       #dirtyCount:I
    .restart local v15       #displayName:Ljava/lang/String;
    .restart local v17       #eventCount:I
    .restart local v18       #eventCursor:Landroid/database/Cursor;
    .restart local v19       #id:I
    :catchall_0
    move-exception v2

    :try_start_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 139
    .end local v5           #where:Ljava/lang/String;
    .end local v13           #dirtyCount:I
    .end local v15           #displayName:Ljava/lang/String;
    .end local v17           #eventCount:I
    .end local v18           #eventCursor:Landroid/database/Cursor;
    .end local v19           #id:I
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_4

    .line 140
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 118
    .restart local v5       #where:Ljava/lang/String;
    .restart local v9       #dirtyWhere:Ljava/lang/String;
    .restart local v13       #dirtyCount:I
    .restart local v14       #dirtyCursor:Landroid/database/Cursor;
    .restart local v15       #displayName:Ljava/lang/String;
    .restart local v17       #eventCount:I
    .restart local v18       #eventCursor:Landroid/database/Cursor;
    .restart local v19       #id:I
    :catchall_2
    move-exception v2

    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 127
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v2}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v2

    const v3, 0x7f05000c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v21

    .restart local v21       #text:Ljava/lang/String;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    invoke-virtual {v1, v5}, Lcom/android/providers/calendar/CalendarDebug;->setProgressBarIndeterminateVisibility(Z)V

    .line 160
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v1}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v1

    const v3, 0x1090004

    new-array v4, v6, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string v5, "text"

    aput-object v5, v4, v2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 165
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDebug;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    return-void

    .line 160
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDebug;->setProgressBarIndeterminateVisibility(Z)V

    .line 71
    return-void
.end method
