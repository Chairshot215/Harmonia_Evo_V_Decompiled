.class Lcom/android/mms/util/ContactNameCache$FilterHandler;
.super Landroid/os/Handler;
.source "ContactNameCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ContactNameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;
    }
.end annotation


# instance fields
.field mContactNameCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/util/ContactNameCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/mms/util/ContactNameCache;)V
    .locals 1
    .parameter "looper"
    .parameter "cache"

    .prologue
    .line 537
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 538
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    .line 539
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 549
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 738
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 552
    :pswitch_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 554
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingController;->cancelRefresh()V

    .line 559
    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$600()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/util/ContactNameCache$FilterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 561
    .local v17, m:Landroid/os/Message;
    const-wide/16 v4, 0x5dc

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/mms/util/ContactNameCache$FilterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 557
    .end local v17           #m:Landroid/os/Message;
    :cond_1
    const-string v2, "ContactNameCache"

    const-string v4, "NAMECACHE SINGLE QUERY FAST"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 565
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    .line 569
    .local v20, obj:Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_6

    .line 570
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v2

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Lcom/android/mms/util/ContactNameCache;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/provider/Telephony$namephoto;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 580
    .local v19, mdata:Landroid/provider/Telephony$namephoto;
    :goto_2
    move-object/from16 v0, v19

    iget-wide v4, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    .line 581
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 585
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 586
    .local v18, mName:Ljava/lang/String;
    if-nez v18, :cond_4

    .line 587
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v18

    .line 589
    :cond_4
    const/4 v9, 0x0

    .line 590
    .local v9, bMatched:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    .line 591
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_9

    .line 594
    const-string v2, "content://icc/fdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 595
    .local v3, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "number"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "emails"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 597
    .local v11, cFdn:Landroid/database/Cursor;
    if-eqz v11, :cond_9

    .line 598
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v15, fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;>;"
    const/4 v2, -0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 600
    :cond_5
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 601
    new-instance v14, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;-><init>(Lcom/android/mms/util/ContactNameCache$FilterHandler;)V

    .line 602
    .local v14, fdn:Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;->name:Ljava/lang/String;

    .line 603
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;->number:Ljava/lang/String;

    .line 604
    iget-object v2, v14, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 605
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 572
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #bMatched:Z
    .end local v11           #cFdn:Landroid/database/Cursor;
    .end local v14           #fdn:Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;
    .end local v15           #fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;>;"
    .end local v18           #mName:Ljava/lang/String;
    .end local v19           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_6
    :try_start_1
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v2

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/android/mms/util/ContactNameCache;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/provider/Telephony$namephoto;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .restart local v19       #mdata:Landroid/provider/Telephony$namephoto;
    goto/16 :goto_2

    .line 573
    .end local v19           #mdata:Landroid/provider/Telephony$namephoto;
    :catch_0
    move-exception v13

    .line 574
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ContactNameCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sms.getNamePhoto got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v19, Landroid/provider/Telephony$namephoto;

    invoke-direct/range {v19 .. v19}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 576
    .restart local v19       #mdata:Landroid/provider/Telephony$namephoto;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$900()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 607
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #bMatched:Z
    .restart local v11       #cFdn:Landroid/database/Cursor;
    .restart local v15       #fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;>;"
    .restart local v18       #mName:Ljava/lang/String;
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 610
    const/16 v16, 0x0

    .local v16, j:I
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_9

    .line 611
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;

    iget-object v2, v2, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;->number:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->fdn_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;

    iget-object v2, v2, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;->number:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 622
    :cond_8
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;

    iget-object v0, v2, Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 623
    const/4 v9, 0x1

    .line 637
    .end local v3           #uri:Landroid/net/Uri;
    .end local v11           #cFdn:Landroid/database/Cursor;
    .end local v15           #fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;>;"
    .end local v16           #j:I
    :cond_9
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1000()Ljava/util/Map;

    move-result-object v2

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1100()Ljava/util/Map;

    move-result-object v2

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget-wide v5, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1200()Ljava/util/Map;

    move-result-object v2

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget-boolean v5, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/mms/util/ContactNameCache;->setThreadMePhoto(Landroid/content/Context;)V
    invoke-static {v2, v4}, Lcom/android/mms/util/ContactNameCache;->access$1300(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;)V

    .line 644
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 647
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_b

    .line 649
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$900()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_a

    .line 650
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200f3

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/ContactNameCache;->access$902(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 651
    :cond_a
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$900()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 657
    :cond_b
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1400()Lcom/android/mms/util/ContactNameCache$PhotoCache;

    move-result-object v2

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v5}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_e

    .line 663
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingController;->refreshContactName()V

    goto/16 :goto_0

    .line 610
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v11       #cFdn:Landroid/database/Cursor;
    .restart local v15       #fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;>;"
    .restart local v16       #j:I
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 666
    .end local v3           #uri:Landroid/net/Uri;
    .end local v11           #cFdn:Landroid/database/Cursor;
    .end local v15           #fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ContactNameCache$FilterHandler$Fdn;>;"
    .end local v16           #j:I
    :cond_e
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 668
    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingController;->refreshContactName()V

    goto/16 :goto_0

    .line 687
    .end local v9           #bMatched:Z
    .end local v18           #mName:Ljava/lang/String;
    .end local v19           #mdata:Landroid/provider/Telephony$namephoto;
    .end local v20           #obj:Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;
    :pswitch_2
    const-string v2, "ContactNameCache"

    const-string v4, "NAMECACHE MULTIPLE QUERY"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    .line 689
    .restart local v20       #obj:Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/mms/util/ContactNameCache;->invalidate(Landroid/content/Context;)V

    .line 690
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache;

    #calls: Lcom/android/mms/util/ContactNameCache;->UpdateThreadsTableNameFiled()V
    invoke-static {v2}, Lcom/android/mms/util/ContactNameCache;->access$1500(Lcom/android/mms/util/ContactNameCache;)V

    goto/16 :goto_0

    .line 696
    .end local v20           #obj:Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;
    :pswitch_3
    const-string v2, "ContactNameCache"

    const-string v4, "MEPHOTO QUERY"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;

    .line 698
    .restart local v20       #obj:Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/mms/util/ContactNameCache;->setThreadMePhoto(Landroid/content/Context;)V
    invoke-static {v2, v4}, Lcom/android/mms/util/ContactNameCache;->access$1300(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 704
    .end local v20           #obj:Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/mms/util/ContactNameCache;

    .line 705
    .local v12, cache:Lcom/android/mms/util/ContactNameCache;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$500()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/mms/util/ContactNameCache;->initObserver(Landroid/content/Context;)V
    invoke-static {v12, v2}, Lcom/android/mms/util/ContactNameCache;->access$1600(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 709
    .end local v12           #cache:Lcom/android/mms/util/ContactNameCache;
    :pswitch_5
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$600()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 710
    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/util/ContactNameCache$FilterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 711
    .restart local v17       #m:Landroid/os/Message;
    const-wide/16 v4, 0x5dc

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/mms/util/ContactNameCache$FilterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 715
    .end local v17           #m:Landroid/os/Message;
    :cond_f
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 716
    .local v8, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1100()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 717
    .local v21, personId:Ljava/lang/Long;
    const/4 v10, 0x0

    .line 718
    .local v10, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_10

    .line 719
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$500()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v5, v2, v6}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 721
    :cond_10
    if-nez v10, :cond_12

    .line 722
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$900()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_11

    .line 723
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200f3

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/ContactNameCache;->access$902(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 724
    :cond_11
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$900()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 727
    :cond_12
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1400()Lcom/android/mms/util/ContactNameCache$PhotoCache;

    move-result-object v2

    invoke-virtual {v2, v8, v10}, Lcom/android/mms/util/ContactNameCache$PhotoCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache;

    #getter for: Lcom/android/mms/util/ContactNameCache;->mFilterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/util/ContactNameCache;->access$200(Lcom/android/mms/util/ContactNameCache;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 731
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingController;->refreshContactName()V

    goto/16 :goto_0

    .line 735
    .end local v8           #address:Ljava/lang/String;
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v21           #personId:Ljava/lang/Long;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/ContactNameCache$FilterHandler;->mContactNameCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ContactNameCache;

    #calls: Lcom/android/mms/util/ContactNameCache;->UpdateThreadsTableNameFiled()V
    invoke-static {v2}, Lcom/android/mms/util/ContactNameCache;->access$1500(Lcom/android/mms/util/ContactNameCache;)V

    goto/16 :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
