.class Lcom/android/phone/NotificationMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    .line 396
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 397
    return-void
.end method

.method private final getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$NotifyMissedCall;
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 517
    new-instance v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr$NotifyMissedCall;-><init>(Lcom/android/phone/NotificationMgr;)V

    .line 518
    .local v0, n:Lcom/android/phone/NotificationMgr$NotifyMissedCall;
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mName:Ljava/lang/String;

    .line 519
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    .line 520
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mLabel:Ljava/lang/String;

    .line 521
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mDate:J

    .line 522
    sget-boolean v1, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v1, :cond_3

    .line 523
    const-string v1, "city_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mCityId:Ljava/lang/String;

    .line 533
    :goto_0
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    :cond_0
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    .line 540
    :cond_1
    const-string v1, "contact_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mContactId:J

    .line 541
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mPhotoId:J

    .line 542
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mPhoto:Landroid/graphics/Bitmap;

    .line 551
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationInfo constructed for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 554
    :cond_2
    return-object v0

    .line 526
    :cond_3
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mCityId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 420
    packed-switch p1, :pswitch_data_0

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 422
    :pswitch_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v1, "call log query complete."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 426
    :cond_1
    if-eqz p3, :cond_0

    .line 428
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 429
    .local v8, count:I
    if-lez v8, :cond_4

    .line 431
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    add-int/lit8 v1, v8, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$412(Lcom/android/phone/NotificationMgr;I)I

    .line 432
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify miss call number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$400(Lcom/android/phone/NotificationMgr;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 434
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 435
    invoke-direct {p0, p3}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$NotifyMissedCall;

    move-result-object v2

    .line 437
    .local v2, n:Lcom/android/phone/NotificationMgr$NotifyMissedCall;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify last miss call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$500(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v0

    const/4 v1, -0x2

    sget-object v3, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    iget-object v4, v2, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v7, "name ASC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .end local v2           #n:Lcom/android/phone/NotificationMgr$NotifyMissedCall;
    :cond_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v1, "closing call log cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 461
    :cond_5
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #calls: Lcom/android/phone/NotificationMgr;->closeCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 466
    .end local v8           #count:I
    :pswitch_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 467
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v1, "contact query complete."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 470
    :cond_6
    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    move-object v2, p2

    .line 471
    check-cast v2, Lcom/android/phone/NotificationMgr$NotifyMissedCall;

    .line 473
    .restart local v2       #n:Lcom/android/phone/NotificationMgr$NotifyMissedCall;
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    if-eqz v2, :cond_8

    .line 478
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 480
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " found for phone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 483
    :cond_7
    const-string v0, "name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mName:Ljava/lang/String;

    .line 488
    :cond_8
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$700()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 489
    .local v9, msg:Landroid/os/Message;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$700()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 496
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v1, "closing contact cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 503
    .end local v2           #n:Lcom/android/phone/NotificationMgr$NotifyMissedCall;
    .end local v9           #msg:Landroid/os/Message;
    :cond_9
    if-eqz p3, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #calls: Lcom/android/phone/NotificationMgr;->closeCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
