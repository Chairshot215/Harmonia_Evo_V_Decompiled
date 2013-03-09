.class public abstract Lcom/android/htccontacts/model/BaseAccountType;
.super Lcom/android/htccontacts/model/AccountType;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/model/BaseAccountType$ImActionInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$PostalActionInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$HtcEventActionInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$RelationActionInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$EmailActionInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$PhoneActionAltInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$PhoneActionInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;,
        Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;
    }
.end annotation


# static fields
.field protected static final FLAGS_EMAIL:I = 0x21

.field protected static final FLAGS_EVENT:I = 0x1

.field protected static final FLAGS_GENERIC_NAME:I = 0x2001

.field protected static final FLAGS_NOTE:I = 0x24001

.field protected static final FLAGS_PERSON_NAME:I = 0x2061

.field protected static final FLAGS_PHONE:I = 0x3

.field protected static final FLAGS_PHONETIC:I = 0xc1

.field protected static final FLAGS_POSTAL:I = 0x22071

.field protected static final FLAGS_SIP_ADDRESS:I = 0x21

.field protected static final FLAGS_WEBSITE:I = 0x11


# instance fields
.field private mSupportNicknames:I

.field private mSupportNotes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0}, Lcom/android/htccontacts/model/AccountType;-><init>()V

    .line 72
    iput v0, p0, Lcom/android/htccontacts/model/BaseAccountType;->mSupportNicknames:I

    .line 73
    iput v0, p0, Lcom/android/htccontacts/model/BaseAccountType;->mSupportNotes:I

    .line 92
    iput-object v1, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/android/htccontacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 94
    const v0, 0x7f0a00cf

    iput v0, p0, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    .line 96
    const v0, 0x7f02003a

    iput v0, p0, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    .line 97
    return-void
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 11
    .parameter "context"

    .prologue
    const v10, 0x7f0a00c8

    const v9, 0x7f0a00c7

    const v2, 0x7f0a0057

    const/16 v8, 0x2061

    const/4 v4, 0x1

    .line 185
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "#displayName"

    const/4 v3, -0x1

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v7

    .line 187
    .local v7, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v7, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 188
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 190
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 191
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0a00c6

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 197
    .local v6, displayOrderPrimary:Z
    if-nez v6, :cond_0

    .line 198
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a00c9

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0a00ca

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0a00cb

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_0
    return-object v7

    .line 209
    :cond_0
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a00c9

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0a00ca

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, v7, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0a00cb

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0a005f

    const/4 v4, 0x1

    .line 309
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/16 v3, 0xf

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 311
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 312
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 313
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 314
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 316
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 328
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    return-object v6
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 558
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const v2, 0x7f0a015d

    const/16 v3, 0x96

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 560
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 561
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 563
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 564
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 565
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 566
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 567
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v8, v7}, Lcom/android/htccontacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4, v7}, Lcom/android/htccontacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v7}, Lcom/android/htccontacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 574
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 577
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0a005b

    invoke-direct {v1, v2, v3, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    return-object v6
.end method

.method protected addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 586
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 587
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/group_membership"

    const v2, 0x7f0a005d

    const/16 v3, 0x3e7

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 590
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const v1, 0x7f0a01b9

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 591
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 594
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 595
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 596
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data1"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    return-object v6
.end method

.method protected addDataKindHtcEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    .line 818
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/htc_event_v2"

    const v2, 0x7f0a015d

    const/16 v3, 0x96

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 820
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 821
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 823
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 824
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 825
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 826
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 828
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$HtcEventActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$HtcEventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 829
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 830
    return-object v6
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const v2, 0x7f0a0060

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 439
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/im"

    const/16 v3, 0x14

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 441
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$ImActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 442
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 447
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 448
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    const-string v0, "data5"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 451
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 452
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/BaseAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/model/BaseAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 466
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    return-object v6
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0a0058

    const/4 v4, 0x1

    .line 246
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/nickname"

    const/16 v3, 0x73

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 248
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 249
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 250
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 251
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 252
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 255
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget v0, p0, Lcom/android/htccontacts/model/BaseAccountType;->mSupportNicknames:I

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 263
    return-object v6
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0a0156

    .line 498
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/note"

    const/16 v3, 0x6e

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 500
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 501
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 502
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 503
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 504
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x24001

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget v0, p0, Lcom/android/htccontacts/model/BaseAccountType;->mSupportNotes:I

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 510
    return-object v6
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x2001

    const/4 v4, 0x1

    .line 474
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/organization"

    const v2, 0x7f0a0059

    const/4 v3, 0x5

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 477
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 478
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 479
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 481
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 482
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0a0157

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a0158

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const v2, 0x7f0a005e

    const/16 v3, 0xa

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 267
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 269
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    const v0, 0x7f020057

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->iconAltRes:I

    .line 270
    const v0, 0x7f0a011e

    iput v0, v6, Lcom/android/htccontacts/model/DataKind;->iconAltDescriptionRes:I

    .line 271
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 272
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionAltHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 273
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 274
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 276
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 303
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-object v6
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 1
    .parameter "context"

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 491
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/photo"

    const/4 v4, 0x1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 492
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 493
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v1, v3, v2, v2}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    return-object v6
.end method

