.class public Lcom/android/htccontacts/model/EntityModifier;
.super Ljava/lang/Object;
.source "EntityModifier.java"


# static fields
.field private static final FREQUENCY_TOTAL:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "EntityModifier"

.field private static mFallbackSource:Lcom/android/htccontacts/model/FallbackAccountType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptExtras(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Landroid/os/Bundle;)Z
    .locals 11
    .parameter "context"
    .parameter "accountType"
    .parameter "extras"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 707
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    move v0, v9

    .line 807
    :cond_1
    :goto_0
    return v0

    .line 712
    :cond_2
    invoke-virtual {p1}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v4

    .line 713
    .local v4, kindList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/DataKind;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v7, tryInsertDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 720
    .local v6, tryInsert:Z
    const-string v10, "name"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 722
    if-eqz v6, :cond_3

    .line 723
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_3
    const-string v10, "postal_type"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 731
    if-eqz v6, :cond_4

    .line 732
    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_4
    const-string v10, "phone"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 739
    if-nez v6, :cond_5

    const-string v10, "secondary_phone"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_5
    move v6, v9

    .line 740
    :goto_1
    if-nez v6, :cond_6

    const-string v10, "tertiary_phone"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_6
    move v6, v9

    .line 742
    :goto_2
    if-eqz v6, :cond_7

    .line 743
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_7
    const-string v10, "email"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 750
    if-nez v6, :cond_8

    const-string v10, "secondary_email"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_8
    move v6, v9

    .line 751
    :goto_3
    if-nez v6, :cond_9

    const-string v10, "tertiary_email"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_9
    move v6, v9

    .line 753
    :goto_4
    if-eqz v6, :cond_a

    .line 754
    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_a
    const-string v10, "im_handle"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 763
    if-eqz v6, :cond_b

    .line 764
    const-string v10, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_b
    const-string v10, "company"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "job_title"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_c
    move v1, v9

    .line 772
    .local v1, hasOrg:Z
    :goto_5
    const-string v10, "company"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "job_title"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    :cond_d
    move v6, v9

    .line 775
    :goto_6
    if-eqz v6, :cond_e

    .line 776
    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_e
    const-string v8, "notes"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 783
    if-eqz v6, :cond_f

    .line 784
    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_f
    const-string v8, "ConImage"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 793
    if-eqz v6, :cond_10

    .line 794
    const-string v8, "vnd.android.cursor.item/photo"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_10
    const/4 v0, 0x1

    .line 800
    .local v0, acceptInsertedData:Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 801
    .local v5, mimeType:Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v3

    .line 802
    .local v3, kind:Lcom/android/htccontacts/model/DataKind;
    if-nez v3, :cond_11

    .line 803
    const/4 v0, 0x0

    .line 804
    goto/16 :goto_0

    .end local v0           #acceptInsertedData:Z
    .end local v1           #hasOrg:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_12
    move v6, v8

    .line 739
    goto/16 :goto_1

    :cond_13
    move v6, v8

    .line 740
    goto/16 :goto_2

    :cond_14
    move v6, v8

    .line 750
    goto/16 :goto_3

    :cond_15
    move v6, v8

    .line 751
    goto :goto_4

    :cond_16
    move v1, v8

    .line 769
    goto :goto_5

    .restart local v1       #hasOrg:Z
    :cond_17
    move v6, v8

    .line 772
    goto :goto_6
.end method

.method private static adjustType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/htccontacts/model/DataKind;)Z
    .locals 8
    .parameter "entry"
    .parameter
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Lcom/android/htccontacts/model/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 996
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 1018
    :goto_0
    return v5

    .line 1000
    :cond_1
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1001
    .local v4, typeInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1003
    .local v3, type:I
    :goto_1
    invoke-static {v3, p1, p2}, Lcom/android/htccontacts/model/EntityModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1004
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 1005
    goto :goto_0

    .line 1001
    .end local v3           #type:I
    :cond_2
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/AccountType$EditType;

    iget v3, v5, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    goto :goto_1

    .line 1009
    .restart local v3       #type:I
    :cond_3
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 1010
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 1011
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 1012
    .local v0, editType:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v5, v0, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/htccontacts/model/EntityModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1013
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget v7, v0, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 1014
    goto :goto_0

    .line 1010
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_5
    move v5, v7

    .line 1018
    goto :goto_0
