.class public Lcom/android/htccontacts/model/SimAccountType;
.super Lcom/android/htccontacts/model/HtcBaseAccountType;
.source "SimAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/model/SimAccountType$1;,
        Lcom/android/htccontacts/model/SimAccountType$SimPhoneActionInflater;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.anddroid.contacts.sim"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SIMAccountType"


# instance fields
.field private mSupportEmails:I

.field private mSupportPhones:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/model/HtcBaseAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportPhones:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportEmails:I

    .line 34
    const-string v0, "com.anddroid.contacts.sim"

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 35
    const v0, 0x7f0a0027

    iput v0, p0, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    .line 36
    return-void
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0a005f

    .line 109
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/16 v3, 0xf

    const/4 v4, 0x1

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/SimAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 111
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 112
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 114
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget v0, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportEmails:I

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 116
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const v2, 0x7f0a005e

    .line 91
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const/16 v3, 0xa

    const/4 v4, 0x1

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/SimAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 93
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    const v0, 0x7f020057

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->iconAltRes:I

    .line 94
    const v0, 0x7f0a011e

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->iconAltDescriptionRes:I

    .line 95
    new-instance v0, Lcom/android/htccontacts/model/SimAccountType$SimPhoneActionInflater;

    invoke-direct {v0, p0, v7}, Lcom/android/htccontacts/model/SimAccountType$SimPhoneActionInflater;-><init>(Lcom/android/htccontacts/model/SimAccountType;Lcom/android/htccontacts/model/SimAccountType$1;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 96
    new-instance v0, Lcom/android/htccontacts/model/SimAccountType$SimPhoneActionInflater;

    invoke-direct {v0, p0, v7}, Lcom/android/htccontacts/model/SimAccountType$SimPhoneActionInflater;-><init>(Lcom/android/htccontacts/model/SimAccountType;Lcom/android/htccontacts/model/SimAccountType$1;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionAltHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 97
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 100
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 101
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget v0, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportPhones:I

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 103
    return-object v6
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const v2, 0x7f0a0057

    const/16 v7, 0x2061

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 69
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/SimAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 71
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 72
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 73
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 75
    const/16 v0, 0x9b

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0a0255

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_0
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 83
    return-object v6

    .line 79
    :cond_0
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0a00c7

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/htccontacts/model/HtcBaseAccountType;->areContactsWritable()Z

    move-result v0

    return v0
.end method

.method public getDispalyAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method protected inflateItem(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/SimAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 55
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportPhoneNum(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportPhones:I

    .line 56
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportEmailNum(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportEmails:I

    .line 58
    iget v0, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportPhones:I

    if-lez v0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/SimAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 61
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportEmails:I

    if-lez v0, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/SimAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 64
    :cond_1
    return-void
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public obtainSupportColumn(II)V
    .locals 0
    .parameter "phones"
    .parameter "emails"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportPhones:I

    .line 124
    iput p2, p0, Lcom/android/htccontacts/model/SimAccountType;->mSupportEmails:I

    .line 125
    return-void
.end method
