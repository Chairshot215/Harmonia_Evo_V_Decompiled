.class public Lcom/futuredial/pim/G2Task;
.super Lcom/futuredial/pim/CPim;
.source "G2Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/pim/G2Task$ReadTask;
    }
.end annotation


# static fields
.field private static final DBVERSION_0:I = 0x0

.field private static final DBVERSION_3:I = 0x3

.field private static final DBVERSION_6:I = 0x6

.field public static final LOGTAG:Ljava/lang/String; = "G2Task"

.field public static final URI_Account:Landroid/net/Uri;

.field public static final URI_Place:Landroid/net/Uri;

.field public static final URI_TaskAlert:Landroid/net/Uri;

.field public static final URI_TaskList:Landroid/net/Uri;

.field public static final URI_TaskSource:Landroid/net/Uri;

.field public static final URI_TodoTask:Landroid/net/Uri;


# instance fields
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

.field private bInitialized:Z

.field private defAccountID:I

.field private defTasklistID:I

.field private readTask:Lcom/futuredial/pim/G2Task$ReadTask;

.field private taskDBVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "content://com.htc.task.dm/Account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/G2Task;->URI_Account:Landroid/net/Uri;

    .line 27
    const-string v0, "content://com.htc.task.dm/TaskAlert"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/G2Task;->URI_TaskAlert:Landroid/net/Uri;

    .line 28
    const-string v0, "content://com.htc.task.dm/TaskList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/G2Task;->URI_TaskList:Landroid/net/Uri;

    .line 29
    const-string v0, "content://com.htc.task.dm/TaskSource"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/G2Task;->URI_TaskSource:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.htc.task.dm/TodoTask"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/G2Task;->URI_TodoTask:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.htc.task.dm/Place"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/G2Task;->URI_Place:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/futuredial/pim/CPim;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/pim/G2Task;->accountIDList:Ljava/util/ArrayList;

    .line 34
    iput v1, p0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    .line 35
    iput v1, p0, Lcom/futuredial/pim/G2Task;->defTasklistID:I

    .line 42
    iput v2, p0, Lcom/futuredial/pim/G2Task;->taskDBVersion:I

    .line 46
    iput-boolean v2, p0, Lcom/futuredial/pim/G2Task;->bInitialized:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/pim/G2Task;->readTask:Lcom/futuredial/pim/G2Task$ReadTask;

    .line 53
    const-string v0, "com.htc.task"

    iput-object v0, p0, Lcom/futuredial/pim/G2Task;->sAccountType:Ljava/lang/String;

    .line 54
    const-string v0, "My task"

    iput-object v0, p0, Lcom/futuredial/pim/G2Task;->sAccountName:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/futuredial/pim/G2Task;->Initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/futuredial/pim/G2Task;->bInitialized:Z

    .line 57
    iget-boolean v0, p0, Lcom/futuredial/pim/G2Task;->bInitialized:Z

    if-nez v0, :cond_0

    .line 59
    const-string v0, "G2Task"

    const-string v1, "fail in intializing object of G2Task"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method private CorrectPOI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "poi"

    .prologue
    const/4 v11, 0x0

    .line 728
    if-nez p1, :cond_0

    .line 730
    const-string v0, "G2Task"

    const-string v1, "poi is null, this is not permitted."

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_0
    return-object v11

    .line 734
    :cond_0
    move-object v11, p1

    .line 737
    .local v11, ret:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " POI LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 738
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_Place:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "POI"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 742
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v10, poiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    const/4 v8, 0x1

    .local v8, i:I
    move v9, v8

    .line 752
    .end local v8           #i:I
    .local v9, i:I
    :goto_1
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move v9, v8

    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_1

    .line 758
    .end local v9           #i:I
    .end local v10           #poiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v6, :cond_3

    .line 760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_3
    :goto_2
    const-string v0, "G2Task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "POI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 763
    :catch_0
    move-exception v7

    .line 765
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    const-string v11, ""

    goto :goto_2
.end method

