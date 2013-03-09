.class public Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupRemoveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupRemoveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/group/GroupRemoveActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupRemoveActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 405
    invoke-virtual {p1}, Lcom/android/htccontacts/group/GroupRemoveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 408
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 410
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupRemoveActivity;

    .line 412
    .local v0, obj:Lcom/android/htccontacts/group/GroupRemoveActivity;
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 413
    if-eqz v0, :cond_0

    .line 414
    iput-boolean v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDeleteToken1Return:Z

    .line 415
    iput-boolean v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDeleteToken2Return:Z

    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 465
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupRemoveActivity;

    .line 466
    .local v0, activity:Lcom/android/htccontacts/group/GroupRemoveActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    if-ne p1, v3, :cond_4

    .line 471
    iput-boolean v3, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDeleteToken1Return:Z

    .line 475
    :cond_2
    :goto_1
    iget-boolean v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDeleteToken1Return:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDeleteToken2Return:Z

    if-eqz v2, :cond_3

    .line 476
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 477
    :cond_3
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/group/GroupRemoveActivity;->dismissDialog(I)V

    .line 478
    #getter for: Lcom/android/htccontacts/group/GroupRemoveActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->access$200(Lcom/android/htccontacts/group/GroupRemoveActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x101

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-string v2, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupRemoveActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 472
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 473
    iput-boolean v3, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDeleteToken2Return:Z

    goto :goto_1
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupRemoveActivity$QueryHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupRemoveActivity;

    .line 422
    .local v0, activity:Lcom/android/htccontacts/group/GroupRemoveActivity;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->isDirty:Z

    .line 423
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    #calls: Lcom/android/htccontacts/group/GroupRemoveActivity;->setCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/htccontacts/group/GroupRemoveActivity;->access$000(Lcom/android/htccontacts/group/GroupRemoveActivity;Landroid/database/Cursor;)V

    .line 425
    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->setAdapter()V

    .line 426
    if-eqz p3, :cond_0

    .line 428
    :try_start_0
    const-string v2, "_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mGroupIDIdx:I

    .line 430
    const-string v2, "title"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mGroupNameIdx:I

    .line 434
    const-string v2, "summ_count"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mGroupMemberCountIdx:I

    .line 436
    const-string v2, "photo"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/htccontacts/group/GroupRemoveActivity;->mGroupPhotoIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "GroupRemoveActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete - Database column not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 452
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    if-eqz p3, :cond_0

    .line 454
    if-eqz v0, :cond_2

    .line 455
    #getter for: Lcom/android/htccontacts/group/GroupRemoveActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupRemoveActivity;->access$100(Lcom/android/htccontacts/group/GroupRemoveActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 457
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