.end method

.method protected static areEqual(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/htccontacts/model/DataKind;)Z
    .locals 6
    .parameter "values1"
    .parameter "values2"
    .parameter "kind"

    .prologue
    const/4 v4, 0x0

    .line 564
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 574
    :goto_0
    return v4

    .line 566
    :cond_0
    iget-object v5, p2, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 567
    .local v0, field:Lcom/android/htccontacts/model/AccountType$EditField;
    iget-object v5, v0, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, value1:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, value2:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 574
    .end local v0           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v2           #value1:Ljava/lang/String;
    .end local v3           #value2:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z
    .locals 7
    .parameter "state"
    .parameter "kind"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 73
    iget-object v5, p1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 74
    .local v2, visibleCount:I
    invoke-static {p0, p1}, Lcom/android/htccontacts/model/EntityModifier;->hasValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v1

    .line 75
    .local v1, validTypes:Z
    iget v5, p1, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget v5, p1, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    if-ge v2, v5, :cond_1

    :cond_0
    move v0, v3

    .line 77
    .local v0, validOverall:Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    .end local v0           #validOverall:Z
    :cond_1
    move v0, v4

    .line 75
    goto :goto_0

    .restart local v0       #validOverall:Z
    :cond_2
    move v3, v4

    .line 77
    goto :goto_1
.end method

.method public static canInsertType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;I)Z
    .locals 4
    .parameter "state"
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Ljava/util/ArrayList;

    move-result-object v2

    .line 83
    .local v2, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 84
    .local v0, editType:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v3, v0, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-ne v3, p2, :cond_0

    .line 85
    const/4 v3, 0x1

    .line 88
    .end local v0           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static ensureFallbackAccountType(Landroid/content/Context;)Lcom/android/htccontacts/model/FallbackAccountType;
    .locals 1
    .parameter "context"

    .prologue
    .line 291
    sget-object v0, Lcom/android/htccontacts/model/EntityModifier;->mFallbackSource:Lcom/android/htccontacts/model/FallbackAccountType;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/android/htccontacts/model/FallbackAccountType;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/model/FallbackAccountType;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/htccontacts/model/EntityModifier;->mFallbackSource:Lcom/android/htccontacts/model/FallbackAccountType;

    .line 294
    :cond_0
    sget-object v0, Lcom/android/htccontacts/model/EntityModifier;->mFallbackSource:Lcom/android/htccontacts/model/FallbackAccountType;

    return-object v0
.end method

.method public static ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "accountType"
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p1, p2}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v1

    .line 108
    .local v1, kind:Lcom/android/htccontacts/model/DataKind;
    invoke-virtual {p0, p2, v0}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_1

    .line 110
    .local v0, hasChild:Z
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 112
    invoke-static {p0, v1}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 120
    :cond_0
    return-void

    .line 108
    .end local v0           #hasChild:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1071
    const-string v2, "im_protocol"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, encodedString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 1075
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1077
    .local v1, protocol:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1078
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #protocol:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1080
    .restart local v1       #protocol:Ljava/lang/Object;
    :cond_1
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/String;

    .end local v1           #protocol:Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;ZI)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 7
    .parameter "state"
    .parameter "kind"
    .parameter "includeSecondary"
    .parameter "exactValue"

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-object v6, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-object v3

    .line 359
    :cond_1
    invoke-static {p0, p1}, Lcom/android/htccontacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 360
    .local v4, typeCount:Landroid/util/SparseIntArray;
    invoke-static {p0, p1, v3, p2, v4}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 362
    .local v5, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 368
    .local v2, lastType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 369
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 371
    .local v3, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v6, v3, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 373
    .local v0, count:I
    iget v6, v3, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-eq p3, v6, :cond_0

    .line 378
    if-lez v0, :cond_2

    .line 380
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 385
    .end local v0           #count:I
    .end local v3           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 386
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/AccountType$EditType;

    move-object v3, v6

    goto :goto_0

    :cond_4
    move-object v3, v2

    .line 388
    goto :goto_0
.end method

