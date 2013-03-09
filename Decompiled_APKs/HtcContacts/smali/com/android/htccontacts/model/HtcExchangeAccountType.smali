.class public Lcom/android/htccontacts/model/HtcExchangeAccountType;
.super Lcom/android/htccontacts/model/HtcBaseAccountType;
.source "HtcExchangeAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.mail.eas"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/model/HtcBaseAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    const-string v0, "com.htc.android.mail.eas"

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0a005f

    .line 186
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/16 v3, 0xf

    const/4 v4, 0x1

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 188
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 189
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 190
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 192
    const/4 v0, 0x3

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 194
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 195
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-object v6
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 273
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const v2, 0x7f0a015d

    const/16 v3, 0x96

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 275
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 276
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 278
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 279
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 280
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 281
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 283
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v8, v7}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4, v7}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 289
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 292
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0a005b

    invoke-direct {v1, v2, v3, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/4 v0, 0x2

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 295
    return-object v6
.end method

.method protected addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 1
    .parameter "context"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    return-object v0
.end method

.method protected addDataKindHtcEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 1
    .parameter "context"

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindHtcEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    return-object v0
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0a0060

    const/4 v4, 0x1

    .line 200
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/im"

    const/16 v3, 0x14

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 202
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$ImActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 203
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 209
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 217
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v5, 0x21

    invoke-direct {v1, v3, v2, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 225
    return-object v6
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 2
    .parameter "context"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 146
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 147
    return-object v0
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 236
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 237
    return-object v0
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x2001

    const/4 v4, 0x1

    .line 37
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/organization"

    const v2, 0x7f0a0059

    const/4 v3, 0x5

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 40
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 41
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 42
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 46
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 47
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0a0157

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a0158

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 9
    .parameter "context"

    .prologue
    const v2, 0x7f0a005e

    const/16 v3, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 151
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 153
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    const v0, 0x7f020057

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->iconAltRes:I

    .line 154
    const v0, 0x7f0a011e

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->iconAltDescriptionRes:I

    .line 155
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 156
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionAltHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 157
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 158
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 160
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 180
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object v6
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 2
    .parameter "context"

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 230
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 231
    return-object v0
.end method

.method protected addDataKindSipAddress(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0a039b

    .line 257
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/sip_address"

    const/16 v3, 0x82

    const/4 v4, 0x1

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 260
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 261
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 262
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 263
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-object v6
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x9b

    const/4 v3, -0x1

    const/16 v8, 0xc1

    const/16 v7, 0x2061

    const/4 v4, 0x1

    .line 89
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    const v2, 0x7f0a0057

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 91
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const v1, 0x7f0a0057

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 95
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 98
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 102
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0a00c6

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v0, :cond_0

    .line 108
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0a0256

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :goto_0
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0a00ca

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v0, :cond_1

    .line 123
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0a0255

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :goto_1
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0a00cb

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00ce

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00cd

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0a00cc

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-object v6

    .line 111
    :cond_0
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0a00c8

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0a00c7

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 12
    .parameter "context"

    .prologue
    const v11, 0x7f0a00c0

    const v10, 0x7f0a00be

    const v9, 0x7f0a00bb

    const/4 v4, 0x1

    const v8, 0x22071

    .line 310
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0a0061

    const/16 v3, 0x19

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 312
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 313
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 314
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 315
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 316
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 335
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 339
    .local v7, useJapaneseOrder:Z
    if-eqz v7, :cond_0

    .line 340
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data10"

    const v3, 0x7f0a00c1

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00bf

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :goto_0
    return-object v6

    .line 352
    :cond_0
    const-string v0, "HTC__001"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xab

    if-ne v0, v1, :cond_2

    .line 354
    :cond_1
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00c2

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c3

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data10"

    const v3, 0x7f0a00c1

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    const/16 v0, 0x88

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_3

    const/16 v0, 0x98

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_3

    const/16 v0, 0x37

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_3

    const/16 v0, 0xad

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_3

    const/16 v0, 0x1e

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_4

    .line 375
    :cond_3
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00c4

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_1
    const/16 v0, 0x94

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_5

    .line 382
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v11, v3}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :goto_2
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data10"

    const v3, 0x7f0a00c1

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 378
    :cond_4
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00bf

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    :cond_5
    const/16 v0, 0x88

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_6

    const/16 v0, 0x98

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_6

    const/16 v0, 0x37

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_6

    const/16 v0, 0xad

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_6

    const/16 v0, 0x1e

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_7

    .line 390
    :cond_6
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c5

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 393
    :cond_7
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0a005a

    .line 241
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/website"

    const/16 v3, 0x78

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 243
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 244
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 246
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 247
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v5, 0x11

    invoke-direct {v1, v3, v2, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 253
    return-object v6
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/htccontacts/model/HtcBaseAccountType;->areContactsWritable()Z

    move-result v0

    return v0
.end method

.method protected inflateItem(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/HtcExchangeAccountType;->addDataKindHtcEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 85
    return-void
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/htccontacts/model/HtcBaseAccountType;->areContactsWritable()Z

    move-result v0

    return v0
.end method