.method protected addDataKindSipAddress(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0a039b

    .line 542
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/sip_address"

    const/16 v3, 0x82

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 545
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    iput v4, v6, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    .line 546
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 547
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 548
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 549
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
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

    .line 130
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    const v2, 0x7f0a0057

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 132
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const v1, 0x7f0a0057

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 136
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 139
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 143
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0a00c6

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0a00c9

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v0, :cond_0

    .line 149
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0a0256

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_0
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0a00ca

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v0, :cond_1

    .line 164
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0a0255

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :goto_1
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0a00cb

    invoke-direct {v1, v2, v3, v7}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00ce

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00cd

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0a00cc

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-object v6

    .line 152
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

    .line 167
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
    const v11, 0x7f0a00bd

    const v10, 0x7f0a00bc

    const v9, 0x7f0a00bb

    const/4 v4, 0x1

    const v8, 0x22071

    .line 334
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0a0061

    const/16 v3, 0x19

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 336
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 337
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 338
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 339
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 340
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 359
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 363
    .local v7, useJapaneseOrder:Z
    if-eqz v7, :cond_0

    .line 364
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data10"

    const v3, 0x7f0a00c1

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c0

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00bf

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0a00be

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    :goto_0
    return-object v6

    .line 378
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

    .line 380
    :cond_1
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0a00be

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00c2

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c3

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data10"

    const v3, 0x7f0a00c1

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 395
    :cond_2
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data4"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data5"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data6"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/htccontacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0a00be

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
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

    .line 408
    :cond_3
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00c4

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :goto_1
    const/16 v0, 0x94

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_5

    .line 415
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c0

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
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

    .line 411
    :cond_4
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0a00bf

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
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

    .line 423
    :cond_6
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c5

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 426
    :cond_7
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0a00c0

    invoke-direct {v1, v2, v3, v8}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0a005a

    .line 514
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/website"

    const/16 v3, 0x78

    const/4 v4, 0x1

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/BaseAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 516
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 517
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 518
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 519
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 522
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x11

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    return-object v6
.end method

.method protected buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 104
    new-instance v0, Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"
    .parameter "yearOptional"

    .prologue
    .line 116
    new-instance v0, Lcom/android/htccontacts/model/AccountType$EventEditType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/model/AccountType$EventEditType;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/model/AccountType$EventEditType;->setYearOptional(Z)Lcom/android/htccontacts/model/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected buildImType(I)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 112
    new-instance v0, Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildOrgType(I)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 125
    new-instance v0, Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Organization;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 100
    new-instance v0, Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildPostalType(I)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 108
    new-instance v0, Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 120
    new-instance v0, Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method public getHeaderColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 892
    const v0, -0x806c44

    return v0
.end method

.method public getSideBarColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 897
    const v0, -0x423848

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method
