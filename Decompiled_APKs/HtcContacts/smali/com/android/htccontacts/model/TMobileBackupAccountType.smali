.class public Lcom/android/htccontacts/model/TMobileBackupAccountType;
.super Lcom/android/htccontacts/model/HtcBaseAccountType;
.source "TMobileBackupAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.tmobileus.contact.phone"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/model/HtcBaseAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    const-string v0, "vnd.tmobileus.contact.phone"

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    .line 18
    return-void
.end method

.method public static final websiteGetTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 105
    packed-switch p0, :pswitch_data_0

    .line 113
    const v0, 0x7f0a035f

    :goto_0
    return v0

    .line 106
    :pswitch_0
    const v0, 0x7f0a0360

    goto :goto_0

    .line 107
    :pswitch_1
    const v0, 0x7f0a0361

    goto :goto_0

    .line 108
    :pswitch_2
    const v0, 0x7f0a0362

    goto :goto_0

    .line 109
    :pswitch_3
    const v0, 0x7f0a0363

    goto :goto_0

    .line 110
    :pswitch_4
    const v0, 0x7f0a0364

    goto :goto_0

    .line 111
    :pswitch_5
    const v0, 0x7f0a0365

    goto :goto_0

    .line 112
    :pswitch_6
    const v0, 0x7f0a0366

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 74
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 76
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 81
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a005f

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    .line 53
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 54
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 56
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 66
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a005e

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/HtcBaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 89
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 91
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildWebsiteType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->buildWebsiteType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 95
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a005a

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method protected buildWebsiteType(I)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 101
    new-instance v0, Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->websiteGetTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected inflateItem(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/TMobileBackupAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 48
    return-void
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
