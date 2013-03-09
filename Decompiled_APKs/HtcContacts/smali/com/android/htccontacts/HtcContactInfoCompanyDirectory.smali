.class Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;
.super Lcom/android/htccontacts/HtcContactInfoBase;
.source "HtcContactInfoBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcContactInfoCompanyDirectory"


# instance fields
.field private final invalidNumberText:[Ljava/lang/String;

.field public mAlias:Ljava/lang/String;

.field public mCompany:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mElement:Lcom/htc/android/pim/eas/EASGalElement;

.field public mEmailAddress:Ljava/lang/String;

.field public mFirstName:Ljava/lang/String;

.field public mHomePhone:Ljava/lang/String;

.field public mLastName:Ljava/lang/String;

.field public mMobilePhone:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mOffice:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mWorkPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/android/pim/eas/EASGalElement;Landroid/content/Context;)V
    .locals 3
    .parameter "element"
    .parameter "context"

    .prologue
    .line 654
    invoke-direct {p0, p2}, Lcom/android/htccontacts/HtcContactInfoBase;-><init>(Landroid/content/Context;)V

    .line 651
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "N/A"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->invalidNumberText:[Ljava/lang/String;

    .line 655
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    .line 656
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->buildAllInfo()V

    .line 657
    return-void
.end method

.method private getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInvalid(Ljava/lang/String;)Z
    .locals 6
    .parameter "testNumber"

    .prologue
    .line 732
    if-nez p1, :cond_1

    const/4 v4, 0x1

    .line 744
    :cond_0
    :goto_0
    return v4

    .line 733
    :cond_1
    const/4 v4, 0x0

    .line 734
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->invalidNumberText:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 735
    .local v2, invalid:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 736
    if-eqz v4, :cond_3

    .line 741
    .end local v2           #invalid:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 742
    const/4 v4, 0x1

    goto :goto_0

    .line 734
    .restart local v2       #invalid:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method declared-synchronized buildAllInfo()V
    .locals 2

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mDisplayName:Ljava/lang/String;

    .line 663
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->isInvalid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->Office:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mOffice:Ljava/lang/String;

    .line 668
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->Title:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mTitle:Ljava/lang/String;

    .line 669
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->Company:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mCompany:Ljava/lang/String;

    .line 670
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->Alias:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mAlias:Ljava/lang/String;

    .line 671
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->FirstName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mFirstName:Ljava/lang/String;

    .line 672
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->LastName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mLastName:Ljava/lang/String;

    .line 674
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->isInvalid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->isInvalid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 679
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    .line 682
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v1, v1, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mEmailAddress:Ljava/lang/String;

    .line 684
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mNumber:Ljava/lang/String;

    .line 686
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    .line 688
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 689
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 702
    :cond_3
    :goto_0
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 704
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 705
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 706
    .local v0, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mType:I

    .line 707
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 709
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    .end local v0           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :cond_4
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 713
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 714
    .restart local v0       #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mType:I

    .line 715
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 717
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v0           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :cond_5
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 721
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 722
    .restart local v0       #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mType:I

    .line 723
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 725
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .end local v0           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    :cond_6
    monitor-exit p0

    return-void

    .line 691
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 692
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 694
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 695
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 697
    :cond_9
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 698
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method closeAllCursors()V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public getDefaultPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mNumber:Ljava/lang/String;

    .line 757
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