.method private GetDBVersion()I
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 394
    const/4 v12, 0x0

    .line 396
    .local v12, version:I
    const-string v10, "POI, _id, last_update, "

    .line 397
    .local v10, ver3ColumnNameList:Ljava/lang/String;
    const-string v11, "Address, Latitude, Longitude, POI, _id, last_update, "

    .line 398
    .local v11, ver6ColumnNameList:Ljava/lang/String;
    const-string v7, ""

    .line 400
    .local v7, columnNameList:Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_Place:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 401
    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 403
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, columnName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 403
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 409
    .end local v6           #columnName:Ljava/lang/String;
    :cond_0
    const-string v0, "POI, _id, last_update, "

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    const/4 v12, 0x3

    .line 418
    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 421
    .end local v9           #i:I
    :cond_2
    const-string v0, "G2Task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The list of column names of tabel \'Place\' :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return v12

    .line 413
    .restart local v9       #i:I
    :cond_3
    const-string v0, "Address, Latitude, Longitude, POI, _id, last_update, "

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    const/4 v12, 0x6

    goto :goto_1
.end method

.method private GetDefAccountID()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 315
    const/4 v7, 0x1

    .line 317
    .local v7, ret:I
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->accountIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    .line 320
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_Account:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "accountName"

    aput-object v5, v2, v3

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "accountType=\"com.htc.task\""

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    .line 325
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->accountIDList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    const/4 v7, 0x0

    .line 352
    :cond_0
    const-string v0, "G2Task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return v7
.end method

.method private GetDefTaskListID()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 359
    const/4 v7, 0x1

    .line 361
    .local v7, ret:I
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_TaskList:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 362
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/futuredial/pim/G2Task;->defTasklistID:I

    .line 366
    const/4 v7, 0x0

    .line 369
    :cond_0
    const-string v0, "G2Task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tasklistID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/futuredial/pim/G2Task;->defTasklistID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return v7
.end method

