.class public final Lcom/htc/util/contacts/DefaultActionUtils;
.super Ljava/lang/Object;
.source "DefaultActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/DefaultActionUtils$defaultActionTypes;,
        Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;,
        Lcom/htc/util/contacts/DefaultActionUtils$defaultNoteTypes;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACTION_TOKEN:Ljava/lang/String; = "actionid:"

.field public static final FAVORITE_ENDING_TOKEN:Ljava/lang/String; = "</Favorite>"

.field public static final FAVORITE_STARTING_TOKEN:Ljava/lang/String; = "<Favorite>"

.field public static final HTC_DATA_ENDING_TOKEN:Ljava/lang/String; = "</HTCData>"

.field public static final HTC_DATA_STARTING_TOKEN:Ljava/lang/String; = "<HTCData>"

.field private static final TAG:Ljava/lang/String; = "DefaultActionUtils"

.field private static final mPROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/contacts/DefaultActionUtils;->mPROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method private static addDefaultAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"
    .parameter "defaultAction"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 569
    invoke-static {v9, v0, p1}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 609
    :goto_0
    const-string v6, "DefaultActionUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDefaultAction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 573
    :cond_0
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 575
    const-string v6, "<HTCData>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 576
    .local v3, startingIndex:I
    const-string v6, "</HTCData>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 577
    .local v1, endingIndex:I
    if-lt v1, v3, :cond_1

    if-eq v3, v7, :cond_1

    if-ne v1, v7, :cond_2

    .line 580
    :cond_1
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {v9, v0, p1}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_2
    const-string v6, "<HTCData>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 586
    .local v5, subText:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 589
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-static {v9, v0, p1}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_3
    const-string v6, "<Favorite>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 593
    .local v4, startingIndex_favorite:I
    const-string v6, "</Favorite>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 594
    .local v2, endingIndex_favorite:I
    if-lt v2, v4, :cond_4

    if-eq v4, v7, :cond_4

    if-ne v2, v7, :cond_5

    .line 596
    :cond_4
    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {v8, v0, p1}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 598
    const-string v6, "</HTCData>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 601
    :cond_5
    const-string v6, "<Favorite>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-static {v8, v0, p1}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 603
    const-string v6, "</HTCData>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter "addHeader"
    .parameter "text"
    .parameter "defaultAction"

    .prologue
    .line 614
    if-eqz p0, :cond_0

    .line 615
    const-string v0, "<HTCData>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_0
    const-string v0, "<Favorite>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v0, "actionid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v0, "</Favorite>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    if-eqz p0, :cond_1

    .line 622
    const-string v0, "</HTCData>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_1
    return-void
.end method

.method private static buildDefaultString(Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;)Ljava/lang/String;
    .locals 4
    .parameter "entry"

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, sbDefaultActionInfo:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    sparse-switch v1, :sswitch_data_0

    .line 535
    :goto_0
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iget-object v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_0
    :goto_1
    const-string v1, "DefaultActionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after build: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 481
    :sswitch_0
    iget-object v1, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 485
    :sswitch_1
    iget v1, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 521
    :pswitch_0
    const-string v1, "PhoneMobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 487
    :pswitch_1
    const-string v1, "PhoneMobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 491
    :pswitch_2
    const-string v1, "PhoneHome"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 497
    :pswitch_3
    const-string v1, "PhoneWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 500
    :pswitch_4
    const-string v1, "PhonePager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 504
    :pswitch_5
    const-string v1, "PhoneAssistant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 507
    :pswitch_6
    const-string v1, "ExchangePhoneRadio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 510
    :pswitch_7
    const-string v1, "ExchangePhoneCar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 528
    :sswitch_2
    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 531
    :sswitch_3
    const-string v1, "Mail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 539
    :cond_1
    const/16 v1, 0xf02

    iget v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    if-ne v1, v2, :cond_2

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 541
    :cond_2
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    if-ne v1, v2, :cond_0

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 478
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0xf01 -> :sswitch_1
        0xf02 -> :sswitch_2
        0xf03 -> :sswitch_0
    .end sparse-switch

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static buildEntry(Ljava/lang/String;)Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    .locals 6
    .parameter "action"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0xf01

    .line 395
    new-instance v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;

    invoke-direct {v0}, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;-><init>()V

    .line 396
    .local v0, entry:Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    const-string v1, "CallMobile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 398
    iput v4, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 399
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    .line 454
    :cond_0
    :goto_0
    return-object v0

    .line 400
    :cond_1
    const-string v1, "CallCompany"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 402
    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 403
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 404
    :cond_2
    const-string v1, "CallWork"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 406
    iput v5, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 407
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_3
    const-string v1, "CallWork2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 409
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 410
    const/16 v1, 0x11

    iput v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 411
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_4
    const-string v1, "CallHome"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 413
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 414
    iput v3, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 415
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 416
    :cond_5
    const-string v1, "CallHome2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 417
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 418
    iput v3, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 419
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 420
    :cond_6
    const-string v1, "CallCar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 421
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 422
    const/16 v1, 0x9

    iput v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 423
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 424
    :cond_7
    const-string v1, "CallAssistant"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 425
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 426
    const/16 v1, 0x13

    iput v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 427
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_8
    const-string v1, "CallPager"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 429
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 430
    const/4 v1, 0x6

    iput v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 431
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 432
    :cond_9
    const-string v1, "CallRadio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 433
    iput v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 434
    const/16 v1, 0xe

    iput v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 435
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 436
    :cond_a
    const-string v1, "SendMessage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 437
    const/16 v1, 0xf02

    iput v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 438
    const-string v1, "android.intent.action.SENDTO"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 439
    :cond_b
    const-string v1, "SendMail1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 440
    iput v3, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 441
    iput v3, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 442
    const-string v1, "android.intent.action.SENDTO"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 443
    :cond_c
    const-string v1, "SendMail2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 444
    iput v3, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 445
    iput v4, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 446
    const-string v1, "android.intent.action.SENDTO"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 447
    :cond_d
    const-string v1, "SendMail3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 448
    iput v3, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 449
    iput v5, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 450
    const-string v1, "android.intent.action.SENDTO"

    iput-object v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    goto/16 :goto_0

    .line 451
    :cond_e
    const-string v1, "ViewContactCard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const/16 v1, 0xf03

    iput v1, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    goto/16 :goto_0
