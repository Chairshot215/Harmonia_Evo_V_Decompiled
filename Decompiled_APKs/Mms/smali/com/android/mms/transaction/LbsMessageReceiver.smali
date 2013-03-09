.class public Lcom/android/mms/transaction/LbsMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LbsMessageReceiver.java"


# static fields
.field static final COLUMN_APP_PREFIX:I = 0x1

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_MESSAGE_TEXT:I = 0x2

.field public static final LBS_MESSAGE_RECEIVED_DELETE_ACTION:Ljava/lang/String; = "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_DELETE"

.field public static final LBS_MESSAGE_RECEIVED_MAPPING_ACTION:Ljava/lang/String; = "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_MAPPING"

.field public static final LBS_MESSAGE_RECEIVED_SET_ACTION:Ljava/lang/String; = "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_SET"

.field public static final LBS_MESSAGE_RECEIVED_UPDATE_ACTION:Ljava/lang/String; = "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_UPDATE"

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final STATUS_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "LbsMessageReceiver"

.field public static final VCASTCLASSNAME:Ljava/lang/String; = "com.gravitymobile.app.hornbill.HornbillActivity"

.field public static final VCASTPKGNAME:Ljava/lang/String; = "com.gravitymobile.app.hornbill"

.field public static final VCASTSMSPREFIX:Ljava/lang/String; = "//VZWbodpa:"


# instance fields
.field private mContext:Landroid/content/Context;

.field turi:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "app_prefix"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "message_text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/LbsMessageReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 58
    const-string v0, "content://lbssms2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/LbsMessageReceiver;->STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    const-string v0, "content://lbssms2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    return-void
.end method

