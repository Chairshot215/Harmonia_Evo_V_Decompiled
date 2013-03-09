.class public Lcom/android/htccontacts/model/ExchangeAccountType;
.super Lcom/android/htccontacts/model/BaseAccountType;
.source "ExchangeAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.exchange"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType;-><init>()V

    .line 44
    const-string v0, "com.android.exchange"

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindHtcEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/ExchangeAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 65
    return-void
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 12
    .parameter "context"

    .prologue
    const v11, 0x7f0a00ca

    const v10, 0x7f0a00c8

    const v9, 0x7f0a00c7

    const/4 v4, 0x1

    const/16 v8, 0x2061

    .line 98
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "#displayName"

    const v2, 0x7f0a0057

    const/4 v3, -0x1

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/ExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v7

    .line 101
    .local v7, kind:Lcom/android/htccontacts/model/DataKind;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 103
    .local v6, displayOrderPrimary:Z
    iput v4, v7, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 105
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 106
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a00c9

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    if-nez v6, :cond_0

    .line 109
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_0
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0a00cb

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v7

    .line 116
    :cond_0
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 197
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 199
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 200
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a005f

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-object v0
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0a005b

    const/4 v4, 0x1

    .line 299
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/16 v3, 0x96

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/ExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 302
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 303
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 305
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 307
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 309
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 313
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 314
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    return-object v6
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    .line 247
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 250
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    iput v3, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 252
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 253
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 256
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a0060

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-object v0
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 154
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 156
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 157
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a0058

    const/16 v5, 0x2061

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-object v0
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 292
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 293
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a0156

    const v5, 0x24001

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-object v0
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0x2001

    .line 263
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 265
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 267
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 268
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a0157

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data4"

    const v4, 0x7f0a0158

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 165
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 167
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 169
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 188
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a005e

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 1
    .parameter "context"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    return-object v0
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 278
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 280
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 282
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 283
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v2, v3, v4, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-object v0
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 9
    .parameter "context"

    .prologue
    const v2, 0x7f0a0057

    const/16 v8, 0xc1

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v7, 0x2061

    .line 69
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/ExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

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

    .line 74
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 76
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 77
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a00c9

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0a00c8

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0a00ca

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0a00c7

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0a00cb

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00ce

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0a00cc

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object v6
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 11
    .parameter "context"

    .prologue
    const v10, 0x7f0a00bf

    const v9, 0x7f0a00be

    const v8, 0x7f0a00bb

    const/4 v7, 0x1

    const v6, 0x22071

    .line 207
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 209
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 211
    .local v1, useJapaneseOrder:Z
    const-string v2, "data2"

    iput-object v2, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 213
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 218
    if-eqz v1, :cond_0

    .line 219
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0a00c1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0a00c0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data8"

    invoke-direct {v3, v4, v10, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data7"

    invoke-direct {v3, v4, v9, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_0
    return-object v0

    .line 230
    :cond_0
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data7"

    invoke-direct {v3, v4, v9, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data8"

    invoke-direct {v3, v4, v10, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0a00c0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0a00c1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 323
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 325
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 326
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a005a

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 333
    const v0, -0x2a456a

    return v0
.end method

.method public getSideBarColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 338
    const v0, -0x4a71a7

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method
