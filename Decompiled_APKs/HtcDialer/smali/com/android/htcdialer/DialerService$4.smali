.class Lcom/android/htcdialer/DialerService$4;
.super Lcom/htc/service/dialer/IDialerService$Stub;
.source "DialerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerService;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/DialerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-direct {p0}, Lcom/htc/service/dialer/IDialerService$Stub;-><init>()V

    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v0}, Lcom/android/htcdialer/DialerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    return-void
.end method

.method private notifyUpdateContact(JI)V
    .locals 5
    .parameter "contactId"
    .parameter "updateType"

    .prologue
    .line 1257
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :try_start_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1261
    :try_start_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3400()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1265
    :goto_0
    return-void

    .line 1260
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DialerService"

    const-string v2, "notifyUpdateContact"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public accessCache(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "type"
    .parameter "key"

    .prologue
    .line 1235
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallManagerInfo(Ljava/lang/String;)I
    .locals 12
    .parameter "number"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1356
    iget-object v5, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1357
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v6, :cond_5

    .line 1358
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1359
    .local v1, contactIds:[J
    if-eqz v1, :cond_5

    .line 1360
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_5

    .line 1361
    aget-wide v6, v1, v2

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    .line 1362
    monitor-exit v5

    .line 1381
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_0
    :goto_1
    return v3

    .line 1363
    .restart local v1       #contactIds:[J
    .restart local v2       #i:I
    :cond_1
    aget-wide v6, v1, v2

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1364
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 1365
    :cond_2
    aget-wide v6, v1, v2

    cmp-long v6, v6, v10

    if-lez v6, :cond_4

    .line 1366
    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    aget-wide v7, v1, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableContact;

    .line 1367
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_4

    .line 1368
    iget v6, v0, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    if-lez v6, :cond_3

    .line 1369
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 1371
    :cond_3
    iget v6, v0, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    if-lez v6, :cond_4

    .line 1372
    const/4 v3, 0x2

    monitor-exit v5

    goto :goto_1

    .line 1379
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1360
    .restart local v1       #contactIds:[J
    .restart local v2       #i:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1379
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getContactData(Ljava/lang/String;)Lcom/htc/service/dialer/ContactData;
    .locals 14
    .parameter "key"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 1396
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$4;->enforceReadPermission()V

    .line 1402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1403
    iget-object v1, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1405
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_3

    .line 1406
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1407
    .local v9, contactId:J
    cmp-long v1, v9, v3

    if-lez v1, :cond_a

    .line 1408
    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    move-object v8, v1

    .line 1410
    .local v8, contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_0
    if-eqz v8, :cond_a

    .line 1411
    new-instance v0, Lcom/htc/service/dialer/ContactData;

    iget-wide v1, v8, Lcom/android/htcdialer/search/SearchableContact;->id:J

    iget-object v3, v8, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    iget v5, v8, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    iget v6, v8, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    invoke-direct/range {v0 .. v6}, Lcom/htc/service/dialer/ContactData;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    .line 1414
    .local v0, contactData:Lcom/htc/service/dialer/ContactData;
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    if-lez v1, :cond_0

    .line 1415
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    .line 1416
    iget-object v1, v8, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, v8, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    :cond_0
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v1, :cond_2

    .line 1420
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    .line 1421
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    .line 1422
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v12, v1, :cond_2

    .line 1423
    iget-object v1, v0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    iget-object v2, v8, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    aput-object v2, v1, v12

    .line 1424
    iget-object v1, v0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    iget-object v2, v8, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v2, v2, v12

    iget v2, v2, Lcom/android/htcdialer/search/SearchablePhone;->type:I

    aput v2, v1, v12

    .line 1422
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v0           #contactData:Lcom/htc/service/dialer/ContactData;
    .end local v8           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v12           #i:I
    :cond_1
    move-object v8, v0

    .line 1408
    goto :goto_0

    .line 1427
    .restart local v0       #contactData:Lcom/htc/service/dialer/ContactData;
    .restart local v8       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_2
    monitor-exit v13

    move-object v1, v0

    .line 1462
    .end local v0           #contactData:Lcom/htc/service/dialer/ContactData;
    .end local v8           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v9           #contactId:J
    :goto_2
    return-object v1

    .line 1431
    :cond_3
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2100()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v9, v1

    .line 1432
    .local v9, contactId:Ljava/lang/Long;
    :goto_3
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 1433
    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    move-object v8, v1

    .line 1435
    .restart local v8       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_4
    if-eqz v8, :cond_a

    .line 1436
    new-instance v1, Lcom/htc/service/dialer/ContactData;

    iget-wide v2, v8, Lcom/android/htcdialer/search/SearchableContact;->id:J

    iget-object v4, v8, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/htc/service/dialer/ContactData;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    monitor-exit v13

    goto :goto_2

    .line 1459
    .end local v8           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v9           #contactId:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    move-object v9, v0

    .line 1431
    goto :goto_3

    .restart local v9       #contactId:Ljava/lang/Long;
    :cond_5
    move-object v8, v0

    .line 1433
    goto :goto_4

    .line 1439
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v1

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    move-object v11, v1

    .line 1441
    .local v11, contactIds:[J
    :goto_5
    if-eqz v11, :cond_a

    array-length v1, v11

    if-lez v1, :cond_a

    .line 1442
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_6
    array-length v1, v11

    if-ge v12, v1, :cond_a

    .line 1443
    aget-wide v1, v11, v12

    cmp-long v1, v1, v3

    if-ltz v1, :cond_9

    .line 1444
    aget-wide v1, v11, v12

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    .line 1445
    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    aget-wide v2, v11, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    move-object v8, v1

    .line 1447
    .restart local v8       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_7
    if-eqz v8, :cond_a

    .line 1448
    new-instance v1, Lcom/htc/service/dialer/ContactData;

    iget-wide v2, v8, Lcom/android/htcdialer/search/SearchableContact;->id:J

    iget-object v4, v8, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    iget v6, v8, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    iget v7, v8, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    invoke-direct/range {v1 .. v7}, Lcom/htc/service/dialer/ContactData;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    monitor-exit v13

    goto/16 :goto_2

    .end local v8           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v11           #contactIds:[J
    .end local v12           #i:I
    :cond_7
    move-object v11, v0

    .line 1439
    goto :goto_5

    .restart local v11       #contactIds:[J
    .restart local v12       #i:I
    :cond_8
    move-object v8, v0

    .line 1445
    goto :goto_7

    .line 1442
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1459
    .end local v9           #contactId:Ljava/lang/Long;
    .end local v11           #contactIds:[J
    .end local v12           #i:I
    :cond_a
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    move-object v1, v0

    .line 1462
    goto/16 :goto_2
.end method

.method public getRingtonePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 1285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1286
    iget-object v4, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1291
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    .line 1292
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v5

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1293
    .local v1, contactIds:[J
    if-eqz v1, :cond_4

    .line 1294
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 1295
    aget-wide v5, v1, v2

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    .line 1296
    monitor-exit v4

    .line 1314
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_0
    :goto_1
    return-object v3

    .line 1297
    .restart local v1       #contactIds:[J
    .restart local v2       #i:I
    :cond_1
    aget-wide v5, v1, v2

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 1294
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1298
    :cond_3
    aget-wide v5, v1, v2

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 1299
    sget-object v5, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableContact;

    .line 1300
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1306
    iget-object v3, v0, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    monitor-exit v4

    goto :goto_1

    .line 1312
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public needToHangupCall(Ljava/lang/String;)Z
    .locals 12
    .parameter "number"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1323
    iget-object v5, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1324
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    .line 1325
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1326
    .local v1, contactIds:[J
    if-eqz v1, :cond_4

    .line 1327
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_4

    .line 1328
    aget-wide v6, v1, v2

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    .line 1329
    monitor-exit v5

    .line 1343
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_0
    :goto_1
    return v3

    .line 1330
    .restart local v1       #contactIds:[J
    .restart local v2       #i:I
    :cond_1
    aget-wide v6, v1, v2

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1331
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 1332
    :cond_2
    aget-wide v6, v1, v2

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    .line 1333
    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    aget-wide v7, v1, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableContact;

    .line 1334
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_3

    iget v6, v0, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    if-lez v6, :cond_3

    .line 1335
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 1327
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1341
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_4
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public notifyDeleteContact(J)V
    .locals 1
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1272
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/DialerService$4;->notifyUpdateContact(JI)V

    .line 1273
    return-void
.end method

.method public notifyInsertCallLog(JLjava/lang/String;JIJ)V
    .locals 15
    .parameter "callLogId"
    .parameter "number"
    .parameter "date"
    .parameter "type"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1248
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1249
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v12

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x7

    new-instance v0, Lcom/android/htcdialer/search/SearchableCallLog;

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p7

    move-wide/from16 v5, p4

    move/from16 v8, p6

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/htcdialer/search/SearchableCallLog;-><init>(JJJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1253
    :cond_0
    return-void
.end method

.method public notifyInsertContact(J)V
    .locals 1
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1268
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/DialerService$4;->notifyUpdateContact(JI)V

    .line 1269
    return-void
.end method

.method public notifyModifyContact(J)V
    .locals 1
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1276
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/DialerService$4;->notifyUpdateContact(JI)V

    .line 1277
    return-void
.end method

.method public notifyUpdateCallLog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 1240
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1242
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$400()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1244
    :cond_0
    return-void
.end method

.method public updateCache(ILandroid/os/Bundle;)V
    .locals 16
    .parameter "type"
    .parameter "bundle"

    .prologue
    .line 1223
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1224
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v13

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x7

    new-instance v1, Lcom/android/htcdialer/search/SearchableCallLog;

    const-string v2, "callLogId"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "contactId"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "date"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v8, 0x1

    const-string v9, "type"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "cityId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "cname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcom/android/htcdialer/search/SearchableCallLog;-><init>(JJJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    :cond_0
    return-void
.end method