.method private customerSpecified(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "key"
    .parameter "keyvalue"

    .prologue
    const/4 v5, 0x0

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, smsMessage:Ljava/lang/String;
    const-string v6, "//VZWbodpa:"

    const-string v7, "//VZWbodpa:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, vcasePreString:Ljava/lang/String;
    const-string v6, "LbsMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " vcasePreString: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v6, "LbsMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " smsMessage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 340
    const-string v5, "LbsMessageReceiver"

    const-string v6, "Got VCast type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v5, "LbsMessageReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " keyvalue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v2, odpIntent:Landroid/content/Intent;
    const/high16 v1, 0x1042

    .line 347
    .local v1, flags:I
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.gravitymobile.app.hornbill"

    const-string v7, "com.gravitymobile.app.hornbill.HornbillActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 350
    const-string v5, "request"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vzw://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v5, "LbsMessageReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start VCast acitivity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    const/4 v5, 0x1

    .line 364
    .end local v1           #flags:I
    .end local v2           #odpIntent:Landroid/content/Intent;
    :goto_1
    return v5

    .line 355
    .restart local v1       #flags:I
    .restart local v2       #odpIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    goto :goto_0

    .line 362
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #flags:I
    .end local v2           #odpIntent:Landroid/content/Intent;
    :cond_0
    const-string v6, "LbsMessageReceiver"

    const-string v7, "not equal return false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleLbsSmsDelete(Landroid/content/Intent;)V
    .locals 18
    .parameter "intent"

    .prologue
    .line 179
    const-string v1, "LbsMessageReceiver"

    const-string v2, "Del LBS record"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, "deleteall"

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 183
    .local v7, bDelAll:Z
    const/4 v1, 0x1

    if-ne v7, v1, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/LbsMessageReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 194
    .local v8, cursor:Landroid/database/Cursor;
    const-string v1, "prefixArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, key:[Ljava/lang/String;
    const-string v1, "textArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, keyvalue:[Ljava/lang/String;
    const-string v1, "LbsMessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete key/keyvalue are: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v11, :cond_5

    array-length v1, v11

    if-lez v1, :cond_5

    .line 199
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v11

    if-ge v10, v1, :cond_6

    .line 200
    aget-object v14, v11, v10

    .line 202
    .local v14, prefixstr:Ljava/lang/String;
    const-string v1, "LbsMessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get delete request (prefix): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v9, 0x0

    .line 205
    .local v9, findid:I
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    const/16 v16, 0x0

    .line 209
    .local v16, s_appprefix:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 210
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const-string v1, "LbsMessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found record with prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    int-to-long v2, v9

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 214
    .local v17, suri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    .end local v17           #suri:Landroid/net/Uri;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    .end local v16           #s_appprefix:Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 222
    .end local v9           #findid:I
    .end local v10           #i:I
    .end local v14           #prefixstr:Ljava/lang/String;
    :cond_5
    const-string v1, "LbsMessageReceiver"

    const-string v2, "key is null or length < 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_6
    if-eqz v12, :cond_a

    array-length v1, v12

    if-lez v1, :cond_a

    .line 226
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    array-length v1, v12

    if-ge v10, v1, :cond_b

    .line 227
    aget-object v13, v12, v10

    .line 229
    .local v13, msgstr:Ljava/lang/String;
    const-string v1, "LbsMessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get delete request (ap): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v9, 0x0

    .line 232
    .restart local v9       #findid:I
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 233
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 234
    const/4 v15, 0x0

    .line 236
    .local v15, s_appText:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 237
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 238
    const-string v1, "LbsMessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found record with ap name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    int-to-long v2, v9

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 241
    .restart local v17       #suri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    .end local v17           #suri:Landroid/net/Uri;
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 226
    .end local v15           #s_appText:Ljava/lang/String;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 249
    .end local v9           #findid:I
    .end local v10           #i:I
    .end local v13           #msgstr:Ljava/lang/String;
    :cond_a
    const-string v1, "LbsMessageReceiver"

    const-string v2, "ap list is null or length < 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_b
    if-eqz v8, :cond_0

    .line 252
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private handleLbsSmsMapping(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 263
    const-string v0, "prefixStr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, key:Ljava/lang/String;
    const-string v0, "textStr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, keyvalue:Ljava/lang/String;
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got mapping request pair0000: --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--/--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v9, v10}, Lcom/android/mms/transaction/LbsMessageReceiver;->customerSpecified(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/transaction/LbsMessageReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 278
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 279
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got mapping request pair: --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--/--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v8, 0x0

    .line 282
    .local v8, findid:I
    if-eqz v6, :cond_5

    .line 283
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursorcount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 289
    const/4 v11, 0x0

    .line 290
    .local v11, s_appprefix:Ljava/lang/String;
    const/4 v12, 0x0

    .line 292
    .local v12, s_msgtext:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 294
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 296
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 297
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v13, targetintent:Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LBS launch ap and pass data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, "WAKE_UP_SMS_MSG"

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :cond_3
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LBS Broadcast to Startactivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v8           #findid:I
    .end local v11           #s_appprefix:Ljava/lang/String;
    .end local v12           #s_msgtext:Ljava/lang/String;
    .end local v13           #targetintent:Landroid/content/Intent;
    :cond_4
    :goto_2
    if-eqz v6, :cond_0

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 285
    .restart local v8       #findid:I
    :cond_5
    const-string v0, "LbsMessageReceiver"

    const-string v1, "LBS cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 308
    .restart local v11       #s_appprefix:Ljava/lang/String;
    .restart local v12       #s_msgtext:Ljava/lang/String;
    .restart local v13       #targetintent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 309
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 314
    .end local v7           #e:Ljava/lang/Exception;
    .end local v13           #targetintent:Landroid/content/Intent;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 318
    .end local v8           #findid:I
    .end local v11           #s_appprefix:Ljava/lang/String;
    .end local v12           #s_msgtext:Ljava/lang/String;
    :cond_7
    const-string v0, "LbsMessageReceiver"

    const-string v1, "Insert empty or not mapped key/value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleLbsSmsSet(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/transaction/LbsMessageReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "prefixArray"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, key:[Ljava/lang/String;
    const-string v0, "textArray"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, keyvalue:[Ljava/lang/String;
    array-length v0, v9

    if-lez v0, :cond_4

    array-length v0, v9

    array-length v1, v10

    if-ne v0, v1, :cond_4

    .line 100
    const-string v0, "LbsMessageReceiver"

    const-string v1, "key pair length > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v12, 0x0

    .line 103
    .local v12, prefixstr:Ljava/lang/String;
    const/4 v11, 0x0

    .line 104
    .local v11, msgstr:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v9

    if-ge v8, v0, :cond_5

    .line 105
    aget-object v12, v9, v8

    .line 106
    aget-object v11, v10, v8

    .line 108
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got inser request pair: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v7, 0x0

    .line 111
    .local v7, findid:I
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    const/4 v13, 0x0

    .line 115
    .local v13, s_appprefix:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 116
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 123
    .end local v13           #s_appprefix:Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 124
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "app_prefix"

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "message_text"

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-lez v7, :cond_3

    .line 128
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find record, insert to it: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    int-to-long v4, v7

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 130
    .local v2, suri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    .end local v2           #suri:Landroid/net/Uri;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 120
    .end local v3           #values:Landroid/content/ContentValues;
    .restart local v13       #s_appprefix:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 132
    .end local v13           #s_appprefix:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v0, "LbsMessageReceiver"

    const-string v1, "new record, insert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    invoke-static {v0, v1, v4, v3}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 138
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v7           #findid:I
    .end local v8           #i:I
    .end local v11           #msgstr:Ljava/lang/String;
    .end local v12           #prefixstr:Ljava/lang/String;
    :cond_4
    const-string v0, "LbsMessageReceiver"

    const-string v1, "Insert empty or not mapped key/value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_5
    if-eqz v6, :cond_6

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_6
    return-void
.end method

.method private handleLbsSmsUpdate(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    .line 148
    const-string v0, "prefixArray"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, key:[Ljava/lang/String;
    const-string v0, "textArray"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, keyvalue:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 152
    .local v11, updateid:I
    if-ge v11, v12, :cond_0

    .line 153
    array-length v0, v7

    if-lez v0, :cond_0

    array-length v0, v7

    array-length v1, v8

    if-ne v0, v1, :cond_0

    .line 154
    const-string v0, "LbsMessageReceiver"

    const-string v1, "Update pair length > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v10, 0x0

    .line 157
    .local v10, prefixstr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 158
    .local v9, msgstr:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_0

    .line 159
    aget-object v10, v7, v6

    .line 160
    aget-object v9, v8, v6

    .line 162
    const-string v0, "LbsMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got pair: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 165
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "app_prefix"

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "message_text"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "LbsMessageReceiver"

    const-string v1, "Call update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->turi:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app_prefix=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 173
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v6           #i:I
    .end local v9           #msgstr:Ljava/lang/String;
    .end local v10           #prefixstr:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/mms/transaction/LbsMessageReceiver;->mContext:Landroid/content/Context;

    .line 66
    const-string v1, "LbsMessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v1, "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string v1, "LbsMessageReceiver"

    const-string v2, "call handleLbsSmsSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/LbsMessageReceiver;->handleLbsSmsSet(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    const-string v1, "LbsMessageReceiver"

    const-string v2, "call handleLbsSmsUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/LbsMessageReceiver;->handleLbsSmsUpdate(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :cond_3
    const-string v1, "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_DELETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    const-string v1, "LbsMessageReceiver"

    const-string v2, "call handleLbsSmsDelete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/LbsMessageReceiver;->handleLbsSmsDelete(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    :cond_4
    const-string v1, "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_MAPPING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "LbsMessageReceiver"

    const-string v2, "call handleLbsSmsMapping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/LbsMessageReceiver;->handleLbsSmsMapping(Landroid/content/Intent;)V

    goto :goto_0
.end method