.end method

.method private static buildUri(IJJ)Landroid/net/Uri;
    .locals 3
    .parameter "kind"
    .parameter "data_id"
    .parameter "contact_id"

    .prologue
    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, uri:Landroid/net/Uri;
    sparse-switch p0, :sswitch_data_0

    .line 473
    :goto_0
    return-object v1

    .line 462
    :sswitch_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 463
    goto :goto_0

    .line 465
    :sswitch_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 466
    const-string v2, "contact_methods"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 467
    .local v0, methodsUri:Landroid/net/Uri;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 468
    goto :goto_0

    .line 470
    .end local v0           #methodsUri:Landroid/net/Uri;
    :sswitch_2
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 459
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xf01 -> :sswitch_0
        0xf02 -> :sswitch_0
        0xf03 -> :sswitch_2
    .end sparse-switch
.end method

.method public static extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 363
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-object v6

    .line 366
    :cond_1
    const-string v7, "<HTCData>"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 367
    .local v2, startingIndex:I
    const-string v7, "</HTCData>"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 368
    .local v0, endingIndex:I
    if-lt v0, v2, :cond_0

    if-eq v2, v8, :cond_0

    if-eq v0, v8, :cond_0

    .line 371
    const-string v7, "<HTCData>"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, subText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 377
    const-string v7, "<Favorite>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 378
    .local v3, startingIndex_favorite:I
    const-string v7, "</Favorite>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 379
    .local v1, endingIndex_favorite:I
    if-lt v1, v3, :cond_0

    if-eq v3, v8, :cond_0

    if-eq v1, v8, :cond_0

    .line 382
    const-string v7, "<Favorite>"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, subText_favorite:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 384
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 385
    const-string v7, "actionid:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 386
    const-string v6, "actionid:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, -0x1

    .line 551
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 561
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 554
    .restart local p0
    :cond_1
    const-string v4, "<HTCData>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 555
    .local v1, startingIndex:I
    const-string v4, "</HTCData>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 556
    .local v0, endingIndex:I
    if-lt v0, v1, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v0, v5, :cond_0

    .line 559
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, subTextFirstHalf:Ljava/lang/String;
    const-string v4, "</HTCData>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, subTextSecondHalf:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDefaultAction(Landroid/content/Context;J)Ljava/lang/String;
    .locals 23
    .parameter "context"
    .parameter "contact_id"

    .prologue
    .line 121
    const/4 v15, 0x0

    .line 122
    .local v15, defaultString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/util/contacts/DefaultActionUtils;->mPROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 125
    .local v9, c:Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v14, defaultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;>;"
    if-eqz v9, :cond_9

    .line 129
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, accountType:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v8}, Lcom/htc/util/contacts/DefaultActionUtils;->isWorkableAccountType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 134
    .local v19, noteText:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, dafaultAction:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 137
    const-string v2, "DefaultActionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after extract: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-static {v13}, Lcom/htc/util/contacts/DefaultActionUtils;->buildEntry(Ljava/lang/String;)Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;

    move-result-object v16

    .line 142
    .local v16, entry:Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->raw_id:J

    .line 143
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v8           #accountType:Ljava/lang/String;
    .end local v13           #dafaultAction:Ljava/lang/String;
    .end local v16           #entry:Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    .end local v19           #noteText:Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    .line 157
    .local v18, isFound:Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;

    .line 158
    .restart local v16       #entry:Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    const/16 v3, 0xf01

    if-ne v2, v3, :cond_b

    .line 159
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iget v3, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    if-ne v2, v3, :cond_a

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->raw_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 163
    const/16 v2, 0xf01

    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide/from16 v0, p1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/htc/util/contacts/DefaultActionUtils;->buildUri(IJJ)Landroid/net/Uri;

    move-result-object v22

    .line 164
    .local v22, uri:Landroid/net/Uri;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    .line 165
    const/16 v18, 0x1

    .line 210
    .end local v22           #uri:Landroid/net/Uri;
    :cond_5
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 215
    .end local v16           #entry:Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    :cond_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;

    .line 216
    .restart local v16       #entry:Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_7

    .line 217
    invoke-static/range {v16 .. v16}, Lcom/htc/util/contacts/DefaultActionUtils;->buildDefaultString(Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;)Ljava/lang/String;

    move-result-object v15

    .line 222
    .end local v16           #entry:Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 225
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #isFound:Z
    :cond_9
    return-object v15

    .line 168
    .restart local v16       #entry:Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v18       #isFound:Z
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 169
    :cond_b
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    const/16 v3, 0xf02

    if-ne v2, v3, :cond_e

    .line 170
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 172
    :cond_c
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->raw_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    .line 174
    const/16 v2, 0xf02

    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide/from16 v0, p1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/htc/util/contacts/DefaultActionUtils;->buildUri(IJJ)Landroid/net/Uri;

    move-result-object v22

    .line 175
    .restart local v22       #uri:Landroid/net/Uri;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    .line 176
    const/16 v18, 0x1

    .line 177
    goto :goto_1

    .line 179
    .end local v22           #uri:Landroid/net/Uri;
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    .line 180
    :cond_e
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 181
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    const/4 v10, 0x0

    .line 183
    .local v10, count:I
    const-wide/16 v20, 0x0

    .line 184
    .local v20, pre_raw_id:J
    const-wide/16 v11, 0x0

    .line 186
    .local v11, cur_raw_id:J
    :cond_f
    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 187
    cmp-long v2, v20, v11

    if-eqz v2, :cond_10

    .line 188
    const/4 v10, 0x0

    .line 190
    :cond_10
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->raw_id:J

    cmp-long v2, v11, v2

    if-nez v2, :cond_12

    .line 191
    add-int/lit8 v10, v10, 0x1

    .line 193
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    if-eq v2, v10, :cond_11

    .line 194
    move-wide/from16 v20, v11

    .line 203
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_1

    .line 197
    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide/from16 v0, p1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/htc/util/contacts/DefaultActionUtils;->buildUri(IJJ)Landroid/net/Uri;

    move-result-object v22

    .line 198
    .restart local v22       #uri:Landroid/net/Uri;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    .line 199
    const/16 v18, 0x1

    .line 200
    goto/16 :goto_1

    .line 202
    .end local v22           #uri:Landroid/net/Uri;
    :cond_12
    move-wide/from16 v20, v11

    goto :goto_2

    .line 204
    .end local v10           #count:I
    .end local v11           #cur_raw_id:J
    .end local v20           #pre_raw_id:J
    :cond_13
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    const/16 v3, 0xf03

    if-ne v2, v3, :cond_5

    .line 205
    const/16 v2, 0xf03

    const-wide/16 v3, 0x0

    move-wide/from16 v0, p1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/htc/util/contacts/DefaultActionUtils;->buildUri(IJJ)Landroid/net/Uri;

    move-result-object v22

    .line 206
    .restart local v22       #uri:Landroid/net/Uri;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    .line 207
    const/16 v18, 0x1

    goto/16 :goto_1
