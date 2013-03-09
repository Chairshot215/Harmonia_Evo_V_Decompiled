.class public final Lcom/htc/provider/HtcContactsContract$Frequency;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frequency"
.end annotation


# static fields
.field public static final FREQUENT_LIST_URI:Landroid/net/Uri; = null

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INCOMING_CALL:I = 0x2

.field public static final INCOMING_MAIL:I = 0x6

.field public static final INCOMING_MSG:I = 0x4

.field public static final IN_COMING:I = 0x1

.field public static final KEY_DATA_ID:Ljava/lang/String; = "data_id"

.field public static final MAX_FREQUENT_LIST_LIMIT:I = 0x12

.field public static final OUTGOING_CALL:I = 0x1

.field public static final OUTGOING_MAIL:I = 0x5

.field public static final OUTGOING_MSG:I = 0x3

.field public static final OUT_GOING:I = 0x0

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final TIMES:Ljava/lang/String; = "times"

.field public static final TYPE:Ljava/lang/String; = "type"

.field private static final UPDATE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1211
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "frequency/update"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Frequency;->UPDATE_URI:Landroid/net/Uri;

    .line 1212
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "frequency/query"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Frequency;->FREQUENT_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBatchReset(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V
    .locals 12
    .parameter "resolver"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1265
    .local p2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 1266
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/frequency/reset/%d/type/%d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1267
    .local v3, formatting:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1268
    .local v5, operation:Landroid/content/ContentProviderOperation;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    .local v6, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1270
    .local v1, cId:J
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1271
    .local v8, uriStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1272
    .local v7, uri:Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 1274
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1277
    .end local v1           #cId:J
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #uriStr:Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v9, "com.android.contacts"

    invoke-virtual {p0, v9, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :goto_1
    return-void

    .line 1279
    :catch_0
    move-exception v9

    goto :goto_1

    .line 1278
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method public static markAsFromCall(Landroid/content/ContentResolver;IJJ)V
    .locals 6
    .parameter "resolver"
    .parameter "in_out"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 1227
    if-nez p1, :cond_0

    const/4 v1, 0x1

    .local v1, type:I
    :goto_0
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 1228
    invoke-static/range {v0 .. v5}, Lcom/htc/provider/HtcContactsContract$Frequency;->markFrquency(Landroid/content/ContentResolver;IJJ)V

    .line 1229
    return-void

    .line 1227
    .end local v1           #type:I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static markAsFromMail(Landroid/content/ContentResolver;IJJ)V
    .locals 6
    .parameter "resolver"
    .parameter "in_out"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 1237
    if-nez p1, :cond_0

    const/4 v1, 0x5

    .local v1, type:I
    :goto_0
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 1238
    invoke-static/range {v0 .. v5}, Lcom/htc/provider/HtcContactsContract$Frequency;->markFrquency(Landroid/content/ContentResolver;IJJ)V

    .line 1239
    return-void

    .line 1237
    .end local v1           #type:I
    :cond_0
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public static markAsFromMsg(Landroid/content/ContentResolver;IJJ)V
    .locals 6
    .parameter "resolver"
    .parameter "in_out"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 1232
    if-nez p1, :cond_0

    const/4 v1, 0x3

    .local v1, type:I
    :goto_0
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 1233
    invoke-static/range {v0 .. v5}, Lcom/htc/provider/HtcContactsContract$Frequency;->markFrquency(Landroid/content/ContentResolver;IJJ)V

    .line 1234
    return-void

    .line 1232
    .end local v1           #type:I
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public static markFrquency(Landroid/content/ContentResolver;IJJ)V
    .locals 4
    .parameter "resolver"
    .parameter "type"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    const/4 v3, 0x0

    .line 1242
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1243
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "data_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1244
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    const-string v1, "raw_contact_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1246
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Frequency;->UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1247
    return-void
.end method

.method public static resetContactForCall(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "resolver"
    .parameter "in_out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1250
    .local p2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1251
    .local v0, type:I
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/htc/provider/HtcContactsContract$Frequency;->applyBatchReset(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V

    .line 1252
    return-void

    .line 1250
    .end local v0           #type:I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static resetContactForMail(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "resolver"
    .parameter "in_out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1260
    .local p2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x5

    .line 1261
    .local v0, type:I
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/htc/provider/HtcContactsContract$Frequency;->applyBatchReset(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V

    .line 1262
    return-void

    .line 1260
    .end local v0           #type:I
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static resetContactForMsg(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "resolver"
    .parameter "in_out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1255
    .local p2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x3

    .line 1256
    .local v0, type:I
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/htc/provider/HtcContactsContract$Frequency;->applyBatchReset(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V

    .line 1257
    return-void

    .line 1255
    .end local v0           #type:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
