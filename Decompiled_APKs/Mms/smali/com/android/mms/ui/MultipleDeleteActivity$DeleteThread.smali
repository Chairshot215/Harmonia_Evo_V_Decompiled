.class Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;
.super Ljava/lang/Thread;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteThread"
.end annotation


# instance fields
.field private mIsDeleteAll:Z

.field private mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/MultipleDeleteActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mcr:Landroid/content/ContentResolver;

.field private mct:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;ZLandroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "parent"
    .parameter "isDeleteAll"
    .parameter "ct"
    .parameter "cr"

    .prologue
    .line 1170
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mParent:Ljava/lang/ref/WeakReference;

    .line 1172
    iput-boolean p2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    .line 1173
    iput-object p4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mcr:Landroid/content/ContentResolver;

    .line 1174
    iput-object p3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mct:Landroid/content/Context;

    .line 1175
    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    .prologue
    .line 1178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/mms/ui/MultipleDeleteActivity;

    .line 1179
    .local v31, parent:Lcom/android/mms/ui/MultipleDeleteActivity;
    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/database/Cursor;

    move-result-object v18

    .line 1183
    .local v18, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object/from16 v0, v31

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteComplete:I
    invoke-static {v0, v4}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1302(Lcom/android/mms/ui/MultipleDeleteActivity;I)I

    .line 1186
    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1189
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 1190
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartMoving:Z

    .line 1191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/MultipleDeleteActivity;->mbDeleteImmediately:Z

    .line 1192
    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 1193
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/ui/MultipleDeleteActivity;->mbDeleteImmediately:Z

    .line 1195
    :cond_0
    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v4

    if-nez v4, :cond_a

    .line 1196
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteThreadIdList(Landroid/database/Cursor;[ZZ)Ljava/lang/String;

    move-result-object v29

    .line 1197
    .local v29, list:Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteThreadIds(Landroid/database/Cursor;[ZZ)Ljava/util/ArrayList;

    move-result-object v26

    .line 1198
    .local v26, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1199
    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->deleteThreadByListV2(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1331
    .end local v26           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29           #list:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1204
    .restart local v26       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29       #list:Ljava/lang/String;
    :cond_2
    const-string v4, "thread_id in (%s) AND locked=0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v29, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1205
    .local v8, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mct:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mcr:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1400()[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "_id DESC"

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 1207
    .local v32, smsCursor:Landroid/database/Cursor;
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getdeleteSMSIds(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mct:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mcr:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1500()[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "_id DESC"

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 1212
    .local v30, mmsCursor:Landroid/database/Cursor;
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getdeleteMMSIds(Landroid/database/Cursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1602(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1214
    const/16 v37, 0x0

    .line 1215
    .local v37, totalDelcount:I
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1216
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v37, v37, v4

    .line 1217
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1600()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1218
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v37, v37, v4

    .line 1220
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1800()I

    move-result v4

    move/from16 v0, v37

    if-le v0, v4, :cond_9

    .line 1222
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1223
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1700()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->deleteSMSMMSByList(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 1227
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1600()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1228
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1600()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->deleteSMSMMSByList(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 1232
    :cond_6
    :goto_1
    if-eqz v32, :cond_7

    .line 1233
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1234
    :cond_7
    if-eqz v30, :cond_8

    .line 1235
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1236
    :cond_8
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    goto/16 :goto_0

    .line 1230
    :cond_9
    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->deleteThreadByList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1240
    .end local v8           #selection:Ljava/lang/String;
    .end local v26           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29           #list:Ljava/lang/String;
    .end local v30           #mmsCursor:Landroid/database/Cursor;
    .end local v32           #smsCursor:Landroid/database/Cursor;
    .end local v37           #totalDelcount:I
    :cond_a
    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 1241
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1242
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteThreadIdList(Landroid/database/Cursor;[ZZ)Ljava/lang/String;

    move-result-object v29

    .line 1243
    .restart local v29       #list:Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteThreadIds(Landroid/database/Cursor;[ZZ)Ljava/util/ArrayList;

    move-result-object v26

    .line 1244
    .restart local v26       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->deleteContactBasehtcThreadByList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1247
    .end local v26           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29           #list:Ljava/lang/String;
    :cond_b
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .local v36, threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 1250
    .local v29, list:Ljava/lang/StringBuilder;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 1252
    .local v35, threadId_list:Ljava/lang/StringBuilder;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v28

    .line 1253
    .local v28, len:I
    const/16 v19, 0x0

    .line 1254
    .local v19, hasId:Z
    const/16 v20, 0x0

    .line 1255
    .local v20, hasThreadId:Z
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    .line 1256
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1257
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    if-nez v4, :cond_c

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aget-boolean v4, v4, v23

    if-eqz v4, :cond_10

    .line 1258
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1259
    .local v21, htcthread_id:J
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1261
    .local v33, threadId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v33, v4

    if-lez v4, :cond_e

    .line 1262
    new-instance v4, Ljava/lang/Integer;

    move-wide/from16 v0, v33

    long-to-int v5, v0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    if-eqz v20, :cond_d

    .line 1264
    const-string v4, ", "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_d
    move-object/from16 v0, v35

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1267
    const/16 v20, 0x1

    .line 1271
    :cond_e
    if-eqz v19, :cond_f

    .line 1272
    const-string v4, ", "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_f
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    const/16 v19, 0x1

    .line 1255
    .end local v21           #htcthread_id:J
    .end local v33           #threadId:J
    :cond_10
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 1278
    :cond_11
    const-string v4, "MultipleDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "htcThreadList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string v4, "MultipleDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threadId_list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const-string v4, "MultipleDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threadIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->deleteHtcThreads(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1282
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    goto/16 :goto_0

    .line 1287
    .end local v19           #hasId:Z
    .end local v20           #hasThreadId:Z
    .end local v23           #i:I
    .end local v28           #len:I
    .end local v29           #list:Ljava/lang/StringBuilder;
    .end local v35           #threadId_list:Ljava/lang/StringBuilder;
    .end local v36           #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_12
    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_15

    .line 1289
    :cond_13
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartMoving:Z

    .line 1290
    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mIsThread:Z
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1900(Lcom/android/mms/ui/MultipleDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1291
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteThreadIdList(Landroid/database/Cursor;[ZZ)Ljava/lang/String;

    move-result-object v29

    .line 1292
    .local v29, list:Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteThreadIds(Landroid/database/Cursor;[ZZ)Ljava/util/ArrayList;

    move-result-object v26

    .line 1293
    .restart local v26       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->moveThreadByList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1295
    .end local v26           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29           #list:Ljava/lang/String;
    :cond_14
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->duplicateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v17

    .line 1296
    .local v17, c:Landroid/database/Cursor;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->moveMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;[ZZ)V

    goto/16 :goto_0

    .line 1301
    .end local v17           #c:Landroid/database/Cursor;
    :cond_15
    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_17

    .line 1303
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteThreadIds(Landroid/database/Cursor;[ZZ)Ljava/util/ArrayList;

    move-result-object v26

    .line 1306
    .restart local v26       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    .line 1307
    .local v16, builder:Landroid/net/Uri$Builder;
    const-string v4, "blocklist"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1308
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 1309
    .local v15, baseUri:Landroid/net/Uri;
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1310
    .restart local v28       #len:I
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 1311
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 1312
    .local v24, id:J
    move-wide/from16 v0, v24

    invoke-static {v15, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1313
    .local v12, uri:Landroid/net/Uri;
    add-int/lit8 v4, v28, -0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_16

    .line 1314
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v9

    const/16 v10, 0x709

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1310
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1316
    :cond_16
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v9

    const/16 v10, 0x76d

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 1321
    .end local v12           #uri:Landroid/net/Uri;
    .end local v15           #baseUri:Landroid/net/Uri;
    .end local v16           #builder:Landroid/net/Uri$Builder;
    .end local v23           #i:I
    .end local v24           #id:J
    .end local v26           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28           #len:I
    :cond_17
    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_18

    .line 1322
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteCmasIds(Landroid/database/Cursor;[ZZ)Ljava/util/ArrayList;

    move-result-object v27

    .line 1323
    .local v27, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->deleteCmasByList(Landroid/content/Context;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2000(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1327
    .end local v27           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_18
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->duplicateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v17

    .line 1328
    .restart local v17       #c:Landroid/database/Cursor;
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->mIsDeleteAll:Z

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;[ZZ)V

    goto/16 :goto_0
.end method
