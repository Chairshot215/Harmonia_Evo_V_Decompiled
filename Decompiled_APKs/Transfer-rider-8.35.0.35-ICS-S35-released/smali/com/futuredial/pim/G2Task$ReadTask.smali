.class Lcom/futuredial/pim/G2Task$ReadTask;
.super Ljava/lang/Object;
.source "G2Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/G2Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadTask"
.end annotation


# instance fields
.field public final LOGTAG:Ljava/lang/String;

.field public final TA_COLUMN_NAMES:[Ljava/lang/String;

.field public final TT_COLUMN_NAMES:[Ljava/lang/String;

.field private accountIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bCompleted:Z

.field private bInitialized:Z

.field private mCR:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurTask:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/futuredial/pim/G2Task;


# direct methods
.method public constructor <init>(Lcom/futuredial/pim/G2Task;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 841
    iput-object p1, p0, Lcom/futuredial/pim/G2Task$ReadTask;->this$0:Lcom/futuredial/pim/G2Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    const-string v0, "ReadTask"

    iput-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->LOGTAG:Ljava/lang/String;

    .line 821
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "alarmTime"

    aput-object v1, v0, v3

    const-string v1, "createTime"

    aput-object v1, v0, v5

    const-string v1, "duedate"

    aput-object v1, v0, v6

    const-string v1, "notifyTime"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "receivedTime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "reminderTimer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "taskTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "last_update"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->TA_COLUMN_NAMES:[Ljava/lang/String;

    .line 825
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DateCompleted"

    aput-object v1, v0, v3

    const-string v1, "Description"

    aput-object v1, v0, v5

    const-string v1, "DueDate"

    aput-object v1, v0, v6

    const-string v1, "Extras"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "UTCStartDate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Importer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Complete"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IsDeleted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IsDirty"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ReminderSet"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IsSyncing"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PlaceId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Priority"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Progress"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Recurrence"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_recur_dead_occur"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_recur_regen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_recur_start_date"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ReminderTime"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "StartDate"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "UTCDueDate"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "last_update"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->TT_COLUMN_NAMES:[Ljava/lang/String;

    .line 832
    iput-object v4, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mContext:Landroid/content/Context;

    .line 833
    iput-object v4, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCR:Landroid/content/ContentResolver;

    .line 835
    iput-object v4, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    .line 836
    iput-boolean v3, p0, Lcom/futuredial/pim/G2Task$ReadTask;->bCompleted:Z

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->accountIDList:Ljava/util/ArrayList;

    .line 838
    iput-boolean v3, p0, Lcom/futuredial/pim/G2Task$ReadTask;->bInitialized:Z

    .line 842
    iput-object p2, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mContext:Landroid/content/Context;

    .line 843
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCR:Landroid/content/ContentResolver;

    .line 844
    return-void
.end method

.method private GetAccountID()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 913
    const/4 v8, 0x1

    .line 915
    .local v8, ret:I
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->accountIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 917
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_Account:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "accountType=\"com.htc.task\""

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 918
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    :cond_0
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 923
    .local v6, accountID:I
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->accountIDList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    const/4 v8, 0x0

    .line 930
    .end local v6           #accountID:I
    :cond_1
    const-string v0, "ReadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the number of accountID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/pim/G2Task$ReadTask;->accountIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return v8
.end method

.method private ReadPlace(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 11
    .parameter "placeID"
    .parameter "jsObj"

    .prologue
    .line 1044
    const/4 v10, 0x1

    .line 1048
    .local v10, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_Place:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1052
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 1055
    .local v6, colCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 1057
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1055
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1061
    :cond_0
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1064
    .end local v6           #colCount:I
    .end local v9           #i:I
    :cond_1
    const-string v0, "ReadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLACE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    const/4 v10, 0x0

    .line 1074
    .end local v7           #cur:Landroid/database/Cursor;
    :goto_1
    return v10

    .line 1068
    :catch_0
    move-exception v8

    .line 1070
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private ReadTaskAlert(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 11
    .parameter "taskID"
    .parameter "jsObj"

    .prologue
    .line 1012
    const/4 v10, 0x1

    .line 1015
    .local v10, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_TaskAlert:Landroid/net/Uri;

    iget-object v2, p0, Lcom/futuredial/pim/G2Task$ReadTask;->TA_COLUMN_NAMES:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task_Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1019
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 1022
    .local v6, colCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 1024
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1022
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1028
    .end local v6           #colCount:I
    .end local v9           #i:I
    :cond_0
    const-string v0, "ReadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALERT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    const/4 v10, 0x0

    .line 1038
    .end local v7           #cur:Landroid/database/Cursor;
    :goto_1
    return v10

    .line 1032
    :catch_0
    move-exception v8

    .line 1034
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private ReadTodoTask(Lorg/json/JSONObject;)I
    .locals 11
    .parameter "jsoTask"

    .prologue
    const/4 v7, 0x1

    .line 937
    const/4 v6, 0x1

    .line 941
    .local v6, ret:I
    :try_start_0
    iget-object v8, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    if-nez v8, :cond_0

    .line 943
    const/4 v6, 0x1

    move v7, v6

    .line 1002
    :goto_0
    return v7

    .line 947
    :cond_0
    iget-boolean v8, p0, Lcom/futuredial/pim/G2Task$ReadTask;->bCompleted:Z

    if-nez v8, :cond_5

    .line 952
    iget-object v8, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 953
    .local v0, colCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 955
    iget-object v8, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 959
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 961
    .local v3, jsoAlert:Lorg/json/JSONObject;
    const-string v8, "_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/futuredial/pim/G2Task$ReadTask;->ReadTaskAlert(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 963
    const-string v8, "ReadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail in reading alert of task which id is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    .end local v0           #colCount:I
    .end local v2           #i:I
    .end local v3           #jsoAlert:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 997
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 999
    const/4 v6, 0x1

    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    move v7, v6

    .line 1002
    goto :goto_0

    .line 967
    .restart local v0       #colCount:I
    .restart local v2       #i:I
    .restart local v3       #jsoAlert:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v8, "TaskAlert"

    invoke-virtual {p1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 968
    const-string v8, "_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 971
    iget-object v8, p0, Lcom/futuredial/pim/G2Task$ReadTask;->this$0:Lcom/futuredial/pim/G2Task;

    #getter for: Lcom/futuredial/pim/G2Task;->taskDBVersion:I
    invoke-static {v8}, Lcom/futuredial/pim/G2Task;->access$000(Lcom/futuredial/pim/G2Task;)I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    const-string v8, "PlaceId"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 973
    const-string v8, "PlaceId"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 974
    .local v5, placeID:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 976
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 977
    .local v4, jsoPlace:Lorg/json/JSONObject;
    invoke-direct {p0, v5, v4}, Lcom/futuredial/pim/G2Task$ReadTask;->ReadPlace(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 979
    const-string v8, "ReadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail in reading place of task which id is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 982
    :cond_3
    const-string v8, "Place"

    invoke-virtual {p1, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 985
    .end local v4           #jsoPlace:Lorg/json/JSONObject;
    .end local v5           #placeID:Ljava/lang/String;
    :cond_4
    const-string v8, "PlaceId"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 988
    const-string v8, "ReadTask"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v8, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_6

    :goto_3
    iput-boolean v7, p0, Lcom/futuredial/pim/G2Task$ReadTask;->bCompleted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 993
    .end local v0           #colCount:I
    .end local v2           #i:I
    .end local v3           #jsoAlert:Lorg/json/JSONObject;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 990
    .restart local v0       #colCount:I
    .restart local v2       #i:I
    .restart local v3       #jsoAlert:Lorg/json/JSONObject;
    :cond_6
    const/4 v7, 0x0

    goto :goto_3
.end method


# virtual methods
.method public InitRead()I
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 848
    const/4 v9, 0x1

    .line 850
    .local v9, ret:I
    iput-object v4, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    .line 851
    iput-boolean v13, p0, Lcom/futuredial/pim/G2Task$ReadTask;->bCompleted:Z

    .line 852
    invoke-direct {p0}, Lcom/futuredial/pim/G2Task$ReadTask;->GetAccountID()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v12

    :goto_0
    iput-boolean v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->bInitialized:Z

    .line 854
    iget-boolean v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->bInitialized:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->this$0:Lcom/futuredial/pim/G2Task;

    #getter for: Lcom/futuredial/pim/G2Task;->taskDBVersion:I
    invoke-static {v0}, Lcom/futuredial/pim/G2Task;->access$000(Lcom/futuredial/pim/G2Task;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 856
    const-string v11, ""

    .line 857
    .local v11, strAccountID:Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->accountIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 859
    .local v8, id:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 860
    .local v10, singleID:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 864
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 865
    goto :goto_1

    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #id:I
    .end local v10           #singleID:Ljava/lang/String;
    .end local v11           #strAccountID:Ljava/lang/String;
    :cond_1
    move v0, v13

    .line 852
    goto :goto_0

    .line 866
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v11       #strAccountID:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_TodoTask:Landroid/net/Uri;

    iget-object v2, p0, Lcom/futuredial/pim/G2Task$ReadTask;->TT_COLUMN_NAMES:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and IsDeleted = 0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 871
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 873
    iput-object v6, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    .line 875
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    iput-boolean v12, p0, Lcom/futuredial/pim/G2Task$ReadTask;->bCompleted:Z

    .line 877
    const/4 v9, 0x0

    .line 885
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #strAccountID:Ljava/lang/String;
    :cond_3
    :goto_3
    return v9

    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v11       #strAccountID:Ljava/lang/String;
    :cond_4
    move v12, v13

    .line 875
    goto :goto_2

    .line 882
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #strAccountID:Ljava/lang/String;
    :cond_5
    const-string v0, "ReadTask"

    const-string v1, "fail in initializing accountID"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 901
    const/4 v0, 0x1

    .line 903
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Task$ReadTask;->ReadTodoTask(Lorg/json/JSONObject;)I

    move-result v0

    .line 905
    return v0
.end method

.method public UnInitRead()I
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/pim/G2Task$ReadTask;->mCurTask:Landroid/database/Cursor;

    .line 896
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
