.class public Lcom/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardEntry$1;,
        Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;,
        Lcom/android/vcard/VCardEntry$ToStringIterator;,
        Lcom/android/vcard/VCardEntry$IsIgnorableIterator;,
        Lcom/android/vcard/VCardEntry$EntryElementIterator;,
        Lcom/android/vcard/VCardEntry$AndroidCustomData;,
        Lcom/android/vcard/VCardEntry$SipData;,
        Lcom/android/vcard/VCardEntry$AnniversaryData;,
        Lcom/android/vcard/VCardEntry$BirthdayData;,
        Lcom/android/vcard/VCardEntry$WebsiteData;,
        Lcom/android/vcard/VCardEntry$NoteData;,
        Lcom/android/vcard/VCardEntry$NicknameData;,
        Lcom/android/vcard/VCardEntry$PhotoData;,
        Lcom/android/vcard/VCardEntry$ImData;,
        Lcom/android/vcard/VCardEntry$OrganizationData;,
        Lcom/android/vcard/VCardEntry$PostalData;,
        Lcom/android/vcard/VCardEntry$EmailData;,
        Lcom/android/vcard/VCardEntry$PhoneData;,
        Lcom/android/vcard/VCardEntry$NameData;,
        Lcom/android/vcard/VCardEntry$EntryElement;,
        Lcom/android/vcard/VCardEntry$EntryLabel;
    }
.end annotation


# static fields
.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAndroidCustomDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation
.end field

.field private mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

.field private mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mLatitude:D

.field private mLocationMapName:Ljava/lang/String;

.field private mLongitude:D

.field private final mNameData:Lcom/android/vcard/VCardEntry$NameData;

.field private mNicknameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$SipData;",
            ">;"
        }
    .end annotation
