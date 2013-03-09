.class public Lcom/android/mms/ui/RecipientList$Recipient;
.super Ljava/lang/Object;
.source "RecipientList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recipient"
.end annotation


# static fields
.field private static final PHONE_NUMBER_SEPARATORS:Ljava/lang/String; = " ()-./"


# instance fields
.field public addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bcc:Z

.field public buttonView:Landroid/view/ViewGroup;

.field public isFromSIM:Z

.field public label:Ljava/lang/CharSequence;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public person_id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 416
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList$Recipient;->addresses:Ljava/util/ArrayList;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static buildNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "number"

    .prologue
    .line 686
    move-object v0, p1

    .line 690
    .local v0, formattedNumber:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    .end local v0           #formattedNumber:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 626
    if-nez p0, :cond_1

    .line 627
    const/4 p0, 0x0

    .line 645
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 630
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 636
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 638
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 639
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 641
    .local v1, character:C
    const-string v4, " ()-./"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    .end local v1           #character:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isBcdChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 530
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-eq p0, v0, :cond_0

    const/16 v0, 0x62

    if-eq p0, v0, :cond_0

    const/16 v0, 0x63

    if-ne p0, v0, :cond_1

    .line 531
    :cond_0
    const/4 v0, 0x1

    .line 533
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 10
    .parameter "recipient"

    .prologue
    const/16 v9, 0xd2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 481
    .local v3, len:I
    const/4 v1, 0x0

    .line 483
    .local v1, digits:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 484
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 486
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 487
    add-int/lit8 v1, v1, 0x1

    .line 483
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v9, :cond_2

    .line 492
    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->isSymbolChar(C)Z

    move-result v6

    if-ne v6, v5, :cond_2

    .line 493
    add-int/lit8 v1, v1, 0x1

    .line 494
    goto :goto_1

    .line 498
    :cond_2
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x50

    if-ne v6, v7, :cond_3

    .line 499
    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->isBcdChar(C)Z

    move-result v6

    if-ne v6, v5, :cond_3

    .line 500
    add-int/lit8 v1, v1, 0x1

    .line 501
    goto :goto_1

    .line 505
    :cond_3
    const-string v6, " ()-./"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    .line 508
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    if-eqz v2, :cond_0

    .line 525
    .end local v0           #c:C
    :cond_4
    :goto_2
    return v4

    .line 515
    :cond_5
    if-eqz v1, :cond_4

    .line 518
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v9, :cond_6

    .line 519
    const-string v6, "###"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_4

    const-string v6, "***"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_4

    const-string v6, "*#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_4

    const-string v6, "#*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_4

    :cond_6
    move v4, v5

    .line 525
    goto :goto_2
.end method

.method public static isSymbolChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 537
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    .line 538
    :cond_0
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 6
    .parameter "recipient"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 443
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_4

    .line 444
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, realnum:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 447
    .local v0, len:I
    const/16 v4, 0x16

    if-gt v0, v4, :cond_1

    if-lt v0, v2, :cond_1

    .line 463
    .end local v0           #len:I
    .end local v1           #realnum:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #len:I
    .restart local v1       #realnum:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 447
    goto :goto_0

    .line 449
    .end local v0           #len:I
    .end local v1           #realnum:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x30

    if-le v4, v5, :cond_0

    :cond_3
    move v2, v3

    .line 452
    goto :goto_0

    .line 454
    :cond_4
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x50

    if-ne v4, v5, :cond_6

    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 456
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .restart local v1       #realnum:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 458
    .restart local v0       #len:I
    const/16 v4, 0x14

    if-gt v0, v4, :cond_5

    if-ge v0, v2, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0

    .line 460
    .end local v0           #len:I
    .end local v1           #realnum:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v4

    if-eq v4, v2, :cond_7

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v4

    if-ne v4, v2, :cond_a

    .line 461
    :cond_7
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v3, v2

    :cond_9
    move v2, v3

    goto :goto_0

    .line 463
    :cond_a
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public filter(Landroid/content/Context;)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 6
    .parameter "context"

    .prologue
    .line 593
    new-instance v1, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v1}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 595
    .local v1, result:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    iput-wide v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 596
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 597
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 598
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    :goto_0
    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 601
    iget-boolean v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    iput-boolean v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 603
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->isFromSIM:Z

    .line 606
    iget-wide v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 608
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v2

    iget-object v3, v1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/android/mms/util/ContactNameCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;

    move-result-object v0

    .line 609
    .local v0, mdata:Landroid/provider/Telephony$namephoto;
    if-eqz v0, :cond_0

    .line 610
    iget-object v2, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 611
    iget-wide v2, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    iput-wide v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 612
    iget-boolean v2, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    iput-boolean v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->isFromSIM:Z

    .line 617
    .end local v0           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_0
    return-object v1

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getContactInfo(Landroid/content/Context;ZI)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 5
    .parameter "context"
    .parameter "refresh"
    .parameter "recipientSize"

    .prologue
    const/4 v4, 0x0

    .line 564
    new-instance v1, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v1}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 565
    .local v1, result:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    iput-wide v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 566
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 567
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 568
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    :goto_0
    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 569
    iget-boolean v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    iput-boolean v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 570
    iput-boolean v4, v1, Lcom/android/mms/ui/RecipientList$Recipient;->isFromSIM:Z

    .line 571
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    :goto_1
    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    .line 576
    const/16 v2, 0xb

    if-ge p3, v2, :cond_3

    .line 577
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v2

    iget-object v3, v1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, p2, v4}, Lcom/android/mms/util/ContactNameCache;->getCacheContactInfo(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/provider/Telephony$namephoto;

    move-result-object v0

    .line 580
    .local v0, mdata:Landroid/provider/Telephony$namephoto;
    :goto_2
    if-eqz v0, :cond_0

    .line 581
    iget-object v2, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 582
    iget-wide v2, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    iput-wide v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 583
    iget-boolean v2, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    iput-boolean v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->isFromSIM:Z

    .line 588
    :cond_0
    return-object v1

    .line 568
    .end local v0           #mdata:Landroid/provider/Telephony$namephoto;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 571
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 579
    :cond_3
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v2

    iget-object v3, v1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, p2, v4}, Lcom/android/mms/util/ContactNameCache;->getCacheContactInfo(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/provider/Telephony$namephoto;

    move-result-object v0

    .restart local v0       #mdata:Landroid/provider/Telephony$namephoto;
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " person_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " view= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toToken()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 649
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 650
    .local v1, s:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 652
    .local v0, len:I
    if-nez v0, :cond_0

    .line 677
    :goto_0
    return-object v1

    .line 656
    :cond_0
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 657
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "person_id"

    iget-wide v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 662
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 663
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 666
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 667
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "label"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 670
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 671
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    iget-object v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 674
    :cond_4
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "bcc"

    iget-boolean v4, p0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public updateRecipientInfo(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 545
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    .line 548
    .local v0, cache:Lcom/android/mms/util/ContactNameCache;
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/android/mms/util/ContactNameCache;->getPersonalId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 549
    iget-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;

    move-result-object v1

    .line 552
    .local v1, np:Landroid/provider/Telephony$namephoto;
    iget-wide v2, v1, Landroid/provider/Telephony$namephoto;->mPersonId:J

    iput-wide v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 553
    iget-object v2, v1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 557
    .end local v1           #np:Landroid/provider/Telephony$namephoto;
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->addresses:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->addresses:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    goto :goto_1
.end method
