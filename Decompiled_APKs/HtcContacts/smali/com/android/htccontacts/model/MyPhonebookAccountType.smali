.class public Lcom/android/htccontacts/model/MyPhonebookAccountType;
.super Lcom/android/htccontacts/model/HtcBaseAccountType;
.source "MyPhonebookAccountType.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "myphonebook"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.myphonebook"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/model/HtcBaseAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    const-string v0, "com.htc.android.myphonebook"

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 81
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 82
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 84
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v0
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    .line 178
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 179
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 180
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a015d

    const v5, 0x24001

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 183
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 184
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 187
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditType;

    const v3, 0x7f0a01ba

    invoke-direct {v2, v6, v3}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-object v0
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x5

    .line 158
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 159
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    iput v4, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 160
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 161
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v1, "data5"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 164
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 171
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a0060

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-object v0
.end method

.method protected addDataKindMyCommunityMessage(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    .line 194
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "com.htc.android.myphonebook.item/status_update"

    iget v2, p0, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    const/16 v3, 0x6e

    const/4 v4, 0x0

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 196
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBodySocial:Z

    .line 197
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 198
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 67
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 69
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object v0
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 11
    .parameter "context"

    .prologue
    const/16 v10, 0x37

    const/16 v9, 0x1e

    const/4 v8, 0x3

    const/4 v4, 0x1

    const v7, 0x22071

    .line 92
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0a0061

    const/16 v3, 0x19

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 94
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 95
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 98
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 100
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v0, "HTC__001"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xab

    if-ne v0, v1, :cond_1

    .line 106
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 107
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a00bb

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0a00be

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00c2

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c3

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data10"

    const v3, 0x7f0a00c1

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_0
    return-object v6

    .line 118
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 119
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a00bb

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0a00be

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/16 v0, 0x88

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_2

    const/16 v0, 0x98

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v10, v0, :cond_2

    const/16 v0, 0xad

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v0, :cond_3

    .line 128
    :cond_2
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00c4

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_1
    const/16 v0, 0x94

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_4

    .line 135
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c0

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_2
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data10"

    const v3, 0x7f0a00c1

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00bf

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_4
    const/16 v0, 0x88

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_5

    const/16 v0, 0x98

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v10, v0, :cond_5

    const/16 v0, 0xad

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v0, :cond_6

    .line 143
    :cond_5
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c5

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 146
    :cond_6
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c0

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method protected inflateItem(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindMyCommunityMessage(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/MyPhonebookAccountType;->addDataKindHtcEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 62
    return-void
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