.end method

.method private static isWorkableAccountType(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    const-string v1, "com.htc.android.pcsc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.mail.eas"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setDafaultAction(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 27
    .parameter "context"
    .parameter "defaultString"
    .parameter "contact_id"

    .prologue
    .line 230
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 232
    const/4 v14, 0x0

    .line 233
    .local v14, defaultAction:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    const-string v14, "ViewContactCard"

    .line 260
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 261
    .local v25, uri_index:I
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 264
    .local v3, uri:Landroid/net/Uri;
    const-string v2, "SendMail1"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 266
    .local v12, data_id:J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 269
    .end local v12           #data_id:J
    :cond_1
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v24, updateRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v2, "ViewContactCard"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .end local v3           #uri:Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "account_type"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 276
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_d

    .line 277
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 278
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 279
    .local v22, raw_id:J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, accountType:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/util/contacts/DefaultActionUtils;->isWorkableAccountType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    .end local v10           #accountType:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v22           #raw_id:J
    .end local v24           #updateRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v25           #uri_index:I
    :cond_3
    const-string v2, "ExchangePhoneCar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    const-string v14, "CallCar"

    goto/16 :goto_0

    .line 237
    :cond_4
    const-string v2, "ExchangePhoneRadio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 238
    const-string v14, "CallRadio"

    goto/16 :goto_0

    .line 239
    :cond_5
    const-string v2, "Mail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 244
    const-string v14, "SendMail1"

    goto/16 :goto_0

    .line 245
    :cond_6
    const-string v2, "PhoneAssistant"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 246
    const-string v14, "CallAssistant"

    goto/16 :goto_0

    .line 247
    :cond_7
    const-string v2, "PhoneHome"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 248
    const-string v14, "CallHome"

    goto/16 :goto_0

    .line 249
    :cond_8
    const-string v2, "PhoneMobile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 250
    const-string v14, "CallMobile"

    goto/16 :goto_0

    .line 251
    :cond_9
    const-string v2, "PhonePager"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 252
    const-string v14, "CallPager"

    goto/16 :goto_0

    .line 253
    :cond_a
    const-string v2, "PhoneWork"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 254
    const-string v14, "CallWork"

    goto/16 :goto_0

    .line 255
    :cond_b
    const-string v2, "SMS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const-string v14, "SendMessage"

    goto/16 :goto_0

    .line 284
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v24       #updateRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v25       #uri_index:I
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_d
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_e
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 308
    .local v16, id:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/provider/HtcContactsContract$Data;->CONTENT_URI_DATA_ONLY:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "_id"

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const-string v7, "raw_contact_id"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    const-string v7, "mimetype"

    aput-object v7, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "raw_contact_id = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 311
    const/16 v21, 0x0

    .line 312
    .local v21, originalText:Ljava/lang/String;
    const-wide/16 v18, -0x1

    .line 313
    .local v18, index:J
    const-wide/16 v22, -0x1

    .line 314
    .restart local v22       #raw_id:J
    if-eqz v11, :cond_11

    .line 315
    :cond_f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 316
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 317
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 318
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 319
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 323
    :cond_10
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_11
    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/htc/util/contacts/DefaultActionUtils;->addDefaultAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 327
    .local v20, newNote:Ljava/lang/String;
    const-string v2, "NOTE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add note: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 329
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v26, values:Landroid/content/ContentValues;
    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-lez v2, :cond_15

    .line 331
    const-string v2, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 339
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-lez v2, :cond_e

    .line 340
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    .line 341
    const-string v2, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 288
    .end local v11           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v18           #index:J
    .end local v20           #newNote:Ljava/lang/String;
    .end local v21           #originalText:Ljava/lang/String;
    .end local v22           #raw_id:J
    .end local v26           #values:Landroid/content/ContentValues;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/htc/util/contacts/DefaultActionUtils;->mPROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 289
    .restart local v11       #c:Landroid/database/Cursor;
    if-eqz v11, :cond_d

    .line 290
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 291
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 292
    .restart local v22       #raw_id:J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 293
    .restart local v10       #accountType:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/util/contacts/DefaultActionUtils;->isWorkableAccountType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 295
    const-string v2, "SendMessage"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_14

    .line 302
    .end local v10           #accountType:Ljava/lang/String;
    .end local v22           #raw_id:J
    :cond_13
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 298
    .restart local v10       #accountType:Ljava/lang/String;
    .restart local v22       #raw_id:J
    :cond_14
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 334
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #accountType:Ljava/lang/String;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #id:J
    .restart local v18       #index:J
    .restart local v20       #newNote:Ljava/lang/String;
    .restart local v21       #originalText:Ljava/lang/String;
    .restart local v26       #values:Landroid/content/ContentValues;
    :cond_15
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v2, "raw_contact_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const-string v2, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_4

    .line 347
    .end local v11           #c:Landroid/database/Cursor;
    .end local v14           #defaultAction:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v18           #index:J
    .end local v20           #newNote:Ljava/lang/String;
    .end local v21           #originalText:Ljava/lang/String;
    .end local v22           #raw_id:J
    .end local v24           #updateRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v25           #uri_index:I
    .end local v26           #values:Landroid/content/ContentValues;
    :cond_16
    return-void
.end method
