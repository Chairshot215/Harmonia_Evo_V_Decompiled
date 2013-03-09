.class public Lcom/android/mms/ui/DeliveryReportActivity;
.super Landroid/app/Activity;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;,
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    }
.end annotation


# static fields
.field static final COLUMN_DELIVERY_DATE:I = 0x3

.field static final COLUMN_DELIVERY_REPORT:I = 0x1

.field static final COLUMN_DELIVERY_STATUS:I = 0x1

.field static final COLUMN_READ_DATE:I = 0x4

.field static final COLUMN_READ_REPORT:I = 0x2

.field static final COLUMN_READ_STATUS:I = 0x2

.field static final COLUMN_RECIPIENT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DeliveryReportActivity"

.field static final MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sMsgId:J

.field private static sReportTypeId:I


# instance fields
.field private mMessageId:J

.field private mMessageType:Ljava/lang/String;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "d_rpt"

    aput-object v1, v0, v3

    const-string v1, "rr"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "delivery_status"

    aput-object v1, v0, v3

    const-string v1, "read_status"

    aput-object v1, v0, v4

    const-string v1, "dr_date"

    aput-object v1, v0, v5

    const-string v1, "rr_date"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 90
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "status"

    aput-object v1, v0, v3

    const-string v1, "report_date"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 111
    sput v2, Lcom/android/mms/ui/DeliveryReportActivity;->sReportTypeId:I

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    .line 115
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 242
    new-instance v0, Lcom/android/mms/ui/DeliveryReportActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeliveryReportActivity$2;-><init>(Lcom/android/mms/ui/DeliveryReportActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 644
    return-void
.end method

.method private getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J
    .locals 5
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const-wide/16 v3, 0x0

    .line 264
    const-wide/16 v0, 0x0

    .line 266
    .local v0, msgId:J
    if-eqz p1, :cond_0

    .line 267
    const-string v2, "message_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 270
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 271
    const-string v2, "message_id"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 274
    :cond_1
    return-wide v0
.end method

.method private getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "icicle"
    .parameter "intent"

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, msgType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 281
    const-string v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_0
    if-nez v0, :cond_1

    .line 285
    const-string v1, "message_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_1
    return-object v0
.end method

.method private static getMmsReportDateText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    const-wide/16 v7, 0x3e8

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 355
    if-nez p1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-object v2

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, recipient:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_1
    invoke-static {p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-result-object v1

    .line 364
    .local v1, status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isReadReportRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    iget v3, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    if-eqz v3, :cond_3

    .line 373
    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readDate:J

    mul-long/2addr v4, v7

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, timestamp:Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    const-string v2, ""

    goto :goto_0

    .line 361
    .end local v1           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v2           #timestamp:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 384
    .restart local v1       #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_3
    iget v3, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    if-eqz v3, :cond_4

    .line 388
    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryDate:J

    mul-long/2addr v4, v7

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .line 391
    .restart local v2       #timestamp:Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    const-string v2, ""

    goto :goto_0

    .line 399
    .end local v2           #timestamp:Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method

.method private static getMmsReportItems(Z)Ljava/util/List;
    .locals 10
    .parameter "bNeedStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-static {}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportRequests()Ljava/util/List;

    move-result-object v3

    .line 471
    .local v3, reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    if-nez v3, :cond_1

    .line 492
    :cond_0
    return-object v1

    .line 475
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 479
    invoke-static {}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatus()Ljava/util/Map;

    move-result-object v4

    .line 480
    .local v4, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    .line 482
    .local v2, reportReq:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
    const-string v5, ""

    .line 484
    .local v5, statusText:Ljava/lang/String;
    if-nez p0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4

    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isDeliveryReportRequested()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isReadReportRequested()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 486
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v8, 0x7f0900da

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v4}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 488
    :cond_4
    new-instance v6, Lcom/android/mms/ui/DeliveryReportItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v9, 0x7f0900d9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportDateText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v5, v8}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getMmsReportItems2()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 496
    invoke-static {}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportRequests()Ljava/util/List;

    move-result-object v3

    .line 497
    .local v3, reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    if-nez v3, :cond_1

    .line 512
    :cond_0
    return-object v1

    .line 501
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    invoke-static {}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatus()Ljava/util/Map;

    move-result-object v4

    .line 506
    .local v4, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    .line 508
    .local v2, reportReq:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
    invoke-static {v2, v4}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, statusText:Ljava/lang/String;
    new-instance v6, Lcom/android/mms/ui/DeliveryReportItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportDateText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v5, v8}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getMmsReportRequests()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 562
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 566
    .local v2, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowBccRecipientStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 569
    .local v7, builder:Landroid/net/Uri$Builder;
    sget-wide v0, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 570
    const-string v0, "queryCcBcc"

    const-string v1, "1"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 571
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 574
    .end local v7           #builder:Landroid/net/Uri$Builder;
    :cond_0
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 577
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 596
    :goto_0
    return-object v4

    .line 582
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_2

    .line 596
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 586
    :cond_2
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v9, reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    new-instance v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;-><init>(Ljava/lang/String;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 596
    .end local v9           #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0

    .restart local v9       #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :cond_3
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    move-object v4, v9

    goto :goto_0
.end method

.method private static getMmsReportStatus()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 516
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 520
    .local v2, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowBccRecipientStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 523
    .local v10, builder:Landroid/net/Uri$Builder;
    sget-wide v0, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 524
    const-string v0, "queryCcBcc"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 525
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 528
    .end local v10           #builder:Landroid/net/Uri$Builder;
    :cond_0
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 531
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 557
    :goto_0
    return-object v4

    .line 536
    :cond_1
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 539
    .local v13, statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 541
    .local v12, recipient:Ljava/lang/String;
    invoke-static {v12}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v12}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 544
    :goto_2
    new-instance v3, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;-><init>(IIJJ)V

    .line 552
    .local v3, status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    invoke-interface {v13, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 557
    .end local v3           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v12           #recipient:Ljava/lang/String;
    .end local v13           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :catchall_0
    move-exception v0

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0

    .line 541
    .restart local v12       #recipient:Ljava/lang/String;
    .restart local v13       #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_2
    :try_start_1
    invoke-static {v12}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_2

    .line 557
    .end local v12           #recipient:Ljava/lang/String;
    :cond_3
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    move-object v4, v13

    goto :goto_0
.end method

.method private static getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    const v3, 0x7f0900d3

    .line 406
    if-nez p1, :cond_0

    .line 408
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    :goto_0
    return-object v2

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, recipient:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    :goto_1
    invoke-static {p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-result-object v1

    .line 415
    .local v1, status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    if-nez v1, :cond_2

    .line 417
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 412
    .end local v1           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_1
    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 420
    .restart local v1       #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isReadReportRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 421
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    if-eqz v2, :cond_3

    .line 423
    const v2, 0x7f0901f9

    sput v2, Lcom/android/mms/ui/DeliveryReportActivity;->sReportTypeId:I

    .line 425
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    packed-switch v2, :pswitch_data_0

    .line 434
    :cond_3
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 447
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v3, 0x7f0900d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 427
    :pswitch_0
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 429
    :pswitch_1
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v3, 0x7f0900d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 436
    :sswitch_0
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 439
    :sswitch_1
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 441
    :sswitch_2
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v3, 0x7f0900d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 444
    :sswitch_3
    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v3, 0x7f090126

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_3
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method static getReportItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "sms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsReportItems()Ljava/util/List;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportItems(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static getReportItemsWithStatus(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    const-string v0, "sms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsReportItems()Ljava/util/List;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportItems(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSmsReportItems()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, selection:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 318
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 349
    :goto_0
    return-object v5

    .line 323
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 349
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 327
    :cond_1
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v9, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    const-string v0, "report_date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 330
    .local v10, mDate:J
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 331
    .local v12, ntype:I
    const-string v8, ""

    .line 332
    .local v8, date:Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_2

    .line 334
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringFullEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 337
    const-string v0, "null"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    const-string v8, ""

    .line 340
    :cond_2
    new-instance v0, Lcom/android/mms/ui/DeliveryReportItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v3, 0x7f0900d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v5, 0x7f0900da

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3, v12}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsStatusText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 349
    .end local v8           #date:Ljava/lang/String;
    .end local v9           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .end local v10           #mDate:J
    .end local v12           #ntype:I
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0

    .restart local v9       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    :cond_3
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    move-object v5, v9

    goto/16 :goto_0
.end method

.method private static getSmsStatusText(II)Ljava/lang/String;
    .locals 2
    .parameter "status"
    .parameter "type"

    .prologue
    const v1, 0x7f0900d3

    .line 601
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 603
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 604
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v1, 0x20c0210

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    .line 605
    :cond_0
    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 606
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 608
    :cond_1
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_2
    const/16 v0, 0x40

    if-lt p0, v0, :cond_3

    .line 612
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_3
    const/16 v0, 0x20

    if-lt p0, v0, :cond_4

    .line 615
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 618
    :cond_4
    sget-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initListAdapter()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 187
    const v4, 0x7f0901f5

    sput v4, Lcom/android/mms/ui/DeliveryReportActivity;->sReportTypeId:I

    .line 190
    iget-object v4, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItemsWithStatus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-nez v2, :cond_0

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    new-instance v4, Lcom/android/mms/ui/DeliveryReportItem;

    const-string v5, ""

    const v6, 0x7f0900d2

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v4, v5, v6, v7}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v4, "DeliveryReportActivity"

    const-string v5, "cursor == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    new-instance v0, Lcom/android/mms/ui/DeliveryReportAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/DeliveryReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 201
    .local v0, adapter:Lcom/android/mms/ui/DeliveryReportAdapter;
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v8, v8, v8}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 206
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    sget v4, Lcom/android/mms/ui/DeliveryReportActivity;->sReportTypeId:I

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 210
    const v4, 0x7f0200d1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 213
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 215
    const v4, 0x104000a

    iget-object v5, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 216
    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 217
    new-instance v4, Lcom/android/mms/ui/DeliveryReportActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/DeliveryReportActivity$1;-><init>(Lcom/android/mms/ui/DeliveryReportActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 224
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 239
    return-void
.end method

.method private static queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .locals 4
    .parameter
    .parameter "recipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 454
    .local v2, recipientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 455
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, r:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    .line 466
    .end local v1           #r:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 462
    .restart local v1       #r:Ljava/lang/String;
    :cond_1
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    goto :goto_0

    .line 466
    .end local v1           #r:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setQueryInfo(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 669
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    .line 670
    sput-wide p1, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    .line 671
    return-void
.end method


# virtual methods
.method getDeliveryReportText(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    const/16 v9, 0xa

    .line 160
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 181
    :cond_0
    return-object v6

    .line 161
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v6, sBuilder:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    .line 163
    .local v0, cache:Lcom/android/mms/util/ContactNameCache;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 164
    .local v2, context:Landroid/content/Context;
    const/4 v5, 0x0

    .line 165
    .local v5, lines:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/DeliveryReportItem;

    .line 166
    .local v4, item:Lcom/android/mms/ui/DeliveryReportItem;
    if-eqz v5, :cond_3

    .line 167
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_3
    const/4 v5, 0x1

    .line 171
    iget-object v7, v4, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, contact:Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v7, v4, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 176
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f09016e

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    .line 132
    iget-wide v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    sput-wide v1, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    .line 137
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListAdapter()V

    .line 140
    iget-wide v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 141
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->removeReportNotification(Landroid/content/Context;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 676
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 677
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->sContext:Landroid/content/Context;

    .line 678
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/ui/DeliveryReportActivity;->sMsgId:J

    .line 679
    return-void
.end method
