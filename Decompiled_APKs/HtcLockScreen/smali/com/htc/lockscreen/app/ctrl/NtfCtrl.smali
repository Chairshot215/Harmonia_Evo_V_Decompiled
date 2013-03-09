.class public Lcom/htc/lockscreen/app/ctrl/NtfCtrl;
.super Lcom/htc/lockscreen/app/ctrl/BaseCtrl;
.source "NtfCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/ctrl/NtfCtrl$1;,
        Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;,
        Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "NtfCtrl"

.field public static final STATE_REMOVE:I = 0x2

.field public static final STATE_SET:I = 0x1


# instance fields
.field public mNtfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;-><init>()V

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    .line 399
    return-void
.end method

.method public static getNotificationType(Ljava/lang/String;I)I
    .locals 2
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, type:I
    const-string v1, "com.android.phone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 180
    const/16 v1, 0x1771

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_2

    .line 181
    :cond_0
    const/4 v0, 0x1

    .line 194
    :cond_1
    :goto_0
    return v0

    .line 183
    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 184
    const/4 v0, 0x2

    goto :goto_0

    .line 187
    :cond_3
    const-string v1, "com.android.mms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 188
    const/4 v0, 0x3

    goto :goto_0

    .line 190
    :cond_4
    const-string v1, "com.htc.music"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 191
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method private updateNotification(Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;)V
    .locals 3
    .parameter "myNtf"

    .prologue
    .line 294
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->removeNotification(Ljava/lang/String;I)Z

    .line 296
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public genMyNotification(Ljava/lang/String;ILandroid/app/Notification;)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .locals 10
    .parameter "packageName"
    .parameter "id"
    .parameter "notification"

    .prologue
    const/16 v3, 0x3e9

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 198
    if-nez p3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    iget v1, p3, Landroid/app/Notification;->number:I

    if-ltz v1, :cond_0

    .line 203
    const/4 v7, 0x0

    .line 204
    .local v7, iconId:I
    invoke-static {p1, p2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->getNotificationType(Ljava/lang/String;I)I

    move-result v4

    .line 205
    .local v4, type:I
    const/4 v1, 0x1

    if-ne v4, v1, :cond_5

    .line 206
    const v7, 0x7f020033

    .line 225
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 228
    iget v1, p3, Landroid/app/Notification;->number:I

    if-nez v1, :cond_3

    if-eq v4, v2, :cond_3

    if-ne v4, v3, :cond_0

    .line 234
    :cond_3
    const-string v5, ""

    .line 235
    .local v5, title:Ljava/lang/String;
    const-string v6, ""

    .line 236
    .local v6, text:Ljava/lang/String;
    const/16 v1, 0x3e8

    if-ge v4, v1, :cond_4

    .line 237
    iget-object v1, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "lockscreen_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    iget-object v1, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "lockscreen_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 241
    :cond_4
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    iget-wide v8, p3, Landroid/app/Notification;->when:J

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;-><init>(Lcom/htc/lockscreen/app/ctrl/NtfCtrl;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 249
    .local v0, notfication:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    goto :goto_0

    .line 208
    .end local v0           #notfication:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    :cond_5
    if-ne v4, v2, :cond_6

    .line 209
    const v7, 0x7f020035

    goto :goto_1

    .line 211
    :cond_6
    const/4 v1, 0x3

    if-ne v4, v1, :cond_8

    .line 212
    invoke-static {}, Lcom/htc/lockscreen/app/util/MyUtil;->isChina()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 213
    const v7, 0x7f020031

    goto :goto_1

    .line 216
    :cond_7
    const v7, 0x7f020032

    goto :goto_1

    .line 219
    :cond_8
    if-ne v4, v3, :cond_2

    .line 220
    iget v1, p3, Landroid/app/Notification;->icon:I

    if-gtz v1, :cond_2

    goto :goto_0
.end method

.method public genMyNotification(Ljava/lang/String;ILcom/htc/lockscreen/ntf/HtcLSNotification;)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .locals 10
    .parameter "packageName"
    .parameter "id"
    .parameter "lsNotification"

    .prologue
    .line 253
    if-nez p3, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 257
    :cond_0
    const/16 v4, 0x64

    .line 258
    .local v4, type:I
    invoke-virtual {p3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIcon()I

    move-result v7

    .line 259
    .local v7, iconId:I
    invoke-virtual {p3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, title:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getDescript()Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, text:Ljava/lang/String;
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    invoke-virtual {p3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getWhen()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;-><init>(Lcom/htc/lockscreen/app/ctrl/NtfCtrl;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 270
    .local v0, notfication:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    goto :goto_0
.end method

.method public getCurrentNotification(Z)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .locals 15
    .parameter "rescan"

    .prologue
    .line 317
    iget-object v12, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    monitor-enter v12

    .line 318
    :try_start_0
    iget-object v11, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_0

    .line 319
    const/4 v11, 0x0

    monitor-exit v12

    .line 355
    :goto_0
    return-object v11

    .line 321
    :cond_0
    if-eqz p1, :cond_1

    .line 322
    iget-object v11, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    monitor-exit v12

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 325
    :cond_1
    const/4 v4, 0x0

    .line 327
    .local v4, ret:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    const-wide/16 v9, 0x0

    .line 328
    .local v9, when:J
    const/4 v8, -0x1

    .line 329
    .local v8, type:I
    const-wide/16 v6, 0x0

    .line 330
    .local v6, retWhen:J
    const/4 v5, -0x1

    .line 331
    .local v5, retType:I
    :try_start_1
    iget-object v11, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    .line 332
    .local v2, ntf:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    if-eqz v2, :cond_2

    .line 335
    iget-object v3, v2, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mPackageName:Ljava/lang/String;

    .line 336
    .local v3, pkgName:Ljava/lang/String;
    iget v1, v2, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mId:I

    .line 338
    .local v1, id:I
    const-string v11, "NtfCtrl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notification pkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v11, "NtfCtrl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notification id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->getType()I

    move-result v8

    .line 342
    const/16 v11, 0x3e9

    if-eq v8, v11, :cond_2

    .line 346
    invoke-virtual {v2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->getWhen()J

    move-result-wide v9

    .line 347
    cmp-long v11, v9, v6

    if-gtz v11, :cond_3

    cmp-long v11, v9, v6

    if-nez v11, :cond_2

    if-le v5, v8, :cond_2

    .line 349
    :cond_3
    move-wide v6, v9

    .line 350
    move v5, v8

    .line 351
    move-object v4, v2

    goto :goto_1

    .line 355
    .end local v1           #id:I
    .end local v2           #ntf:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v4

    goto :goto_0
.end method

.method public getNotifications()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;>;"
    iget-object v5, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    monitor-enter v5

    .line 382
    :try_start_0
    iget-object v4, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;>;"
    const/4 v3, 0x0

    .line 384
    .local v3, ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    check-cast v3, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    .line 386
    .restart local v3       #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    if-eqz v3, :cond_0

    .line 387
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;>;"
    .end local v3           #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "NtfCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNotifications:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit v5

    .line 396
    return-object v2

    .line 395
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 450
    return-void
.end method

.method protected handleMessageUI(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 456
    return-void
.end method

.method public isMusicNotifyExist()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 361
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    monitor-enter v3

    .line 362
    :try_start_0
    iget-object v4, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 363
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;>;"
    const/4 v1, 0x0

    .line 364
    .local v1, ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    check-cast v1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    .line 367
    .restart local v1       #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    if-eqz v1, :cond_0

    .line 368
    const-string v4, "com.htc.music"

    iget-object v5, v1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->mId:I

    if-ne v4, v2, :cond_0

    .line 370
    monitor-exit v3

    .line 375
    :goto_0
    return v2

    .line 374
    :cond_1
    monitor-exit v3

    .line 375
    const/4 v2, 0x0

    goto :goto_0

    .line 374
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;>;"
    .end local v1           #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removeNotification(Ljava/lang/String;I)Z
    .locals 4
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 301
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    monitor-enter v3

    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mNtfList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;>;"
    const/4 v1, 0x0

    .line 304
    .local v1, ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    check-cast v1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    .line 306
    .restart local v1       #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;->isSame(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 309
    const/4 v2, 0x1

    monitor-exit v3

    .line 312
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 313
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;>;"
    .end local v1           #ntfInList:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected startCtrl()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/NtfCtrl;Lcom/htc/lockscreen/app/ctrl/NtfCtrl$1;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NOTIFICATION_ADD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.intent.action.NOTIFICATION_REMOVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.intent.action.NOTIFICATION_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "HtcLockScreenSetNotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "HtcLockScreenRemoveNotfiication"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected stopCtrl()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    :cond_0
    return-void
.end method

.method updateNotification(Ljava/lang/String;ILandroid/app/Notification;)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 277
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->genMyNotification(Ljava/lang/String;ILandroid/app/Notification;)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    move-result-object v0

    .line 278
    .local v0, myNtf:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0, v0}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->updateNotification(Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;)V

    .line 281
    :cond_0
    return-object v0
.end method

.method updateNotification(Ljava/lang/String;ILcom/htc/lockscreen/ntf/HtcLSNotification;)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->genMyNotification(Ljava/lang/String;ILcom/htc/lockscreen/ntf/HtcLSNotification;)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    move-result-object v0

    .line 287
    .local v0, myNtf:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, v0}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->updateNotification(Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;)V

    .line 290
    :cond_0
    return-object v0
.end method