.method private Initialize()Z
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/futuredial/pim/G2Task;->GetDBVersion()I

    move-result v0

    iput v0, p0, Lcom/futuredial/pim/G2Task;->taskDBVersion:I

    .line 305
    invoke-direct {p0}, Lcom/futuredial/pim/G2Task;->GetDefAccountID()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/futuredial/pim/G2Task;->GetDefTaskListID()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/futuredial/pim/G2Task;->taskDBVersion:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private TransformGeneralTask(Lcom/futuredial/publicobj/Item;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 39
    .parameter "item"
    .parameter "cvTask"
    .parameter "cvAlert"

    .prologue
    .line 431
    invoke-static/range {p1 .. p1}, Lcom/futuredial/pim/G2Calendar;->IsEvent(Lcom/futuredial/publicobj/Item;)Z

    move-result v8

    .line 432
    .local v8, bs:Z
    if-eqz v8, :cond_0

    .line 434
    const/16 v21, 0x4e24

    .line 636
    :goto_0
    return v21

    .line 437
    :cond_0
    const/16 v21, 0x1

    .line 439
    .local v21, ret:I
    const/16 v19, 0x0

    .line 440
    .local v19, nRecurTimes:I
    const/16 v31, 0x0

    .line 441
    .local v31, tStart:Landroid/text/format/Time;
    const/16 v26, 0x0

    .line 442
    .local v26, tEnd:Landroid/text/format/Time;
    const/16 v29, 0x0

    .line 443
    .local v29, tRecurStart:Landroid/text/format/Time;
    const/16 v28, 0x0

    .line 444
    .local v28, tRecurEnd:Landroid/text/format/Time;
    const/16 v22, 0x0

    .line 445
    .local v22, sRecurEndDate:Ljava/lang/String;
    const/16 v30, 0x0

    .line 446
    .local v30, tReminder:Landroid/text/format/Time;
    const/4 v5, 0x0

    .line 447
    .local v5, bHasAlarms:Z
    const/4 v7, 0x0

    .line 448
    .local v7, bReminderTime:Z
    const/4 v6, 0x0

    .line 449
    .local v6, bPriority:Z
    const-wide/16 v17, -0x1

    .line 450
    .local v17, lReminderTimer:J
    const/4 v9, 0x0

    .line 453
    .local v9, complete:I
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->clear()V

    .line 455
    const-string v34, "AccountId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v34, "TaskListId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Task;->defTasklistID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v33, "null"

    .line 460
    .local v33, title:Ljava/lang/String;
    const-string v10, ""

    .line 463
    .local v10, description:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    .line 466
    invoke-static/range {p1 .. p1}, Lcom/futuredial/pim/G2Calendar;->getTimeZonefromFld(Lcom/futuredial/publicobj/Item;)Ljava/lang/String;

    move-result-object v24

    .line 467
    .local v24, strTZone:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v14

    .line 468
    .local v14, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v34

    if-eqz v34, :cond_f

    .line 469
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 470
    .local v13, fieldID:Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 471
    .local v4, arrayField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    new-instance v12, Lcom/futuredial/publicobj/Field;

    invoke-direct {v12}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 472
    .local v12, field:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_3

    .line 474
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #field:Lcom/futuredial/publicobj/Field;
    check-cast v12, Lcom/futuredial/publicobj/Field;

    .line 482
    .restart local v12       #field:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x10

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_2

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0xd

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_2

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0xc

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4

    .line 486
    :cond_2
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "\r\n"

    const-string v37, "\n"

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 476
    :cond_3
    const-string v34, "G2Task"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "The imported item object does no have field which id is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/16 v21, 0x4e33

    goto/16 :goto_0

    .line 488
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    .line 490
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "\r\n"

    const-string v36, "\n"

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 491
    .local v32, temp:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_1

    .line 493
    move-object/from16 v33, v32

    goto/16 :goto_1

    .line 496
    .end local v32           #temp:Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x66

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_7

    .line 498
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Task;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v26

    .line 499
    if-eqz v26, :cond_6

    .line 501
    const-string v34, "DueDate"

    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    :cond_6
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "UTC"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Task;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v27

    .line 506
    .local v27, tEndUTC:Landroid/text/format/Time;
    if-eqz v27, :cond_1

    .line 508
    const-string v34, "UTCDueDate"

    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 629
    .end local v4           #arrayField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v10           #description:Ljava/lang/String;
    .end local v12           #field:Lcom/futuredial/publicobj/Field;
    .end local v13           #fieldID:Ljava/lang/Integer;
    .end local v14           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v24           #strTZone:Ljava/lang/String;
    .end local v27           #tEndUTC:Landroid/text/format/Time;
    .end local v33           #title:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 631
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 633
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 511
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v4       #arrayField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .restart local v10       #description:Ljava/lang/String;
    .restart local v12       #field:Lcom/futuredial/publicobj/Field;
    .restart local v13       #fieldID:Ljava/lang/Integer;
    .restart local v14       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v24       #strTZone:Ljava/lang/String;
    .restart local v33       #title:Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x65

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    .line 513
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Task;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v31

    goto/16 :goto_1

    .line 515
    :cond_8
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x67

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    .line 517
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Task;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v29

    .line 518
    if-eqz v29, :cond_1

    .line 520
    const-string v34, "_recur_start_date"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 523
    :cond_9
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x68

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 525
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Task;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v28

    .line 526
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 528
    :cond_a
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0xca

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    .line 530
    const-string v34, "Complete"

    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_1

    .line 533
    :cond_b
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0xce

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_c

    .line 535
    const-string v34, "priority"

    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 538
    :cond_c
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0xd0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 540
    invoke-virtual {v12}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v19

    goto/16 :goto_1

    .line 542
    :cond_d
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0xc9

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 544
    invoke-virtual {v12}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v34

    if-lez v34, :cond_1

    .line 546
    const/4 v5, 0x1

    .line 547
    const-string v34, "ReminderSet"

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_1

    .line 550
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/futuredial/publicobj/Field;

    .line 551
    .local v20, proFld:Lcom/futuredial/publicobj/Field;
    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x69

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 553
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Task;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v30

    .line 554
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 556
    :cond_e
    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0xe6

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 558
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 559
    .local v25, strdtime:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    goto/16 :goto_1

    .line 571
    .end local v4           #arrayField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v12           #field:Lcom/futuredial/publicobj/Field;
    .end local v13           #fieldID:Ljava/lang/Integer;
    .end local v20           #proFld:Lcom/futuredial/publicobj/Field;
    .end local v25           #strdtime:Ljava/lang/String;
    :cond_f
    if-eqz v29, :cond_10

    .line 573
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v19

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/futuredial/pim/G2Calendar;->getRecurrenceRule(Lcom/futuredial/publicobj/Item;Landroid/text/format/Time;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 574
    .local v23, strData:Ljava/lang/String;
    if-eqz v23, :cond_10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_10

    .line 576
    const-string v34, "Recurrence"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v23           #strData:Ljava/lang/String;
    :cond_10
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_11

    .line 582
    const-string v34, "Description"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_11
    const-string v34, "Title"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    if-nez v6, :cond_12

    .line 589
    const-string v34, "priority"

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    :cond_12
    if-nez v26, :cond_13

    if-eqz v30, :cond_13

    .line 594
    move-object/from16 v26, v30

    .line 595
    const-string v34, "DueDate"

    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 601
    :cond_13
    if-nez v9, :cond_15

    if-eqz v5, :cond_15

    .line 606
    const-string v34, "taskTitle"

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    if-eqz v26, :cond_14

    .line 611
    const-string v34, "duedate"

    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 614
    :cond_14
    if-eqz v7, :cond_16

    .line 616
    const-string v34, "alarmTime"

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 617
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/futuredial/pim/G2Calendar;->computeReminderTime(Landroid/text/format/Time;Landroid/text/format/Time;)J

    move-result-wide v34

    const-wide/16 v36, 0x3c

    mul-long v15, v34, v36

    .line 618
    .local v15, lRT:J
    const-string v34, "reminderTimer"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 627
    .end local v15           #lRT:J
    :cond_15
    :goto_2
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 620
    :cond_16
    const-wide/16 v34, -0x1

    cmp-long v34, v17, v34

    if-eqz v34, :cond_15

    .line 622
    const-string v34, "alarmTime"

    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v35, v35, v37

    const-wide/16 v37, 0x3c

    mul-long v37, v37, v17

    sub-long v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    const-string v34, "reminderTimer"

    const-wide/16 v35, 0x3c

    mul-long v35, v35, v17

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private TransformHtcTodoTask(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 20
    .parameter "todoTask"
    .parameter "cvTask"
    .parameter "cvAlert"
    .parameter "cvPlace"

    .prologue
    .line 641
    const/4 v15, 0x1

    .line 645
    .local v15, ret:I
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 647
    .local v7, jsoTask:Lorg/json/JSONObject;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->clear()V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    .line 649
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 650
    const-string v18, "AccountId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string v18, "TaskListId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Task;->defTasklistID:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v18, "Complete"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 654
    .local v3, complete:I
    const-string v18, "ReminderSet"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 656
    .local v14, reminderSet:I
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 657
    .local v12, keysTask:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 660
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 662
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 663
    .local v13, keytask:Ljava/lang/String;
    const-string v18, "TaskAlert"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 665
    if-nez v3, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    .line 667
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 668
    .local v16, taskAlert:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 672
    .local v5, jsoAlert:Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 673
    .local v10, keysAlert:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 675
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 677
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 678
    .local v8, keyalert:Ljava/lang/String;
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 709
    .end local v3           #complete:I
    .end local v5           #jsoAlert:Lorg/json/JSONObject;
    .end local v7           #jsoTask:Lorg/json/JSONObject;
    .end local v8           #keyalert:Ljava/lang/String;
    .end local v10           #keysAlert:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12           #keysTask:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13           #keytask:Ljava/lang/String;
    .end local v14           #reminderSet:I
    .end local v16           #taskAlert:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 711
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    const/4 v15, 0x1

    .line 717
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v15

    .line 684
    .restart local v3       #complete:I
    .restart local v7       #jsoTask:Lorg/json/JSONObject;
    .restart local v12       #keysTask:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v13       #keytask:Ljava/lang/String;
    .restart local v14       #reminderSet:I
    :cond_2
    :try_start_1
    const-string v18, "Place"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Task;->taskDBVersion:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 686
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 687
    .local v17, taskPlace:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 689
    .local v6, jsoPlace:Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 690
    .local v11, keysPlace:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 692
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 694
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 695
    .local v9, keyplace:Ljava/lang/String;
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 701
    .end local v6           #jsoPlace:Lorg/json/JSONObject;
    .end local v9           #keyplace:Ljava/lang/String;
    .end local v11           #keysPlace:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v17           #taskPlace:Ljava/lang/String;
    :cond_3
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 705
    .end local v13           #keytask:Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/futuredial/pim/G2Task;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/futuredial/pim/G2Task;->taskDBVersion:I

    return v0
.end method


# virtual methods
.method public DeleteAll()I
    .locals 5

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/futuredial/pim/G2Task;->URI_TodoTask:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    const-string v1, "G2Task"

    const-string v2, "delete all task records"

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public InitRead()I
    .locals 2

    .prologue
    .line 778
    new-instance v0, Lcom/futuredial/pim/G2Task$ReadTask;

    iget-object v1, p0, Lcom/futuredial/pim/G2Task;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/futuredial/pim/G2Task$ReadTask;-><init>(Lcom/futuredial/pim/G2Task;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2Task;->readTask:Lcom/futuredial/pim/G2Task$ReadTask;

    .line 779
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->readTask:Lcom/futuredial/pim/G2Task$ReadTask;

    if-nez v0, :cond_0

    .line 781
    const/4 v0, 0x1

    .line 785
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->readTask:Lcom/futuredial/pim/G2Task$ReadTask;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2Task$ReadTask;->InitRead()I

    move-result v0

    goto :goto_0
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->readTask:Lcom/futuredial/pim/G2Task$ReadTask;

    if-nez v0, :cond_0

    .line 805
    const/4 v0, 0x1

    .line 809
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->readTask:Lcom/futuredial/pim/G2Task$ReadTask;

    invoke-virtual {v0, p1}, Lcom/futuredial/pim/G2Task$ReadTask;->ReadItem(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0
.end method

.method public SetAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "sType"
    .parameter "sName"

    .prologue
    .line 233
    invoke-super/range {p0 .. p2}, Lcom/futuredial/pim/CPim;->SetAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    .line 236
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/futuredial/pim/G2Task;->defTasklistID:I

    .line 239
    const-string v4, ""

    .line 240
    .local v4, where:Ljava/lang/String;
    const-string v1, "com.htc.task"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountType=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/futuredial/pim/G2Task;->URI_Account:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 247
    .local v14, cur:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    .line 278
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/futuredial/pim/G2Task;->GetDefTaskListID()I

    .line 281
    move-object/from16 v0, p0

    iget v1, v0, Lcom/futuredial/pim/G2Task;->defTasklistID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 283
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v15, tasklistValues:Landroid/content/ContentValues;
    const-string v1, "AccountId"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v1, "ListName"

    const-string v2, "List 1"

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/futuredial/pim/G2Task;->URI_TaskList:Landroid/net/Uri;

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 287
    .local v8, uriTaskList:Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 289
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 290
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/futuredial/pim/G2Task;->defTasklistID:I

    .line 297
    .end local v8           #uriTaskList:Landroid/net/Uri;
    .end local v15           #tasklistValues:Landroid/content/ContentValues;
    :cond_1
    return-void

    .line 243
    .end local v14           #cur:Landroid/database/Cursor;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" and accountType=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 254
    .restart local v14       #cur:Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v6, Lcom/futuredial/pim/G2Task;->URI_TaskSource:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v7, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountType=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 255
    const/16 v16, 0x1

    .line 256
    .local v16, tasksourceID:I
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 258
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 261
    :cond_4
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v13, accountValues:Landroid/content/ContentValues;
    const-string v1, "accountName"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "TaskSourceName"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "TaskSourceId"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/futuredial/pim/G2Task;->URI_Account:Landroid/net/Uri;

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 267
    .local v6, uriAccount:Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 270
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/futuredial/pim/G2Task;->defAccountID:I

    goto/16 :goto_1
.end method

.method public UnInitRead()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->readTask:Lcom/futuredial/pim/G2Task$ReadTask;

    if-nez v0, :cond_0

    .line 793
    const/4 v0, 0x1

    .line 797
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->readTask:Lcom/futuredial/pim/G2Task$ReadTask;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2Task$ReadTask;->UnInitRead()I

    move-result v0

    goto :goto_0
.end method

.method public addnewItem(Lcom/futuredial/publicobj/Item;Z)I
    .locals 23
    .parameter "objItem"
    .parameter "bLast"

    .prologue
    .line 85
    const/16 v19, 0x1

    .line 86
    .local v19, ret:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/futuredial/pim/G2Task;->bInitialized:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move/from16 v20, v19

    .line 176
    .end local v19           #ret:I
    .local v20, ret:I
    :goto_0
    return v20

    .line 88
    .end local v20           #ret:I
    .restart local v19       #ret:I
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v14, cvTask:Landroid/content/ContentValues;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v12, cvAlert:Landroid/content/ContentValues;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v13, cvPlace:Landroid/content/ContentValues;
    const/16 v2, 0x157c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/publicobj/Item;->getFields(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 93
    .local v15, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-nez v15, :cond_3

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v12}, Lcom/futuredial/pim/G2Task;->TransformGeneralTask(Lcom/futuredial/publicobj/Item;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v19

    .line 102
    :goto_1
    if-nez v19, :cond_e

    invoke-virtual {v14}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 105
    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 107
    const-string v2, "POI"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 108
    .local v18, poi:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Task;->CorrectPOI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 109
    .local v16, newPoi:Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    :cond_2
    const-string v2, "G2Task"

    const-string v4, "Null or Empty value is not permitted for POI."

    invoke-static {v2, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/16 v19, 0x4e33

    move/from16 v20, v19

    .line 113
    .end local v19           #ret:I
    .restart local v20       #ret:I
    goto :goto_0

    .line 99
    .end local v16           #newPoi:Ljava/lang/String;
    .end local v18           #poi:Ljava/lang/String;
    .end local v20           #ret:I
    .restart local v19       #ret:I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Field;

    iget-object v2, v2, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v12, v13}, Lcom/futuredial/pim/G2Task;->TransformHtcTodoTask(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v19

    goto :goto_1

    .line 115
    .restart local v16       #newPoi:Ljava/lang/String;
    .restart local v18       #poi:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 117
    const-string v2, "POI"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 118
    const-string v2, "POI"

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "G2Task"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "corrected POI is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/futuredial/pim/G2Task;->URI_Place:Landroid/net/Uri;

    invoke-virtual {v2, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 123
    .local v3, uriPlace:Landroid/net/Uri;
    if-nez v3, :cond_6

    .line 125
    const-string v2, "G2Task"

    const-string v4, "fail in inserting place entry "

    invoke-static {v2, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/16 v19, 0x4e33

    move/from16 v20, v19

    .line 127
    .end local v19           #ret:I
    .restart local v20       #ret:I
    goto/16 :goto_0

    .line 129
    .end local v20           #ret:I
    .restart local v19       #ret:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 130
    .local v11, curPlace:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_8

    .line 132
    :cond_7
    const-string v2, "G2Task"

    const-string v4, "fail in querying the _id of the place which has just been inserted "

    invoke-static {v2, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v19, 0x4e33

    move/from16 v20, v19

    .line 134
    .end local v19           #ret:I
    .restart local v20       #ret:I
    goto/16 :goto_0

    .line 136
    .end local v20           #ret:I
    .restart local v19       #ret:I
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 137
    .local v17, placeID:I
    const-string v2, "PlaceId"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    .end local v3           #uriPlace:Landroid/net/Uri;
    .end local v11           #curPlace:Landroid/database/Cursor;
    .end local v16           #newPoi:Ljava/lang/String;
    .end local v17           #placeID:I
    .end local v18           #poi:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/futuredial/pim/G2Task;->URI_TodoTask:Landroid/net/Uri;

    invoke-virtual {v2, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 142
    .local v5, uriTask:Landroid/net/Uri;
    if-nez v5, :cond_a

    .line 144
    const-string v2, "G2Task"

    const-string v4, "fail in inserting task entry "

    invoke-static {v2, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v19, 0x4e33

    move/from16 v20, v19

    .line 146
    .end local v19           #ret:I
    .restart local v20       #ret:I
    goto/16 :goto_0

    .line 149
    .end local v20           #ret:I
    .restart local v19       #ret:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Task;->WrittenUri:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 155
    .local v10, cur:Landroid/database/Cursor;
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_c

    .line 157
    :cond_b
    const-string v2, "G2Task"

    const-string v4, "fail in querying the _id of the task which has just been inserted "

    invoke-static {v2, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v19, 0x4e33

    move/from16 v20, v19

    .line 159
    .end local v19           #ret:I
    .restart local v20       #ret:I
    goto/16 :goto_0

    .line 161
    .end local v20           #ret:I
    .restart local v19       #ret:I
    :cond_c
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 164
    .local v21, taskID:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/futuredial/pim/G2Task;->URI_TaskAlert:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task_Id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v12, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 165
    .local v22, updatedrows:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ge v0, v2, :cond_d

    .line 167
    const-string v2, "G2Task"

    const-string v4, "fail in updating the alert record of the task which has just been inserted "

    invoke-static {v2, v4}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v19, 0x4e33

    move/from16 v20, v19

    .line 169
    .end local v19           #ret:I
    .restart local v20       #ret:I
    goto/16 :goto_0

    .line 173
    .end local v10           #cur:Landroid/database/Cursor;
    .end local v20           #ret:I
    .end local v21           #taskID:I
    .end local v22           #updatedrows:I
    .restart local v19       #ret:I
    :cond_d
    const/16 v19, 0x0

    .end local v5           #uriTask:Landroid/net/Uri;
    :cond_e
    move/from16 v20, v19

    .line 176
    .end local v19           #ret:I
    .restart local v20       #ret:I
    goto/16 :goto_0
.end method

.method public getCounts()I
    .locals 9

    .prologue
    .line 182
    const/4 v6, 0x0

    .line 183
    .local v6, count:I
    iget-boolean v0, p0, Lcom/futuredial/pim/G2Task;->bInitialized:Z

    if-nez v0, :cond_0

    move v7, v6

    .line 199
    .end local v6           #count:I
    .local v7, count:I
    :goto_0
    return v7

    .line 187
    .end local v7           #count:I
    .restart local v6       #count:I
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_TodoTask:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "IsDeleted = 0 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 188
    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 190
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v8           #cur:Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v0, "[task query]"

    const-string v1, "the total count of task: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 199
    .end local v6           #count:I
    .restart local v7       #count:I
    goto :goto_0

    .line 194
    .end local v7           #count:I
    .restart local v6       #count:I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getPhoneMemCounts()I
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v6, 0x0

    .line 205
    .local v6, count:I
    iget-boolean v0, p0, Lcom/futuredial/pim/G2Task;->bInitialized:Z

    if-nez v0, :cond_0

    move v7, v6

    .line 227
    .end local v6           #count:I
    .local v7, count:I
    :goto_0
    return v7

    .line 207
    .end local v7           #count:I
    .restart local v6       #count:I
    :cond_0
    const-string v12, ""

    .line 208
    .local v12, strAccountID:Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->accountIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 210
    .local v10, id:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 211
    .local v11, singleID:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 216
    goto :goto_1

    .line 218
    .end local v10           #id:I
    .end local v11           #singleID:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/futuredial/pim/G2Task;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/G2Task;->URI_TodoTask:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and IsDeleted = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 219
    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 221
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 222
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_3
    const-string v0, "[task query]"

    const-string v1, "the count of task in phone memory: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 227
    .end local v6           #count:I
    .restart local v7       #count:I
    goto/16 :goto_0
.end method