.end field

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 75
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-IM"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-QQ"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-NETMEETING"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1798
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;-><init>(I)V

    .line 1799
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 1802
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 1803
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 1805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    new-instance v0, Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntry$NameData;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 1806
    iput p1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 1807
    iput-object p2, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 1808
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/vcard/VCardEntry;->convertCalendarDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 1892
    :cond_0
    if-eqz p4, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-direct {v2, p2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$EmailData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1898
    :goto_0
    return-void

    .line 1895
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$EmailData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addIm(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "propValue"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 2060
    :cond_0
    if-eqz p5, :cond_1

    .line 2061
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    const/4 v7, 0x0

    new-instance v0, Lcom/android/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2066
    :goto_0
    return-void

    .line 2063
    :cond_1
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9
    .parameter "organizationName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 1929
    :cond_0
    if-eqz p6, :cond_1

    .line 1930
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    const/4 v8, 0x0

    new-instance v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry$OrganizationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1937
    :goto_0
    return-void

    .line 1933
    :cond_1
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry$OrganizationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 2
    .parameter "nickName"

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$NicknameData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$NicknameData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1884
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2
    .parameter "note"

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2070
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$NoteData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$NoteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 1821
    iget-object v9, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v9, :cond_0

    .line 1822
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 1824
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1825
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1827
    .local v8, trimmed:Ljava/lang/String;
    const/4 v9, 0x6

    if-eq p1, v9, :cond_1

    iget v9, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v9}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1828
    :cond_1
    move-object v2, v8

    .line 1830
    .local v2, formattedNumber:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    :goto_0
    new-instance v7, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-direct {v7, v8, p1, p3, p4}, Lcom/android/vcard/VCardEntry$PhoneData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1864
    .local v7, phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    if-eqz p4, :cond_c

    .line 1865
    iget-object v9, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1870
    :goto_1
    return-void

    .line 1837
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v7           #phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_2
    const/4 v4, 0x0

    .line 1838
    .local v4, hasPauseOrWait:Z
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1839
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v6, :cond_a

    .line 1840
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1842
    .local v1, ch:C
    const/16 v9, 0x70

    if-eq v1, v9, :cond_3

    const/16 v9, 0x50

    if-ne v1, v9, :cond_5

    .line 1843
    :cond_3
    const/16 v9, 0x70

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1844
    const/4 v4, 0x1

    .line 1839
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1845
    :cond_5
    const/16 v9, 0x77

    if-eq v1, v9, :cond_6

    const/16 v9, 0x57

    if-ne v1, v9, :cond_7

    .line 1846
    :cond_6
    const/16 v9, 0x77

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1847
    const/4 v4, 0x1

    goto :goto_3

    .line 1848
    :cond_7
    const/16 v9, 0x30

    if-gt v9, v1, :cond_8

    const/16 v9, 0x39

    if-le v1, v9, :cond_9

    :cond_8
    if-nez v5, :cond_4

    const/16 v9, 0x2b

    if-ne v1, v9, :cond_4

    .line 1849
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1852
    .end local v1           #ch:C
    :cond_a
    if-nez v4, :cond_b

    .line 1853
    iget v9, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v3

    .line 1854
    .local v3, formattingType:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1856
    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_0

    .line 1857
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v3           #formattingType:I
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_0

    .line 1867
    .end local v4           #hasPauseOrWait:Z
    .end local v5           #i:I
    .end local v6           #length:I
    .restart local v7       #phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_c
    iget-object v9, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 3
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 2076
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2077
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 2079
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/vcard/VCardEntry$PhotoData;-><init>(Ljava/lang/String;[BZ)V

    .line 2082
    .local v0, photoData:Lcom/android/vcard/VCardEntry$PhotoData;
    if-eqz p3, :cond_1

    .line 2083
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2088
    :goto_0
    return-void

    .line 2085
    :cond_1
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1901
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 1907
    :cond_0
    if-eqz p4, :cond_1

    .line 1908
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/vcard/VCardEntry$PostalData;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1915
    :goto_0
    return-void

    .line 1911
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/vcard/VCardEntry$PostalData;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addSip(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .parameter "sipData"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1874
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$SipData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/vcard/VCardEntry$SipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1877
    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Lcom/android/vcard/VCardEntry;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 2699
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;
    .locals 1
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 2703
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1943
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1944
    .local v3, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1945
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1946
    const-string v5, "vCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v5, v6}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1952
    .local v4, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1953
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1954
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1956
    .end local v1           #elem:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1958
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private constructDisplayName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2605
    const/4 v6, 0x0

    .line 2607
    .local v6, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1400(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2608
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1400(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v6

    .line 2624
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 2625
    const-string v6, ""

    .line 2627
    :cond_1
    return-object v6

    .line 2609
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyStructuredName()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2610
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->access$1100(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$1200(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/vcard/VCardEntry$NameData;->access$1000(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->access$900(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2612
    :cond_3
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyPhoneticStructuredName()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2613
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$800(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2615
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2616
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    #getter for: Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$EmailData;->access$1600(Lcom/android/vcard/VCardEntry$EmailData;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2617
    :cond_5
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2618
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    #getter for: Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->access$1700(Lcom/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2619
    :cond_6
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2620
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2621
    :cond_7
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private static convertCalendarDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "dateString"

    .prologue
    const/16 v5, 0x2d

    .line 2785
    if-nez p0, :cond_1

    .line 2786
    const/4 v2, 0x0

    .line 2810
    :cond_0
    return-object v2

    .line 2788
    :cond_1
    move-object v2, p0

    .line 2793
    .local v2, newDateString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 2794
    const-string v2, ""

    .line 2795
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2796
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2797
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    if-ne v0, v5, :cond_6

    .line 2798
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    .line 2799
    :cond_4
    if-eq v0, v5, :cond_5

    .line 2800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2803
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2805
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 2795
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2594
    .local p1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->constructAndroidCustomData(Ljava/util/List;)Lcom/android/vcard/VCardEntry$AndroidCustomData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v3, 0x1

    .line 2136
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 2140
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-ge v0, v3, :cond_1

    .line 2160
    .end local v0           #size:I
    :cond_0
    :goto_0
    return-void

    .line 2143
    .restart local v0       #size:I
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 2144
    const/4 v0, 0x5

    .line 2147
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 2158
    :goto_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1302(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2150
    :pswitch_0
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$902(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2152
    :pswitch_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1002(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2154
    :pswitch_2
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1102(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2156
    :pswitch_3
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1202(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2147
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 13
    .parameter "type"
    .parameter
    .parameter
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1971
    .local p2, orgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 1972
    .local v5, phoneticName:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1973
    sget-object p2, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 1977
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v12

    .line 1978
    .local v12, size:I
    packed-switch v12, :pswitch_data_0

    .line 1990
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1993
    .local v2, organizationName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1994
    .local v8, builder:Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .local v9, i:I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 1995
    const/4 v1, 0x1

    if-le v9, v1, :cond_1

    .line 1996
    const/16 v1, 0x20

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1998
    :cond_1
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1980
    .end local v2           #organizationName:Ljava/lang/String;
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v9           #i:I
    :pswitch_0
    const-string v2, ""

    .line 1981
    .restart local v2       #organizationName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2003
    .local v3, departmentName:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v1, :cond_3

    .line 2006
    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2026
    :goto_2
    return-void

    .line 1985
    .end local v2           #organizationName:Ljava/lang/String;
    .end local v3           #departmentName:Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1986
    .restart local v2       #organizationName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1987
    .restart local v3       #departmentName:Ljava/lang/String;
    goto :goto_1

    .line 2000
    .end local v3           #departmentName:Ljava/lang/String;
    .restart local v8       #builder:Ljava/lang/StringBuilder;
    .restart local v9       #i:I
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #departmentName:Ljava/lang/String;
    goto :goto_1

    .line 2010
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v9           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 2013
    .local v11, organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    #getter for: Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$200(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    #getter for: Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$300(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2017
    #setter for: Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;
    invoke-static {v11, v2}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$202(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 2018
    #setter for: Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;
    invoke-static {v11, v3}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$302(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 2019
    move/from16 v0, p4

    #setter for: Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z
    invoke-static {v11, v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$402(Lcom/android/vcard/VCardEntry$OrganizationData;Z)Z

    goto :goto_2

    .line 2025
    .end local v11           #organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    :cond_5
    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 1978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2170
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->access$800(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2179
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    if-lt v4, v8, :cond_0

    .line 2186
    if-le v4, v10, :cond_2

    .line 2187
    const/4 v4, 0x3

    .line 2190
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 2191
    const/4 v3, 0x1

    .line 2192
    .local v3, onlyFirstElemIsNonEmpty:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 2193
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 2194
    const/4 v3, 0x0

    .line 2198
    :cond_3
    if-eqz v3, :cond_7

    .line 2199
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2200
    .local v2, namesArray:[Ljava/lang/String;
    array-length v1, v2

    .line 2201
    .local v1, nameArrayLength:I
    if-ne v1, v10, :cond_5

    .line 2203
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v7

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2204
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v8

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2205
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v9

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2192
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2206
    .restart local v1       #nameArrayLength:I
    .restart local v2       #namesArray:[Ljava/lang/String;
    :cond_5
    if-ne v1, v9, :cond_6

    .line 2209
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v7

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2210
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v8

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2212
    :cond_6
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/vcard/VCardEntry$NameData;->access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2218
    .end local v0           #i:I
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    .end local v3           #onlyFirstElemIsNonEmpty:Z
    :cond_7
    packed-switch v4, :pswitch_data_0

    .line 2225
    :goto_2
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2221
    :pswitch_0
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2223
    :pswitch_1
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/vcard/VCardEntry$NameData;->access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2218
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .parameter "propValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2548
    .local p2, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2584
    :cond_0
    :goto_0
    return-void

    .line 2551
    :cond_1
    const-string v6, "sip:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2552
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2553
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 2558
    :cond_2
    const/4 v3, -0x1

    .line 2559
    .local v3, type:I
    const/4 v2, 0x0

    .line 2560
    .local v2, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2561
    .local v1, isPrimary:Z
    if-eqz p2, :cond_8

    .line 2562
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2563
    .local v4, typeStringOrg:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 2564
    .local v5, typeStringUpperCase:Ljava/lang/String;
    const-string v6, "PREF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2565
    const/4 v1, 0x1

    goto :goto_1

    .line 2566
    :cond_4
    const-string v6, "HOME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2567
    const/4 v3, 0x1

    goto :goto_1

    .line 2568
    :cond_5
    const-string v6, "WORK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2569
    const/4 v3, 0x2

    goto :goto_1

    .line 2570
    :cond_6
    if-gez v3, :cond_3

    .line 2571
    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2572
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2576
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 2574
    :cond_7
    move-object v2, v4

    goto :goto_2

    .line 2580
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #typeStringOrg:Ljava/lang/String;
    .end local v5           #typeStringUpperCase:Ljava/lang/String;
    :cond_8
    if-gez v3, :cond_9

    .line 2581
    const/4 v3, 0x3

    .line 2583
    :cond_9
    invoke-direct {p0, p1, v3, v2, v1}, Lcom/android/vcard/VCardEntry;->addSip(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 9
    .parameter "title"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2036
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 2039
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2051
    :goto_0
    return-void

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 2043
    .local v8, organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    #getter for: Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$500(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2044
    #setter for: Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;
    invoke-static {v8, p1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$502(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .end local v8           #organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    :cond_2
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 2050
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 3
    .parameter
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/android/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1651
    .local p1, elemList:Ljava/util/List;,"Ljava/util/List<+Lcom/android/vcard/VCardEntry$EntryElement;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1652
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {v2}, Lcom/android/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1653
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    .line 1654
    .local v0, elem:Lcom/android/vcard/VCardEntry$EntryElement;
    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0

    .line 1656
    .end local v0           #elem:Lcom/android/vcard/VCardEntry$EntryElement;
    :cond_0
    invoke-interface {p2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1658
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 2707
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 2708
    .local v3, size:I
    if-le v3, v5, :cond_2

    .line 2709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2710
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2711
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2712
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_0

    .line 2714
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2717
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2721
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return-object v5

    .line 2718
    :cond_2
    if-ne v3, v5, :cond_3

    .line 2719
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 2721
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 2100
    iget v3, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$800(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2130
    :cond_0
    :goto_0
    return-void

    .line 2107
    :cond_1
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2108
    .local v1, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2109
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 2110
    const-string v3, "vCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 2116
    .local v2, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2117
    .local v0, size:I
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 2118
    const/4 v0, 0x3

    .line 2120
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 2126
    :goto_1
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2122
    :pswitch_0
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2124
    :pswitch_1
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addChild(Lcom/android/vcard/VCardEntry;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    .line 2590
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2591
    return-void
.end method

.method public addProperty(Lcom/android/vcard/VCardProperty;)V
    .locals 33
    .parameter "property"

    .prologue
    .line 2230
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    .line 2231
    .local v20, propertyName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getParameterMap()Ljava/util/Map;

    move-result-object v15

    .line 2232
    .local v15, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v21

    .line 2233
    .local v21, propertyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getByteValue()[B

    move-result-object v19

    .line 2235
    .local v19, propertyBytes:[B
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-nez v19, :cond_2

    .line 2541
    :cond_1
    :goto_0
    return-void

    .line 2239
    :cond_2
    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2243
    .local v6, propValue:Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2245
    :cond_3
    const-string v3, "VERSION"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2247
    const-string v3, "FN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1402(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2239
    .end local v6           #propValue:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 2249
    .restart local v6       #propValue:Ljava/lang/String;
    :cond_5
    const-string v3, "NAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$1400(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1402(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2255
    :cond_6
    const-string v3, "N"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2256
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v15}, Lcom/android/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 2257
    :cond_7
    const-string v3, "SORT-STRING"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2259
    :cond_8
    const-string v3, "NICKNAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "X-NICKNAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2261
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2262
    :cond_a
    const-string v3, "SOUND"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2263
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2264
    .local v23, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_1

    const-string v3, "X-IRMC-N"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2270
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v6, v3}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 2272
    .local v18, phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2276
    .end local v18           #phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_b
    const-string v3, "ADR"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2277
    const/16 v30, 0x1

    .line 2278
    .local v30, valuesAreAllEmpty:Z
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 2279
    .local v29, value:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2280
    const/16 v30, 0x0

    .line 2284
    .end local v29           #value:Ljava/lang/String;
    :cond_d
    if-nez v30, :cond_1

    .line 2288
    const/4 v7, -0x1

    .line 2289
    .local v7, type:I
    const/4 v14, 0x0

    .line 2290
    .local v14, label:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2291
    .local v8, isPrimary:Z
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2292
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_15

    .line 2293
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_e
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 2294
    .local v26, typeStringOrg:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 2295
    .local v27, typeStringUpperCase:Ljava/lang/String;
    const-string v3, "PREF"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2296
    const/4 v8, 0x1

    goto :goto_2

    .line 2297
    :cond_f
    const-string v3, "HOME"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2298
    const/4 v7, 0x1

    .line 2299
    const/4 v14, 0x0

    goto :goto_2

    .line 2300
    :cond_10
    const-string v3, "WORK"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "COMPANY"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2306
    :cond_11
    const/4 v7, 0x2

    .line 2307
    const/4 v14, 0x0

    goto :goto_2

    .line 2309
    :cond_12
    const-string v3, "OTHER"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2310
    const/4 v7, 0x3

    .line 2311
    const-string v14, ""

    goto :goto_2

    .line 2313
    :cond_13
    const-string v3, "PARCEL"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "DOM"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "INTL"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2317
    if-gez v7, :cond_e

    .line 2318
    const/4 v7, 0x0

    .line 2319
    const-string v3, "X-"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2320
    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 2322
    :cond_14
    move-object/from16 v14, v26

    goto/16 :goto_2

    .line 2328
    .end local v26           #typeStringOrg:Ljava/lang/String;
    .end local v27           #typeStringUpperCase:Ljava/lang/String;
    :cond_15
    if-gez v7, :cond_16

    .line 2329
    const/4 v7, 0x1

    .line 2332
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1, v14, v8}, Lcom/android/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2333
    .end local v7           #type:I
    .end local v8           #isPrimary:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #label:Ljava/lang/String;
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v30           #valuesAreAllEmpty:Z
    :cond_17
    const-string v3, "EMAIL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2334
    const/4 v7, -0x1

    .line 2335
    .restart local v7       #type:I
    const/4 v14, 0x0

    .line 2336
    .restart local v14       #label:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2337
    .restart local v8       #isPrimary:Z
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2338
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_1e

    .line 2339
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_18
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 2340
    .restart local v26       #typeStringOrg:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 2341
    .restart local v27       #typeStringUpperCase:Ljava/lang/String;
    const-string v3, "PREF"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2342
    const/4 v8, 0x1

    goto :goto_3

    .line 2343
    :cond_19
    const-string v3, "HOME"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2344
    const/4 v7, 0x1

    goto :goto_3

    .line 2345
    :cond_1a
    const-string v3, "WORK"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2346
    const/4 v7, 0x2

    goto :goto_3

    .line 2347
    :cond_1b
    const-string v3, "CELL"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2348
    const/4 v7, 0x4

    goto :goto_3

    .line 2349
    :cond_1c
    if-gez v7, :cond_18

    .line 2350
    const-string v3, "X-"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2351
    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 2355
    :goto_4
    const/4 v7, 0x0

    goto :goto_3

    .line 2353
    :cond_1d
    move-object/from16 v14, v26

    goto :goto_4

    .line 2359
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v26           #typeStringOrg:Ljava/lang/String;
    .end local v27           #typeStringUpperCase:Ljava/lang/String;
    :cond_1e
    if-gez v7, :cond_1f

    .line 2360
    const/4 v7, 0x3

    .line 2362
    :cond_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v14, v8}, Lcom/android/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2363
    .end local v7           #type:I
    .end local v8           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_20
    const-string v3, "ORG"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2365
    const/4 v7, 0x1

    .line 2366
    .restart local v7       #type:I
    const/4 v8, 0x0

    .line 2367
    .restart local v8       #isPrimary:Z
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2368
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_22

    .line 2369
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_21
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2370
    .local v25, typeString:Ljava/lang/String;
    const-string v3, "PREF"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2371
    const/4 v8, 0x1

    goto :goto_5

    .line 2375
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v25           #typeString:Ljava/lang/String;
    :cond_22
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1, v15, v8}, Lcom/android/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 2376
    .end local v7           #type:I
    .end local v8           #isPrimary:Z
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_23
    const-string v3, "TITLE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2377
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2378
    :cond_24
    const-string v3, "ROLE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2381
    const-string v3, "PHOTO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "LOGO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2383
    :cond_25
    const-string v3, "VALUE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;

    .line 2384
    .local v16, paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v16, :cond_26

    const-string v3, "URL"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2387
    :cond_26
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2388
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 2389
    .local v11, formatName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2390
    .restart local v8       #isPrimary:Z
    if-eqz v23, :cond_29

    .line 2391
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_27
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 2392
    .local v28, typeValue:Ljava/lang/String;
    const-string v3, "PREF"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2393
    const/4 v8, 0x1

    goto :goto_6

    .line 2394
    :cond_28
    if-nez v11, :cond_27

    .line 2395
    move-object/from16 v11, v28

    goto :goto_6

    .line 2399
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v28           #typeValue:Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1, v8}, Lcom/android/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 2401
    .end local v8           #isPrimary:Z
    .end local v11           #formatName:Ljava/lang/String;
    .end local v16           #paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2a
    const-string v3, "TEL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2402
    const/16 v17, 0x0

    .line 2403
    .local v17, phoneNumber:Ljava/lang/String;
    const/4 v13, 0x0

    .line 2404
    .local v13, isSip:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2407
    const-string v3, "sip:"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2408
    const/4 v13, 0x1

    .line 2421
    :goto_7
    if-eqz v13, :cond_2e

    .line 2422
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2423
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2409
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2b
    const-string v3, "tel:"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2410
    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    .line 2415
    :cond_2c
    move-object/from16 v17, v6

    goto :goto_7

    .line 2418
    :cond_2d
    move-object/from16 v17, v6

    goto :goto_7

    .line 2425
    :cond_2e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2429
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2430
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    .line 2434
    .local v24, typeObject:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_2f

    .line 2435
    check-cast v24, Ljava/lang/Integer;

    .end local v24           #typeObject:Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2436
    .restart local v7       #type:I
    const/4 v14, 0x0

    .line 2443
    .restart local v14       #label:Ljava/lang/String;
    :goto_8
    if-eqz v23, :cond_30

    const-string v3, "PREF"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2445
    const/4 v8, 0x1

    .line 2450
    .restart local v8       #isPrimary:Z
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1, v14, v8}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2438
    .end local v7           #type:I
    .end local v8           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .restart local v24       #typeObject:Ljava/lang/Object;
    :cond_2f
    const/4 v7, 0x0

    .line 2439
    .restart local v7       #type:I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #label:Ljava/lang/String;
    goto :goto_8

    .line 2447
    .end local v24           #typeObject:Ljava/lang/Object;
    :cond_30
    const/4 v8, 0x0

    .restart local v8       #isPrimary:Z
    goto :goto_9

    .line 2452
    .end local v7           #type:I
    .end local v8           #isPrimary:Z
    .end local v13           #isSip:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v17           #phoneNumber:Ljava/lang/String;
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_31
    const-string v3, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2454
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2455
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x7

    .line 2457
    .restart local v7       #type:I
    if-eqz v23, :cond_32

    const-string v3, "PREF"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2459
    const/4 v8, 0x1

    .line 2463
    .restart local v8       #isPrimary:Z
    :goto_a
    const/4 v3, 0x7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v5, v8}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2461
    .end local v8           #isPrimary:Z
    :cond_32
    const/4 v8, 0x0

    .restart local v8       #isPrimary:Z
    goto :goto_a

    .line 2464
    .end local v7           #type:I
    .end local v8           #isPrimary:Z
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_33
    sget-object v3, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2465
    sget-object v3, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2466
    .local v4, protocol:I
    const/4 v8, 0x0

    .line 2467
    .restart local v8       #isPrimary:Z
    const/4 v7, -0x1

    .line 2468
    .restart local v7       #type:I
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2469
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_37

    .line 2470
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_34
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2471
    .restart local v25       #typeString:Ljava/lang/String;
    const-string v3, "PREF"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2472
    const/4 v8, 0x1

    goto :goto_b

    .line 2473
    :cond_35
    if-gez v7, :cond_34

    .line 2474
    const-string v3, "HOME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2475
    const/4 v7, 0x1

    goto :goto_b

    .line 2476
    :cond_36
    const-string v3, "WORK"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2477
    const/4 v7, 0x2

    goto :goto_b

    .line 2482
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v25           #typeString:Ljava/lang/String;
    :cond_37
    if-gez v7, :cond_38

    .line 2483
    const/4 v7, 0x1

    .line 2486
    :cond_38
    const/4 v3, -0x1

    if-ne v4, v3, :cond_39

    .line 2487
    const/4 v7, 0x3

    .line 2490
    :cond_39
    const/4 v5, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/vcard/VCardEntry;->addIm(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 2491
    .end local v4           #protocol:I
    .end local v7           #type:I
    .end local v8           #isPrimary:Z
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3a
    const-string v3, "NOTE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2492
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2493
    :cond_3b
    const-string v3, "URL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    if-nez v3, :cond_3c

    .line 2495
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 2497
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    new-instance v5, Lcom/android/vcard/VCardEntry$WebsiteData;

    invoke-direct {v5, v6}, Lcom/android/vcard/VCardEntry$WebsiteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2498
    :cond_3d
    const-string v3, "BDAY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2499
    new-instance v3, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-direct {v3, v6}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_0

    .line 2500
    :cond_3e
    const-string v3, "ANNIVERSARY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2501
    new-instance v3, Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-direct {v3, v6}, Lcom/android/vcard/VCardEntry$AnniversaryData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    goto/16 :goto_0

    .line 2502
    :cond_3f
    const-string v3, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2504
    :cond_40
    const-string v3, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2506
    :cond_41
    const-string v3, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    #setter for: Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2508
    :cond_42
    const-string v3, "IMPP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2510
    const-string v3, "sip:"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2511
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2512
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2514
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_43
    const-string v3, "X-SIP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2515
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2516
    const-string v3, "TYPE"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2517
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2519
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_44
    const-string v3, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2520
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v6, v3}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 2522
    .local v9, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2523
    .end local v9           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_45
    const-string v3, "GEO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2524
    const-string v3, ";"

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 2525
    .local v22, result:[Ljava/lang/String;
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 2527
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v22, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vcard/VCardEntry;->mLatitude:D

    .line 2528
    const/4 v3, 0x1

    aget-object v3, v22, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vcard/VCardEntry;->mLongitude:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2529
    :catch_0
    move-exception v10

    .line 2530
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2535
    .end local v10           #e:Ljava/lang/Exception;
    .end local v22           #result:[Ljava/lang/String;
    :cond_46
    const-string v3, "X-VZW-NGM-LOC"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2536
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/vcard/VCardEntry;->mLocationMapName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public consolidateFields()V
    .locals 2

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2635
    return-void
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 2668
    if-nez p2, :cond_0

    .line 2669
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2672
    .restart local p2       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2695
    :goto_0
    return-object p2

    .line 2676
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2680
    .local v0, backReferenceIndex:I
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2682
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_2

    .line 2683
    const-string v4, "account_name"

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2684
    const-string v4, "account_type"

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2689
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2692
    .local v3, start:I
    new-instance v4, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;-><init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, v4}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2693
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2695
    .local v2, end:I
    goto :goto_0

    .line 2686
    .end local v2           #end:I
    .end local v3           #start:I
    :cond_2
    const-string v4, "account_name"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2687
    const-string v4, "account_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method public getAndroidCustomPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    return-object v0
.end method

.method public getAnniversary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    #getter for: Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$AnniversaryData;->access$2000(Lcom/android/vcard/VCardEntry$AnniversaryData;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    #getter for: Lcom/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->access$1900(Lcom/android/vcard/VCardEntry$BirthdayData;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChildlen()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2778
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2780
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 2832
    iget-wide v0, p0, Lcom/android/vcard/VCardEntry;->mLatitude:D

    return-wide v0
.end method

.method public getLocationMapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mLocationMapName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 2836
    iget-wide v0, p0, Lcom/android/vcard/VCardEntry;->mLongitude:D

    return-wide v0
.end method

.method public final getNameData()Lcom/android/vcard/VCardEntry$NameData;
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getVCardType()I
    .locals 1

    .prologue
    .line 1816
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    return v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 2

    .prologue
    .line 2646
    new-instance v0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V

    .line 2647
    .local v0, iterator:Lcom/android/vcard/VCardEntry$IsIgnorableIterator;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2648
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->getResult()Z

    move-result v1

    return v1
.end method

.method public final iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1
    .parameter "iterator"

    .prologue
    .line 1619
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    .line 1620
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1621
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1622
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1624
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1625
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1626
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1627
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1628
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1629
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1630
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1631
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1632
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1633
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1634
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1636
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1638
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1639
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_1

    .line 1642
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$AnniversaryData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1643
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1644
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1646
    :cond_1
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    .line 1647
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 1813
    return-void
.end method

.method public setAnniversary(Ljava/lang/String;)V
    .locals 1
    .parameter "aday"

    .prologue
    .line 2822
    new-instance v0, Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-direct {v0, p1}, Lcom/android/vcard/VCardEntry$AnniversaryData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    .line 2823
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 1
    .parameter "bday"

    .prologue
    .line 2818
    new-instance v0, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-direct {v0, p1}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    .line 2819
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1792
    new-instance v0, Lcom/android/vcard/VCardEntry$ToStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V

    .line 1793
    .local v0, iterator:Lcom/android/vcard/VCardEntry$ToStringIterator;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1794
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ToStringIterator;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
