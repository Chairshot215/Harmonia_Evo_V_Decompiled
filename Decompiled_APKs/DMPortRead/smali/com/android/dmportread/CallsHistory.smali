.class public Lcom/android/dmportread/CallsHistory;
.super Ljava/lang/Object;
.source "CallsHistory.java"


# static fields
.field private static _id_col:I

.field private static date_col:I

.field private static duration_col:I

.field private static number_col:I

.field private static type_col:I


# instance fields
.field public _id:I

.field public callId:I

.field public date:J

.field public duration:J

.field public number:Ljava/lang/String;

.field public type:S


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "cId"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lcom/android/dmportread/CallsHistory;->_id_col:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/dmportread/CallsHistory;->_id:I

    .line 28
    sget v0, Lcom/android/dmportread/CallsHistory;->number_col:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dmportread/CallsHistory;->number:Ljava/lang/String;

    .line 29
    sget v0, Lcom/android/dmportread/CallsHistory;->date_col:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dmportread/CallsHistory;->date:J

    .line 30
    sget v0, Lcom/android/dmportread/CallsHistory;->duration_col:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dmportread/CallsHistory;->duration:J

    .line 31
    sget v0, Lcom/android/dmportread/CallsHistory;->type_col:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/android/dmportread/CallsHistory;->type:S

    .line 32
    iput p3, p0, Lcom/android/dmportread/CallsHistory;->callId:I

    .line 33
    return-void
.end method

.method public static initiColInd(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 38
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 39
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Unable to get Cursor"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/CallsHistory;->_id_col:I

    .line 45
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/CallsHistory;->number_col:I

    .line 47
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/CallsHistory;->date_col:I

    .line 49
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/CallsHistory;->type_col:I

    .line 51
    const-string v0, "duration"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/CallsHistory;->duration_col:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object v6

    .line 53
    :catch_0
    move-exception v7

    .line 54
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "DMCmdSvs"

    const-string v1, "could not find column index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Could not find column index"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