.method public static getCurrentType(Landroid/content/ContentValues;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 3
    .parameter "entry"
    .parameter "kind"

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-object v1

    .line 303
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 304
    .local v0, rawValue:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/htccontacts/model/EntityModifier;->getType(Lcom/android/htccontacts/model/DataKind;I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentType(Landroid/database/Cursor;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 4
    .parameter "cursor"
    .parameter "kind"

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v3, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-object v2

    .line 314
    :cond_1
    iget-object v3, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 316
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 317
    .local v1, rawValue:I
    invoke-static {p1, v1}, Lcom/android/htccontacts/model/EntityModifier;->getType(Lcom/android/htccontacts/model/DataKind;I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 2
    .parameter "entry"
    .parameter "kind"

    .prologue
    .line 254
    iget-object v1, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 255
    .local v0, rawValue:Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 256
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/htccontacts/model/EntityModifier;->getType(Lcom/android/htccontacts/model/DataKind;I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentTypeFromFallbackAccountType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;Lcom/android/htccontacts/model/FallbackAccountType;)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 3
    .parameter "entry"
    .parameter "mimeType"
    .parameter "accountType"

    .prologue
    .line 275
    invoke-virtual {p2, p1}, Lcom/android/htccontacts/model/FallbackAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 276
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 277
    .local v1, rawValue:Ljava/lang/Long;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 278
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/htccontacts/model/EntityModifier;->getType(Lcom/android/htccontacts/model/DataKind;I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    goto :goto_0
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter "typeColumn"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 1055
    .local p0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v0, 0x0

    .line 1056
    .local v0, count:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1057
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1058
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4, p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1059
    .local v3, typeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 1060
    add-int/lit8 v0, v0, 0x1

    .line 1057
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    .end local v3           #typeInteger:Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/htccontacts/model/DataKind;I)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 3
    .parameter "kind"
    .parameter "rawValue"

    .prologue
    .line 324
    iget-object v2, p0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 326
    .local v1, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v2, v1, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 331
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTypeFrequencies(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .parameter "state"
    .parameter "kind"

    .prologue
    .line 218
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 221
    .local v6, typeCount:Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 222
    .local v3, mimeEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_0

    .line 237
    :goto_0
    return-object v6

    .line 224
    :cond_0
    const/4 v4, 0x0

    .line 225
    .local v4, totalCount:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 227
    .local v1, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    add-int/lit8 v4, v4, 0x1

    .line 230
    invoke-static {v1, p1}, Lcom/android/htccontacts/model/EntityModifier;->getCurrentType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v5

    .line 231
    .local v5, type:Lcom/android/htccontacts/model/AccountType$EditType;
    if-eqz v5, :cond_1

    .line 232
    iget v7, v5, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 233
    .local v0, count:I
    iget v7, v5, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 236
    .end local v0           #count:I
    .end local v1           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v5           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_2
    const/high16 v7, -0x8000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public static getTypePrecedence(Lcom/android/htccontacts/model/DataKind;I)I
    .locals 3
    .parameter "kind"
    .parameter "rawValue"

    .prologue
    .line 339
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 341
    .local v1, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v2, v1, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 345
    .end local v0           #i:I
    .end local v1           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :goto_1
    return v0

    .line 339
    .restart local v0       #i:I
    .restart local v1       #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v1           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_1
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method public static getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Ljava/util/ArrayList;
    .locals 2
    .parameter "state"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/model/EntityDelta;",
            "Lcom/android/htccontacts/model/DataKind;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;)Ljava/util/ArrayList;
    .locals 6
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/model/EntityDelta;",
            "Lcom/android/htccontacts/model/DataKind;",
            "Lcom/android/htccontacts/model/AccountType$EditType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 142
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .locals 6
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .parameter "includeSecondary"
    .parameter "typeCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/model/EntityDelta;",
            "Lcom/android/htccontacts/model/DataKind;",
            "Lcom/android/htccontacts/model/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;
    .locals 10
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .parameter "includeSecondary"
    .parameter "typeCount"
    .parameter "ignoreOverall"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/model/EntityDelta;",
            "Lcom/android/htccontacts/model/DataKind;",
            "Lcom/android/htccontacts/model/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 184
    .local v7, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    invoke-static {p1}, Lcom/android/htccontacts/model/EntityModifier;->hasEditTypes(Lcom/android/htccontacts/model/DataKind;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 206
    :cond_0
    return-object v7

    .line 186
    :cond_1
    if-nez p4, :cond_2

    .line 188
    invoke-static {p0, p1}, Lcom/android/htccontacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 192
    :cond_2
    const/high16 v8, -0x8000

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 193
    .local v2, overallCount:I
    iget-object v8, p1, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 194
    .local v3, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v8, p1, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    const/4 v8, 0x1

    if-ne p5, v8, :cond_6

    :cond_4
    const/4 v4, 0x1

    .line 196
    .local v4, validOverall:Z
    :goto_1
    iget v8, v3, Lcom/android/htccontacts/model/AccountType$EditType;->specificMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    const/4 v6, 0x1

    .line 198
    .local v6, validSpecific:Z
    :goto_2
    if-eqz p3, :cond_a

    const/4 v5, 0x1

    .line 199
    .local v5, validSecondary:Z
    :goto_3
    invoke-virtual {v3, p2}, Lcom/android/htccontacts/model/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    .local v0, forcedInclude:Z
    if-nez v0, :cond_5

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 202
    :cond_5
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v0           #forcedInclude:Z
    .end local v4           #validOverall:Z
    .end local v5           #validSecondary:Z
    .end local v6           #validSpecific:Z
    :cond_6
    iget v8, p1, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    if-ge v2, v8, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 196
    .restart local v4       #validOverall:Z
    :cond_8
    iget v8, v3, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iget v9, v3, Lcom/android/htccontacts/model/AccountType$EditType;->specificMax:I

    if-ge v8, v9, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    .line 198
    .restart local v6       #validSpecific:Z
    :cond_a
    iget-boolean v8, v3, Lcom/android/htccontacts/model/AccountType$EditType;->secondary:Z

    if-nez v8, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private static hasChanges(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;)Z
    .locals 10
    .parameter "state"
    .parameter "accountType"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 522
    invoke-virtual {p1}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/DataKind;

    .line 523
    .local v5, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v6, v5, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 524
    .local v6, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 525
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 530
    .local v1, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v5}, Lcom/android/htccontacts/model/EntityModifier;->isEmpty(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v9

    if-nez v9, :cond_3

    move v4, v7

    .line 531
    .local v4, isRealInsert:Z
    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 536
    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isRealInsert:Z
    .end local v5           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_2
    :goto_1
    return v7

    .restart local v0       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v1       #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #kind:Lcom/android/htccontacts/model/DataKind;
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_3
    move v4, v8

    .line 530
    goto :goto_0

    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_4
    move v7, v8

    .line 536
    goto :goto_1
.end method

.method public static hasChanges(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)Z
    .locals 8
    .parameter "set"
    .parameter "accountTypes"

    .prologue
    const/4 v6, 0x1

    .line 455
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->isMarkedForSplitting()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->isMarkedForJoining()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v6

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta;

    .line 460
    .local v3, state:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 461
    .local v5, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v5, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, accountType:Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v5, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, dataSet:Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v4

    .line 464
    .local v4, type:Lcom/android/htccontacts/model/AccountType;
    invoke-static {v3, v4}, Lcom/android/htccontacts/model/EntityModifier;->hasChanges(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 468
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v3           #state:Lcom/android/htccontacts/model/EntityDelta;
    .end local v4           #type:Lcom/android/htccontacts/model/AccountType;
    .end local v5           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static hasEditTypes(Lcom/android/htccontacts/model/DataKind;)Z
    .locals 1
    .parameter "kind"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z
    .locals 2
    .parameter "state"
    .parameter "kind"

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-static {p1}, Lcom/android/htccontacts/model/EntityModifier;->hasEditTypes(Lcom/android/htccontacts/model/DataKind;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 3
    .parameter "state"
    .parameter "kind"

    .prologue
    const/high16 v2, -0x8000

    .line 399
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/htccontacts/model/EntityModifier;->getBestValidType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;ZI)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v0

    .line 400
    .local v0, bestType:Lcom/android/htccontacts/model/AccountType$EditType;
    if-nez v0, :cond_0

    .line 402
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/htccontacts/model/EntityModifier;->getBestValidType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;ZI)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v0

    .line 404
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 4
    .parameter "state"
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 413
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 432
    :goto_0
    return-object v1

    .line 415
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v0, after:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    iget-object v3, p1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 425
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 427
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    :cond_2
    invoke-static {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 431
    .local v1, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/EntityDelta;->addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public static isEmpty(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Z
    .locals 6
    .parameter "values"
    .parameter "kind"

    .prologue
    const/4 v4, 0x1

    .line 545
    iget-object v5, p1, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v4

    .line 547
    :cond_1
    const/4 v1, 0x0

    .line 548
    .local v1, hasValues:Z
    iget-object v5, p1, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 550
    .local v0, field:Lcom/android/htccontacts/model/AccountType$EditField;
    iget-object v5, v0, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 552
    const/4 v1, 0x1

    goto :goto_1

    .line 556
    .end local v0           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/htccontacts/model/DataKind;)Z
    .locals 7
    .parameter "type"
    .parameter
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Lcom/android/htccontacts/model/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1027
    const/4 v2, 0x0

    .line 1028
    .local v2, max:I
    iget-object v6, p2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 1029
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1030
    iget-object v6, p2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 1031
    .local v0, editType:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v6, v0, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-ne v6, p0, :cond_2

    .line 1032
    iget v2, v0, Lcom/android/htccontacts/model/AccountType$EditType;->specificMax:I

    .line 1037
    .end local v0           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_0
    if-nez v2, :cond_3

    move v4, v5

    .line 1047
    :cond_1
    :goto_1
    return v4

    .line 1029
    .restart local v0       #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1042
    .end local v0           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_3
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 1047
    iget-object v6, p2, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v6, p0}, Lcom/android/htccontacts/model/EntityModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v6

    if-lt v6, v2, :cond_1

    move v4, v5

    goto :goto_1
.end method

.method public static parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 9
    .parameter "state"
    .parameter "kind"
    .parameter "extras"
    .parameter "typeExtra"
    .parameter "valueExtra"
    .parameter "valueColumn"

    .prologue
    .line 1099
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1102
    .local v7, value:Ljava/lang/CharSequence;
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 1125
    :cond_0
    :goto_0
    return-object v1

    .line 1105
    :cond_1
    invoke-static {p0, p1}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v0

    .line 1106
    .local v0, canInsert:Z
    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    .line 1107
    .local v6, validValue:Z
    :goto_1
    if-eqz v6, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1106
    .end local v6           #validValue:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1110
    .restart local v6       #validValue:Z
    :cond_4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 1111
    .local v4, hasType:Z
    if-eqz v4, :cond_5

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p2, p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1113
    .local v5, typeValue:I
    const/4 v8, 0x1

    invoke-static {p0, p1, v8, v5}, Lcom/android/htccontacts/model/EntityModifier;->getBestValidType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;ZI)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v3

    .line 1116
    .local v3, editType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-static {p0, p1, v3}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 1117
    .local v1, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p5, v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 1121
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1122
    .local v2, customType:Ljava/lang/String;
    iget-object v8, v3, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    .end local v1           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #customType:Ljava/lang/String;
    .end local v3           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    .end local v5           #typeValue:I
    :cond_5
    const/high16 v8, -0x8000

    goto :goto_2
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 24
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 583
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 591
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v10

    .line 593
    .local v10, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 594
    .local v16, name:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 595
    const-string v3, "data2"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_2
    const-string v3, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 599
    .local v19, phoneticName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    const-string v3, "data7"

    move-object/from16 v0, v19

    invoke-virtual {v10, v3, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_3
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v4

    .line 607
    .local v4, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v6, "postal_type"

    const-string v7, "postal"

    const-string v8, "data4"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 613
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v4

    .line 614
    const-string v6, "phone_type"

    const-string v7, "phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 615
    const-string v6, "secondary_phone_type"

    const-string v7, "secondary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 617
    const-string v6, "tertiary_phone_type"

    const-string v7, "tertiary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 623
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v4

    .line 624
    const-string v6, "email_type"

    const-string v7, "email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 625
    const-string v6, "secondary_email_type"

    const-string v7, "secondary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 627
    const-string v6, "tertiary_email_type"

    const-string v7, "tertiary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 633
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v4

    .line 634
    invoke-static/range {p3 .. p3}, Lcom/android/htccontacts/model/EntityModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 635
    const-string v6, "im_protocol"

    const-string v7, "im_handle"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 639
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    const/4 v13, 0x1

    .line 641
    .local v13, hasOrg:Z
    :goto_1
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v15

    .line 642
    .local v15, kindOrg:Lcom/android/htccontacts/model/DataKind;
    if-eqz v13, :cond_6

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 643
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v10

    .line 645
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 646
    .local v11, company:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/htccontacts/util/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 647
    const-string v3, "data1"

    invoke-virtual {v10, v3, v11}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_5
    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 651
    .local v22, title:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/htccontacts/util/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 652
    const-string v3, "data4"

    move-object/from16 v0, v22

    invoke-virtual {v10, v3, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .end local v11           #company:Ljava/lang/String;
    .end local v22           #title:Ljava/lang/String;
    :cond_6
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 658
    .local v12, hasNotes:Z
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v14

    .line 659
    .local v14, kindNotes:Lcom/android/htccontacts/model/DataKind;
    if-eqz v12, :cond_7

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 660
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v10

    .line 662
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 663
    .local v17, notes:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/util/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 664
    const-string v3, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v10, v3, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .end local v17           #notes:Ljava/lang/String;
    :cond_7
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 671
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v10

    .line 672
    const-string v3, "EntityModifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v3, "ConImage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/graphics/Bitmap;

    .line 674
    .local v20, photo:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_8

    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 675
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v3, v5

    mul-int/lit8 v21, v3, 0x4

    .line 676
    .local v21, size:I
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 677
    .local v18, out:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v5, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY:I

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 679
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 680
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 681
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 682
    .local v9, bytes:[B
    const-string v3, "data15"

    invoke-virtual {v10, v3, v9}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v9           #bytes:[B
    .end local v18           #out:Ljava/io/ByteArrayOutputStream;
    .end local v21           #size:I
    :cond_8
    :goto_2
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 690
    .local v23, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v23, :cond_0

    .line 691
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/model/EntityModifier;->parseValues(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 639
    .end local v12           #hasNotes:Z
    .end local v13           #hasOrg:Z
    .end local v14           #kindNotes:Lcom/android/htccontacts/model/DataKind;
    .end local v15           #kindOrg:Lcom/android/htccontacts/model/DataKind;
    .end local v20           #photo:Landroid/graphics/Bitmap;
    .end local v23           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 683
    .restart local v12       #hasNotes:Z
    .restart local v13       #hasOrg:Z
    .restart local v14       #kindNotes:Lcom/android/htccontacts/model/DataKind;
    .restart local v15       #kindOrg:Lcom/android/htccontacts/model/DataKind;
    .restart local v18       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #photo:Landroid/graphics/Bitmap;
    .restart local v21       #size:I
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 16
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 813
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 814
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    .line 816
    .local v8, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 817
    .local v13, name:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/htccontacts/util/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 818
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v12

    .line 819
    .local v12, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v15, 0x0

    .line 820
    .local v15, supportsDisplayName:Z
    iget-object v2, v12, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 821
    iget-object v2, v12, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 822
    .local v10, field:Lcom/android/htccontacts/model/AccountType$EditField;
    const-string v2, "data1"

    iget-object v4, v10, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    const/4 v15, 0x1

    .line 829
    .end local v10           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v15, :cond_4

    .line 830
    const-string v2, "data1"

    invoke-virtual {v8, v2, v13}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    .end local v12           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v15           #supportsDisplayName:Z
    :cond_2
    :goto_0
    const-string v2, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 860
    .local v14, phoneticName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/htccontacts/util/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 861
    const-string v2, "data7"

    invoke-virtual {v8, v2, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_3
    return-void

    .line 832
    .end local v14           #phoneticName:Ljava/lang/String;
    .restart local v12       #kind:Lcom/android/htccontacts/model/DataKind;
    .restart local v15       #supportsDisplayName:Z
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "complete_name"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data1"

    invoke-virtual {v2, v4, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 836
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data4"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data5"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data3"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "data6"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 846
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 847
    const-string v2, "data4"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v2, "data2"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v2, "data5"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v2, "data3"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v2, "data6"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static parseStructuredPostalExtra(Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 11
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 868
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v1

    .line 869
    .local v1, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v3, "postal_type"

    const-string v4, "postal"

    const-string v5, "data1"

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 871
    .local v7, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 873
    .local v6, address:Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 874
    const/4 v10, 0x0

    .line 875
    .local v10, supportsFormatted:Z
    iget-object v0, v1, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, v1, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 877
    .local v8, field:Lcom/android/htccontacts/model/AccountType$EditField;
    const-string v0, "data1"

    iget-object v2, v8, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    const/4 v10, 0x1

    .line 884
    .end local v8           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_1
    if-nez v10, :cond_2

    .line 885
    const-string v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 889
    .end local v10           #supportsFormatted:Z
    :cond_2
    return-void

    .line 871
    .end local v6           #address:Ljava/lang/String;
    :cond_3
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static parseValues(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "state"
    .parameter "accountType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/model/EntityDelta;",
            "Lcom/android/htccontacts/model/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p2, dataValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 894
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 895
    .local v8, mimeType:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 896
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype is required. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    :cond_1
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 905
    invoke-virtual {p1, v8}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v7

    .line 906
    .local v7, kind:Lcom/android/htccontacts/model/DataKind;
    if-nez v7, :cond_2

    .line 907
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype not supported for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/htccontacts/model/AccountType;->getAccountTypeAndDataSet()Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 912
    :cond_2
    invoke-static {v9}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 913
    .local v4, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-static {v4, v7}, Lcom/android/htccontacts/model/EntityModifier;->isEmpty(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 917
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 919
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    iget v10, v7, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 921
    :cond_3
    const/4 v0, 0x1

    .line 922
    .local v0, addEntry:Z
    const/4 v1, 0x0

    .line 923
    .local v1, count:I
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 924
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 925
    .local v2, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_4

    .line 926
    invoke-static {v2, v9, v7}, Lcom/android/htccontacts/model/EntityModifier;->areEqual(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 927
    const/4 v0, 0x0

    .line 935
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_5
    iget v10, v7, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    iget v10, v7, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    if-lt v1, v10, :cond_6

    .line 936
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype allows at most "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v0, 0x0

    .line 941
    :cond_6
    if-eqz v0, :cond_7

    .line 942
    invoke-static {v4, v3, v7}, Lcom/android/htccontacts/model/EntityModifier;->adjustType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v0

    .line 945
    :cond_7
    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/EntityDelta;->addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 930
    .restart local v2       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 950
    .end local v0           #addEntry:Z
    .end local v1           #count:I
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_9
    const/4 v0, 0x1

    .line 951
    .restart local v0       #addEntry:Z
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 952
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 953
    .restart local v2       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v2, v7}, Lcom/android/htccontacts/model/EntityModifier;->isEmpty(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 954
    const/4 v0, 0x0

    .line 958
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_b
    if-eqz v0, :cond_c

    .line 959
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 960
    .restart local v2       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 965
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_c
    if-eqz v0, :cond_d

    .line 966
    invoke-static {v4, v3, v7}, Lcom/android/htccontacts/model/EntityModifier;->adjustType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v0

    .line 969
    :cond_d
    if-eqz v0, :cond_e

    .line 970
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/EntityDelta;->addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 971
    :cond_e
    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 974
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 975
    .restart local v2       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-static {v2, v7}, Lcom/android/htccontacts/model/EntityModifier;->isEmpty(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 976
    const-string v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data1"

    invoke-virtual {v2, v12}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "data1"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 982
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_10
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will not override mimetype "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 987
    .end local v0           #addEntry:Z
    .end local v3           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v4           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v7           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v8           #mimeType:Ljava/lang/String;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_11
    return-void
.end method

.method public static trimAddContactEmpty(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V
    .locals 19
    .parameter "set"
    .parameter "sources"

    .prologue
    .line 1131
    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1132
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/EntityDelta;

    .line 1133
    .local v7, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v7}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    .line 1134
    .local v15, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v15}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v15}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1135
    const-string v17, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1136
    .local v2, accountType:Ljava/lang/String;
    const-string v17, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1138
    .local v6, dataSet:Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v14

    .line 1140
    .local v14, source:Lcom/android/htccontacts/model/AccountType;
    const/4 v5, 0x1

    .line 1141
    .local v5, bOnlyHaveGroupAndPhotoMimetype:Z
    const/4 v3, 0x0

    .line 1142
    .local v3, bHasValidGroupData:Z
    const/4 v4, 0x0

    .line 1143
    .local v4, bHasValidPhotoData:Z
    invoke-virtual {v14}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/DataKind;

    .line 1145
    .local v10, kind:Lcom/android/htccontacts/model/DataKind;
    iget-boolean v0, v10, Lcom/android/htccontacts/model/DataKind;->editable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1146
    iget-object v12, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1147
    .local v12, mimeType:Ljava/lang/String;
    const-string v17, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1148
    invoke-virtual {v7, v12}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1149
    .local v11, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1150
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 1151
    .local v16, vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v17, "data1"

    invoke-virtual/range {v16 .. v17}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 1152
    const/4 v3, 0x1

    goto :goto_1

    .line 1156
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v16           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const-string v17, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1157
    invoke-virtual {v7, v12}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    .line 1158
    .local v13, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v13, :cond_0

    .line 1159
    const-string v17, "data15"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v17

    if-eqz v17, :cond_0

    .line 1160
    const/4 v4, 0x1

    goto :goto_0

    .line 1163
    .end local v13           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_3
    if-eqz v5, :cond_0

    .line 1164
    invoke-virtual {v7, v12}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1165
    .restart local v11       #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v11, :cond_0

    .line 1166
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 1167
    .restart local v16       #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v16 .. v16}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1168
    const/4 v5, 0x0

    goto :goto_2

    .line 1175
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v11           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v16           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_5
    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    .line 1176
    invoke-virtual {v7}, Lcom/android/htccontacts/model/EntityDelta;->markDeleted()V

    .line 1180
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #bHasValidGroupData:Z
    .end local v4           #bHasValidPhotoData:Z
    .end local v5           #bOnlyHaveGroupAndPhotoMimetype:Z
    .end local v6           #dataSet:Ljava/lang/String;
    .end local v7           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v14           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v15           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_6
    return-void
.end method

.method public static trimEmpty(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;)V
    .locals 15
    .parameter "state"
    .parameter "accountType"

    .prologue
    .line 478
    const/4 v3, 0x0

    .line 481
    .local v3, hasValues:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/model/DataKind;

    .line 482
    .local v9, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v10, v9, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 483
    .local v10, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 484
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 488
    .local v2, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const/4 v11, 0x1

    .line 489
    .local v11, touched:Z
    :goto_1
    if-nez v11, :cond_4

    .line 490
    const/4 v3, 0x1

    .line 491
    goto :goto_0

    .line 488
    .end local v11           #touched:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 495
    .restart local v11       #touched:Z
    :cond_4
    const-string v12, "com.google"

    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    const-string v14, "account_type"

    invoke-virtual {v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 497
    .local v6, isGoogleAccount:Z
    const-string v12, "vnd.android.cursor.item/photo"

    iget-object v13, v9, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 498
    .local v8, isPhoto:Z
    if-eqz v8, :cond_5

    if-eqz v6, :cond_5

    const/4 v7, 0x1

    .line 500
    .local v7, isGooglePhoto:Z
    :goto_2
    invoke-static {v2, v9}, Lcom/android/htccontacts/model/EntityModifier;->isEmpty(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez v7, :cond_6

    .line 504
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 498
    .end local v7           #isGooglePhoto:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 505
    .restart local v7       #isGooglePhoto:Z
    :cond_6
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isFromTemplate()Z

    move-result v12

    if-nez v12, :cond_1

    .line 506
    const/4 v3, 0x1

    goto :goto_0

    .line 510
    .end local v1           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v2           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #isGoogleAccount:Z
    .end local v7           #isGooglePhoto:Z
    .end local v8           #isPhoto:Z
    .end local v9           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v11           #touched:Z
    :cond_7
    if-nez v3, :cond_8

    .line 512
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta;->markDeleted()V

    .line 515
    :cond_8
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/htccontacts/model/EntityDelta;->getEntryCount(Z)I

    move-result v0

    .line 516
    .local v0, counts:I
    if-nez v0, :cond_9

    .line 517
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta;->markDeleted()V

    .line 519
    :cond_9
    return-void
.end method

.method public static trimEmpty(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V
    .locals 7
    .parameter "set"
    .parameter "accountTypes"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta;

    .line 445
    .local v3, state:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 446
    .local v5, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, accountType:Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, dataSet:Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v4

    .line 449
    .local v4, type:Lcom/android/htccontacts/model/AccountType;
    invoke-static {v3, v4}, Lcom/android/htccontacts/model/EntityModifier;->trimEmpty(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;)V

    goto :goto_0

    .line 451
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v3           #state:Lcom/android/htccontacts/model/EntityDelta;
    .end local v4           #type:Lcom/android/htccontacts/model/AccountType;
    .end local v5           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void
.end method
