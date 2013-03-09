.class public Lcom/android/htccontacts/model/FallbackAccountType;
.super Lcom/android/htccontacts/model/BaseAccountType;
.source "FallbackAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/android/htccontacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 28
    const v0, 0x7f0a00cf

    iput v0, p0, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    .line 31
    iput-object v1, p0, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->addDataKindHtcEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 51
    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const v0, -0x806c44

    return v0
.end method

.method public getSideBarColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const v0, -0x423848

    return v0
.end method
