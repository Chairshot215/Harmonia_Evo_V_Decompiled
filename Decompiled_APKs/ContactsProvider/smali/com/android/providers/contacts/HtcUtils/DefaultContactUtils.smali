.class public Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;
.super Ljava/lang/Object;
.source "DefaultContactUtils.java"


# static fields
.field private static CID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->CID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createContactInfo(Landroid/content/res/Resources;IIIIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    .locals 5
    .parameter "resources"
    .parameter "nameRes"
    .parameter "numberRes1"
    .parameter "numberType1"
    .parameter "numberRes2"
    .parameter "numberType2"
    .parameter "account"

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, number1:Ljava/lang/String;
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, number2:Ljava/lang/String;
    const/4 v0, 0x0

    .line 578
    .local v0, info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 579
    :cond_0
    new-instance v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    .end local v0           #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-direct {v0}, Lcom/htc/util/contacts/ImportUtils$ContactInfo;-><init>()V

    .line 581
    .restart local v0       #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    iput-object p6, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mAccount:Landroid/accounts/Account;

    .line 582
    iput-object v1, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mFirstName:Ljava/lang/String;

    .line 584
    iput-object v2, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber1:Ljava/lang/String;

    .line 585
    iput-object v3, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber2:Ljava/lang/String;

    .line 586
    if-ne p3, p5, :cond_1

    .line 587
    iput p3, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    .line 591
    :cond_1
    return-object v0
.end method

.method private static createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    .locals 4
    .parameter "resources"
    .parameter "nameRes"
    .parameter "numberRes"
    .parameter "numberType"
    .parameter "account"

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, number:Ljava/lang/String;
    const/4 v0, 0x0

    .line 553
    .local v0, info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 555
    :cond_0
    new-instance v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    .end local v0           #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-direct {v0}, Lcom/htc/util/contacts/ImportUtils$ContactInfo;-><init>()V

    .line 557
    .restart local v0       #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    iput-object p4, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mAccount:Landroid/accounts/Account;

    .line 558
    iput-object v1, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mFirstName:Ljava/lang/String;

    .line 560
    iput-object v2, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber:Ljava/lang/String;

    .line 561
    iput p3, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    .line 565
    :cond_1
    return-object v0
.end method

.method private static createContactInfoForCMCC(Landroid/content/res/Resources;IIIIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    .locals 8
    .parameter "resources"
    .parameter "firstNameRes"
    .parameter "lastNameRes"
    .parameter "numberRes"
    .parameter "numberType"
    .parameter "notesRes"
    .parameter "account"

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, firstName:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, lastName:Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, number:Ljava/lang/String;
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, notes:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, displayName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 644
    .local v2, info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 647
    :cond_0
    new-instance v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    .end local v2           #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-direct {v2}, Lcom/htc/util/contacts/ImportUtils$ContactInfo;-><init>()V

    .line 648
    .restart local v2       #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    iput-object p6, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mAccount:Landroid/accounts/Account;

    .line 649
    iput-object v0, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mDisplayName:Ljava/lang/String;

    .line 650
    iput-object v5, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber:Ljava/lang/String;

    .line 651
    iput p4, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    .line 652
    iput-object v4, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mNote:Ljava/lang/String;

    .line 655
    :cond_1
    return-object v2
.end method

.method private static createContactInfoForCT(Landroid/content/res/Resources;IIIIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    .locals 6
    .parameter "resources"
    .parameter "displayNameRes"
    .parameter "firstNameRes"
    .parameter "numberRes"
    .parameter "numberType"
    .parameter "notesRes"
    .parameter "account"

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, displayName:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, firstName:Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, number:Ljava/lang/String;
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, notes:Ljava/lang/String;
    const/4 v2, 0x0

    .line 610
    .local v2, info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 613
    :cond_0
    new-instance v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    .end local v2           #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-direct {v2}, Lcom/htc/util/contacts/ImportUtils$ContactInfo;-><init>()V

    .line 614
    .restart local v2       #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    iput-object p6, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mAccount:Landroid/accounts/Account;

    .line 615
    iput-object v0, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mDisplayName:Ljava/lang/String;

    .line 616
    iput-object v1, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mFirstName:Ljava/lang/String;

    .line 617
    iput-object v4, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber:Ljava/lang/String;

    .line 618
    iput p4, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    .line 619
    iput-object v3, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mNote:Ljava/lang/String;

    .line 622
    :cond_1
    return-object v2
.end method

.method private static createContactInfoForDopod(Landroid/content/res/Resources;IIIIIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    .locals 8
    .parameter "resources"
    .parameter "firstNameRes"
    .parameter "lastNameRes"
    .parameter "numberRes"
    .parameter "numberType"
    .parameter "webSiteRes"
    .parameter "webSiteType"
    .parameter "account"

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, firstName:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, lastName:Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, number:Ljava/lang/String;
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, webSite:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, displayName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 678
    .local v2, info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 681
    :cond_0
    new-instance v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    .end local v2           #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-direct {v2}, Lcom/htc/util/contacts/ImportUtils$ContactInfo;-><init>()V

    .line 682
    .restart local v2       #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    iput-object p7, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mAccount:Landroid/accounts/Account;

    .line 683
    iput-object v0, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mDisplayName:Ljava/lang/String;

    .line 684
    iput-object v4, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber:Ljava/lang/String;

    .line 685
    iput p4, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    .line 686
    iput-object v6, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mWebSite:Ljava/lang/String;

    .line 687
    iput p6, v2, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mWebSiteType:I

    .line 690
    :cond_1
    return-object v2
.end method

.method private static getDefaultContactListForMechaVerizon(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 9
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x6

    .line 695
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v0, Landroid/accounts/Account;

    const-string v6, "pcsc"

    const-string v7, "com.htc.android.pcsc"

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .local v0, account:Landroid/accounts/Account;
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 708
    .local v4, nameResIds:[I
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    .line 717
    .local v5, numberResIds:[I
    const/4 v1, 0x0

    .local v1, idIdx:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 718
    aget v6, v4, v1

    aget v7, v5, v1

    const/4 v8, 0x2

    invoke-static {p0, v6, v7, v8, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    .line 724
    .local v2, info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    .end local v2           #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    :cond_0
    return-object v3

    .line 699
    nop

    :array_0
    .array-data 0x4
        0x15t 0x0t 0x5t 0x7ft
        0x17t 0x0t 0x5t 0x7ft
        0x19t 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x1ft 0x0t 0x5t 0x7ft
    .end array-data

    .line 708
    :array_1
    .array-data 0x4
        0x16t 0x0t 0x5t 0x7ft
        0x18t 0x0t 0x5t 0x7ft
        0x1at 0x0t 0x5t 0x7ft
        0x1ct 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
        0x20t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method private static getDefaultContactsList(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 3
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_SBM:Z

    if-eqz v1, :cond_1

    .line 57
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsListForSBM(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :cond_1
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_DOPOD:Z

    if-nez v1, :cond_0

    .line 60
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_MECHA_VERIZON:Z

    if-nez v1, :cond_0

    .line 62
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->CID:Ljava/lang/String;

    const-string v2, "VODAP110"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsListForVodaFone(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_TELEFONICA:Z

    if-eqz v1, :cond_3

    .line 65
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsListForTELEFONICA(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_OPEN_CHANNEL:Z

    if-nez v1, :cond_5

    :cond_4
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_OPEN_CHANNEL:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_CU:Z

    if-eqz v1, :cond_6

    .line 68
    :cond_5
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsListForCT(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_6
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_BRIGHT_STAR:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_IUSACELL:Z

    if-eqz v1, :cond_8

    .line 72
    :cond_7
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsListForIUSACELL(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_8
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_CMCC:Z

    if-eqz v1, :cond_9

    .line 74
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsListForCMCC(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_9
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_TELSTRA:Z

    if-eqz v1, :cond_a

    .line 76
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsListForTELSTRA(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_a
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_TELCEL:Z

    if-eqz v1, :cond_0

    .line 78
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsListForTELCELL(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDefaultContactsListForBRIGHTSTAR(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 509
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "pcsc"

    const-string v3, "com.htc.android.pcsc"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .local v0, account:Landroid/accounts/Account;
    const v2, 0x7f050059

    const v3, 0x7f05005a

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    const v2, 0x7f05005b

    const v3, 0x7f05005c

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    const v2, 0x7f05005d

    const v3, 0x7f05005e

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const v2, 0x7f05005f

    const v3, 0x7f050060

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    return-object v1
.end method

.method private static getDefaultContactsListForCMCC(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "pcsc"

    const-string v3, "com.htc.android.pcsc"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v0, account:Landroid/accounts/Account;
    const v2, 0x7f05000e

    const v3, 0x7f05000f

    const/4 v4, 0x3

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    return-object v1
.end method

.method private static getDefaultContactsListForCT(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 8
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v6, Landroid/accounts/Account;

    const-string v0, "pcsc"

    const-string v1, "com.htc.android.pcsc"

    invoke-direct {v6, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v6, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;->PROJECT_OPEN_CHANNEL:Z

    if-eqz v0, :cond_0

    .line 275
    const v1, 0x7f050011

    const v2, 0x7f050010

    const v3, 0x7f050012

    const/4 v4, 0x3

    const v5, 0x7f050013

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfoForCT(Landroid/content/res/Resources;IIIIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_0
    return-object v7
.end method

.method private static getDefaultContactsListForDOPOD(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 4
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "pcsc"

    const-string v3, "com.htc.android.pcsc"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v0, account:Landroid/accounts/Account;
    return-object v1
.end method

.method private static getDefaultContactsListForIUSACELL(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 8
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 364
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v6, Landroid/accounts/Account;

    const-string v0, "pcsc"

    const-string v1, "com.htc.android.pcsc"

    invoke-direct {v6, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v6, account:Landroid/accounts/Account;
    const v0, 0x7f050031

    const v1, 0x7f050032

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    const v1, 0x7f050033

    const v2, 0x7f050034

    const v4, 0x7f050035

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIIIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const v0, 0x7f050036

    const v1, 0x7f050037

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const v0, 0x7f050038

    const v1, 0x7f050039

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const v1, 0x7f05003a

    const v2, 0x7f05003b

    const v4, 0x7f05003c

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIIIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const v0, 0x7f05003d

    const v1, 0x7f05003e

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const v0, 0x7f05003f

    const v1, 0x7f050040

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const v0, 0x7f050041

    const v1, 0x7f050042

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const v0, 0x7f050043

    const v1, 0x7f050044

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const v0, 0x7f050045

    const v1, 0x7f050046

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const v0, 0x7f050047

    const v1, 0x7f050048

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const v0, 0x7f050049

    const v1, 0x7f05004a

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    const v0, 0x7f05004b

    const v1, 0x7f05004c

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const v0, 0x7f05004d

    const v1, 0x7f05004e

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    const v0, 0x7f05004f

    const v1, 0x7f050050

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const v0, 0x7f050051

    const v1, 0x7f050052

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const v0, 0x7f050053

    const v1, 0x7f050054

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    const v0, 0x7f050055

    const v1, 0x7f050056

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    const v0, 0x7f050057

    const v1, 0x7f050058

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    return-object v7
.end method

.method private static getDefaultContactsListForSBM(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "pcsc"

    const-string v3, "com.htc.android.pcsc"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v0, account:Landroid/accounts/Account;
    const/high16 v2, 0x7f05

    const v3, 0x7f050001

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const v2, 0x7f050002

    const v3, 0x7f050003

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const v2, 0x7f050004

    const v3, 0x7f050005

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const v2, 0x7f050006

    const v3, 0x7f050007

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const v2, 0x7f050008

    const v3, 0x7f050009

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    return-object v1
.end method

.method private static getDefaultContactsListForTELCELL(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 8
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 86
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v6, Landroid/accounts/Account;

    const-string v0, "pcsc"

    const-string v1, "com.htc.android.pcsc"

    invoke-direct {v6, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v6, account:Landroid/accounts/Account;
    const v0, 0x7f050063

    const v1, 0x7f050064

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const v0, 0x7f050065

    const v1, 0x7f050066

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const v0, 0x7f050067

    const v1, 0x7f050068

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const v0, 0x7f050069

    const v1, 0x7f05006a

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const v0, 0x7f05006b

    const v1, 0x7f05006c

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const v0, 0x7f05006d

    const v1, 0x7f05006e

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const v0, 0x7f05006f

    const v1, 0x7f050070

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const v0, 0x7f050071

    const v1, 0x7f050072

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const v0, 0x7f050073

    const v1, 0x7f050074

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    const v0, 0x7f050075

    const v1, 0x7f050076

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const v0, 0x7f050077

    const v1, 0x7f050078

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const v0, 0x7f050079

    const v1, 0x7f05007a

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const v0, 0x7f05007b

    const v1, 0x7f05007c

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const v0, 0x7f05007d

    const v1, 0x7f05007e

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const v0, 0x7f05007f

    const v1, 0x7f050080

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const v0, 0x7f050081

    const v1, 0x7f050082

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const v0, 0x7f050083

    const v1, 0x7f050084

    invoke-static {p0, v0, v1, v3, v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const v1, 0x7f050085

    const v2, 0x7f050086

    const v4, 0x7f050087

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIIIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-object v7
.end method

.method private static getDefaultContactsListForTELEFONICA(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "pcsc"

    const-string v3, "com.htc.android.pcsc"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v0, account:Landroid/accounts/Account;
    const v2, 0x7f050023

    const v3, 0x7f050024

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const v2, 0x7f050025

    const v3, 0x7f050026

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const v2, 0x7f050027

    const v3, 0x7f050028

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const v2, 0x7f050029

    const v3, 0x7f05002a

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const v2, 0x7f05002b

    const v3, 0x7f05002c

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const v2, 0x7f05002d

    const v3, 0x7f05002e

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const v2, 0x7f05002f

    const v3, 0x7f050030

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-object v1
.end method

.method private static getDefaultContactsListForTELSTRA(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "pcsc"

    const-string v3, "com.htc.android.pcsc"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .local v0, account:Landroid/accounts/Account;
    const v2, 0x7f050061

    const v3, 0x7f050062

    const/4 v4, 0x3

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    return-object v1
.end method

.method private static getDefaultContactsListForVodaFone(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "pcsc"

    const-string v3, "com.htc.android.pcsc"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v0, account:Landroid/accounts/Account;
    const v2, 0x7f050021

    const v3, 0x7f050022

    const/4 v4, 0x3

    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->createContactInfo(Landroid/content/res/Resources;IIILandroid/accounts/Account;)Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-object v1
.end method

.method public static insertDefaultContact(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "resolver"
    .parameter "resources"

    .prologue
    .line 44
    invoke-static {p1}, Lcom/android/providers/contacts/HtcUtils/DefaultContactUtils;->getDefaultContactsList(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    invoke-static {p0, v0}, Lcom/htc/util/contacts/ImportUtils;->importContacts(Landroid/content/ContentResolver;Ljava/util/List;)I

    .line 50
    :cond_0
    return-void
.end method
