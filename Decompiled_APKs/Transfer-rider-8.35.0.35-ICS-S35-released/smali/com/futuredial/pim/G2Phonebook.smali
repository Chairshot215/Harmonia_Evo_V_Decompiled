.class public Lcom/futuredial/pim/G2Phonebook;
.super Lcom/futuredial/pim/CPim;
.source "G2Phonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/pim/G2Phonebook$1;,
        Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;
    }
.end annotation


# static fields
.field private static MAX_APPLYBATCH:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fldIDTB:Lcom/futuredial/pim/FieldIDResTB;

.field private iOrder:I

.field private iWriteSizeCount:I

.field private m_disMatchArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private operations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private orgBuilder:Landroid/content/ContentProviderOperation$Builder;

.field private rdContact:Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;

.field private sGroup:Ljava/lang/String;

.field private sysRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x258

    sput v0, Lcom/futuredial/pim/G2Phonebook;->MAX_APPLYBATCH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/futuredial/pim/CPim;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v1, p0, Lcom/futuredial/pim/G2Phonebook;->sysRes:Landroid/content/res/Resources;

    .line 55
    iput-object v1, p0, Lcom/futuredial/pim/G2Phonebook;->fldIDTB:Lcom/futuredial/pim/FieldIDResTB;

    .line 58
    const-string v0, "G2Phonebook"

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    .line 63
    iput v2, p0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    .line 65
    iput v2, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    .line 66
    iput-object v1, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->sGroup:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    .line 73
    iput-object v1, p0, Lcom/futuredial/pim/G2Phonebook;->rdContact:Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->sysRes:Landroid/content/res/Resources;

    .line 79
    invoke-static {}, Lcom/futuredial/pim/FieldIDResTB;->getInstance()Lcom/futuredial/pim/FieldIDResTB;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->fldIDTB:Lcom/futuredial/pim/FieldIDResTB;

    .line 80
    iput v2, p0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    .line 81
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    return-void
.end method

.method private AddOrganization(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, comarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, jobArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 756
    const/4 v0, 0x1

    .line 757
    .local v0, bs:Z
    const/4 v1, 0x0

    .line 759
    .local v1, index:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 761
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 762
    .local v2, orgBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    iget v5, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 763
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 764
    const-string v3, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 766
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/futuredial/pim/G2Phonebook;->putPhoneOrganization(Lcom/futuredial/publicobj/Field;Landroid/content/ContentProviderOperation$Builder;)Z

    .line 767
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/futuredial/pim/G2Phonebook;->putPhoneOrganizationJobTitle(Lcom/futuredial/publicobj/Field;Landroid/content/ContentProviderOperation$Builder;)Z

    .line 768
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    add-int/lit8 v1, v1, 0x1

    .line 770
    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 766
    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 767
    goto :goto_2

    .line 773
    .end local v2           #orgBuilder:Landroid/content/ContentProviderOperation$Builder;
    :catch_0
    move-exception v3

    .line 777
    :cond_3
    return v0
.end method

.method private SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;
    .locals 6
    .parameter "profld"

    .prologue
    .line 1112
    iget-object v3, p0, Lcom/futuredial/pim/G2Phonebook;->fldIDTB:Lcom/futuredial/pim/FieldIDResTB;

    iget-object v4, p1, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/futuredial/pim/FieldIDResTB;->GetResID(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    .line 1113
    .local v1, ntmpfldId:Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 1114
    .local v2, strLabel:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v0, csBuffer:Ljava/lang/StringBuffer;
    if-eqz v1, :cond_0

    .line 1116
    iget-object v3, p0, Lcom/futuredial/pim/G2Phonebook;->sysRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1117
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1119
    iget-object v3, p1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1122
    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1123
    iget-object v3, p1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v4, "\r\n"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1128
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private putEmailFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1690
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x1

    .line 1693
    .local v1, bs:Z
    const/4 v8, 0x0

    .line 1694
    .local v8, type:I
    :try_start_0
    const-string v0, ""

    .line 1695
    .local v0, address:Ljava/lang/String;
    const-string v7, ""

    .line 1696
    .local v7, label:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1697
    .local v6, jsonObject_email:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 1699
    .local v5, jsonArray:Lorg/json/JSONArray;
    const-string v9, "email"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1700
    const-string v9, "email"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1701
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 1702
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #jsonObject_email:Lorg/json/JSONObject;
    check-cast v6, Lorg/json/JSONObject;

    .line 1703
    .restart local v6       #jsonObject_email:Lorg/json/JSONObject;
    const-string v9, "data2"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1704
    const-string v9, "data2"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1705
    :cond_0
    const-string v9, "data1"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1706
    const-string v9, "data1"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1707
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    const-string v9, "data3"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1708
    const-string v9, "data3"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #label:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 1710
    .restart local v7       #label:Ljava/lang/String;
    :cond_2
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1711
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "raw_contact_id"

    iget v10, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1712
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1713
    const-string v9, "data1"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1714
    const-string v9, "data2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1715
    const-string v9, "data3"

    invoke-virtual {v2, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1716
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1719
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v6           #jsonObject_email:Lorg/json/JSONObject;
    .end local v7           #label:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1720
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1721
    const/4 v1, 0x0

    .line 1723
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    return v1
.end method

.method private putEventFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 12
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1951
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x1

    .line 1953
    .local v1, bs:Z
    const/4 v5, 0x0

    .line 1954
    .local v5, jsonArray:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 1955
    .local v6, jsonObject_event:Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 1956
    .local v9, type:I
    :try_start_0
    const-string v8, ""

    .line 1957
    .local v8, start_date:Ljava/lang/String;
    const-string v7, ""

    .line 1959
    .local v7, label:Ljava/lang/String;
    const-string v10, "event"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1960
    const-string v10, "event"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1961
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 1962
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 1963
    const-string v10, "data2"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1964
    const-string v10, "data2"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1965
    :cond_0
    const-string v10, "data1"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1966
    const-string v10, "data1"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #start_date:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1967
    .restart local v8       #start_date:Ljava/lang/String;
    :cond_1
    const-string v10, "data3"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1968
    const-string v10, "data3"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #label:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 1970
    .restart local v7       #label:Ljava/lang/String;
    :cond_2
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1971
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "raw_contact_id"

    iget v11, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1972
    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1973
    const-string v10, "data1"

    invoke-virtual {v2, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1974
    const-string v10, "data3"

    invoke-virtual {v2, v10, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1975
    const-string v10, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1976
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1961
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1979
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #i:I
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #start_date:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1980
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1981
    const/4 v1, 0x0

    .line 1983
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    return v1
.end method

.method private putGroupContact(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1342
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/futuredial/pim/G2Phonebook;->sGroup:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/futuredial/pim/G2Phonebook;->sGroup:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1347
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    iget v3, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1348
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1350
    const-string v2, "data1"

    iget-object v3, p0, Lcom/futuredial/pim/G2Phonebook;->sGroup:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1352
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1355
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :catch_0
    move-exception v1

    .line 1357
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "G2Phonebook"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private putImFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 13
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1764
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 1766
    .local v0, bs:Z
    const/4 v10, 0x0

    .line 1767
    .local v10, type:I
    const/4 v9, 0x0

    .line 1768
    .local v9, protocol:I
    :try_start_0
    const-string v3, ""

    .line 1769
    .local v3, data:Ljava/lang/String;
    const-string v8, ""

    .line 1770
    .local v8, label:Ljava/lang/String;
    const-string v2, ""

    .line 1771
    .local v2, custom_protocol:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1772
    .local v6, jsonArray:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 1774
    .local v7, jsonObject_im:Lorg/json/JSONObject;
    const-string v11, "im"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1775
    const-string v11, "im"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1776
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 1777
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #jsonObject_im:Lorg/json/JSONObject;
    check-cast v7, Lorg/json/JSONObject;

    .line 1778
    .restart local v7       #jsonObject_im:Lorg/json/JSONObject;
    const-string v11, "data2"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1779
    const-string v11, "data2"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1780
    :cond_0
    const-string v11, "data5"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1781
    const-string v11, "data5"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1782
    :cond_1
    const-string v11, "data1"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1783
    const-string v11, "data1"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1784
    :cond_2
    const-string v11, "data3"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1785
    const-string v11, "data3"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1786
    :cond_3
    const-string v11, "data6"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1787
    const-string v11, "data6"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1789
    :cond_4
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1790
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v11, "raw_contact_id"

    iget v12, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1791
    const-string v11, "mimetype"

    const-string v12, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1792
    const-string v11, "data1"

    invoke-virtual {v1, v11, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1793
    const-string v11, "data2"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1794
    const-string v11, "data5"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1795
    const-string v11, "data6"

    invoke-virtual {v1, v11, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1796
    const-string v11, "data3"

    invoke-virtual {v1, v11, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1797
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1800
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #custom_protocol:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v7           #jsonObject_im:Lorg/json/JSONObject;
    .end local v8           #label:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1801
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1802
    const/4 v0, 0x0

    .line 1804
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    return v0
.end method

.method private putNameValues(Ljava/util/ArrayList;ZZLandroid/content/ContentValues;)Z
    .locals 8
    .parameter
    .parameter "bhasFirstName"
    .parameter "bhasLastName"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;ZZ",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, fldArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v0, 0x1

    .line 467
    .local v0, bs:Z
    const/4 v2, 0x0

    .local v2, n:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, nCount:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 469
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/publicobj/Field;

    .line 470
    .local v1, fld:Lcom/futuredial/publicobj/Field;
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v4, v1, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 467
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :pswitch_1
    const-string v4, "data2"

    iget-object v5, v1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :pswitch_2
    const-string v4, "data3"

    iget-object v5, v1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :pswitch_3
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 484
    const-string v4, "data2"

    iget-object v5, v1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 488
    :pswitch_4
    const-string v4, "data5"

    iget-object v5, v1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 496
    .end local v1           #fld:Lcom/futuredial/publicobj/Field;
    :cond_1
    return v0

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private putNoteFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2023
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 2026
    .local v0, bs:Z
    :try_start_0
    const-string v3, ""

    .line 2028
    .local v3, note:Ljava/lang/String;
    const-string v4, "data1"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2029
    const-string v4, "data1"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #note:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 2030
    .restart local v3       #note:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2031
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "raw_contact_id"

    iget v5, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2032
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2034
    const-string v4, "data1"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2036
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2045
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #note:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 2039
    :catch_0
    move-exception v2

    .line 2041
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2043
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putNumberFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1651
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 1653
    .local v0, bs:Z
    const/4 v8, 0x0

    .line 1654
    .local v8, type:I
    :try_start_0
    const-string v7, ""

    .line 1655
    .local v7, number:Ljava/lang/String;
    const-string v6, ""

    .line 1656
    .local v6, label:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1657
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 1659
    .local v5, jsonObject_number:Lorg/json/JSONObject;
    const-string v9, "number"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1660
    const-string v9, "number"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1662
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 1663
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #jsonObject_number:Lorg/json/JSONObject;
    check-cast v5, Lorg/json/JSONObject;

    .line 1664
    .restart local v5       #jsonObject_number:Lorg/json/JSONObject;
    const-string v9, "data2"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1665
    const-string v9, "data2"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1666
    :cond_0
    const-string v9, "data3"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1667
    const-string v9, "data3"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #label:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1668
    .restart local v6       #label:Ljava/lang/String;
    :cond_1
    const-string v9, "data1"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1669
    const-string v9, "data1"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #number:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 1671
    .restart local v7       #number:Ljava/lang/String;
    :cond_2
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1672
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "raw_contact_id"

    iget v10, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1673
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1674
    const-string v9, "data1"

    invoke-virtual {v1, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1675
    const-string v9, "data2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1676
    const-string v9, "data3"

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1677
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1681
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #jsonObject_number:Lorg/json/JSONObject;
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1682
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1683
    const/4 v0, 0x0

    .line 1685
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    return v0
.end method

.method private putOrganizationFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 20
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1880
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x1

    .line 1882
    .local v2, bs:Z
    const/16 v17, 0x0

    .line 1883
    .local v17, type:I
    :try_start_0
    const-string v4, ""

    .local v4, company:Ljava/lang/String;
    const-string v11, ""

    .local v11, label:Ljava/lang/String;
    const-string v16, ""

    .local v16, title:Ljava/lang/String;
    const-string v5, ""

    .local v5, department:Ljava/lang/String;
    const-string v8, ""

    .local v8, job_description:Ljava/lang/String;
    const-string v15, ""

    .local v15, symbol:Ljava/lang/String;
    const-string v13, ""

    .local v13, phonetic_name:Ljava/lang/String;
    const-string v12, ""

    .local v12, office_location:Ljava/lang/String;
    const-string v14, ""

    .line 1884
    .local v14, phonetic_name_style:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1885
    .local v9, jsonArray:Lorg/json/JSONArray;
    const/4 v10, 0x0

    .line 1887
    .local v10, jsonObject_organization:Lorg/json/JSONObject;
    const-string v18, "organization"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1888
    const-string v18, "organization"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1889
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_a

    .line 1890
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #jsonObject_organization:Lorg/json/JSONObject;
    check-cast v10, Lorg/json/JSONObject;

    .line 1892
    .restart local v10       #jsonObject_organization:Lorg/json/JSONObject;
    sget-object v18, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 1893
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v18, "raw_contact_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1894
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1895
    const-string v18, "data2"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1897
    const-string v18, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1898
    const-string v18, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #company:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1899
    .restart local v4       #company:Ljava/lang/String;
    const-string v18, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1901
    :cond_0
    const-string v18, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1902
    const-string v18, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1903
    const-string v18, "data2"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1905
    :cond_1
    const-string v18, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1906
    const-string v18, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #label:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1907
    .restart local v11       #label:Ljava/lang/String;
    const-string v18, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1909
    :cond_2
    const-string v18, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1910
    const-string v18, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #title:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1911
    .restart local v16       #title:Ljava/lang/String;
    const-string v18, "data4"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1913
    :cond_3
    const-string v18, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1914
    const-string v18, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #department:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1915
    .restart local v5       #department:Ljava/lang/String;
    const-string v18, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1917
    :cond_4
    const-string v18, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1918
    const-string v18, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #job_description:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1919
    .restart local v8       #job_description:Ljava/lang/String;
    const-string v18, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1921
    :cond_5
    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1922
    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #symbol:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1923
    .restart local v15       #symbol:Ljava/lang/String;
    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1925
    :cond_6
    const-string v18, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1926
    const-string v18, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #phonetic_name:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 1927
    .restart local v13       #phonetic_name:Ljava/lang/String;
    const-string v18, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1929
    :cond_7
    const-string v18, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1930
    const-string v18, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #office_location:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1931
    .restart local v12       #office_location:Ljava/lang/String;
    const-string v18, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1933
    :cond_8
    const-string v18, "data10"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1934
    const-string v18, "data10"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #phonetic_name_style:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1935
    .restart local v14       #phonetic_name_style:Ljava/lang/String;
    const-string v18, "data10"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1937
    :cond_9
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1941
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #company:Ljava/lang/String;
    .end local v5           #department:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #job_description:Ljava/lang/String;
    .end local v9           #jsonArray:Lorg/json/JSONArray;
    .end local v10           #jsonObject_organization:Lorg/json/JSONObject;
    .end local v11           #label:Ljava/lang/String;
    .end local v12           #office_location:Ljava/lang/String;
    .end local v13           #phonetic_name:Ljava/lang/String;
    .end local v14           #phonetic_name_style:Ljava/lang/String;
    .end local v15           #symbol:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1943
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1944
    const/4 v2, 0x0

    .line 1946
    .end local v6           #e:Ljava/lang/Exception;
    :cond_a
    return v2
.end method

.method private putPhoneAddressesArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 21
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x1

    .line 1138
    .local v7, bs:Z
    const/4 v14, 0x0

    .local v14, n:I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 1140
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/futuredial/publicobj/Field;

    .line 1141
    .local v12, fld:Lcom/futuredial/publicobj/Field;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1142
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v17, "raw_contact_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1143
    const-string v17, "mimetype"

    const-string v18, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1146
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x13ec

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1148
    const-string v17, "data2"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1166
    :goto_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1167
    .local v9, csBuffer:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, bSTREET1:Z
    const/4 v2, 0x0

    .local v2, bCITY:Z
    const/4 v4, 0x0

    .local v4, bSTATE:Z
    const/4 v6, 0x0

    .local v6, bZIP:Z
    const/4 v3, 0x0

    .line 1169
    .local v3, bCOUNTRY:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v13, v0, :cond_a

    .line 1171
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/futuredial/publicobj/Field;

    .line 1172
    .local v15, profld:Lcom/futuredial/publicobj/Field;
    iget-object v0, v15, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 1312
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v16

    .line 1313
    .local v16, str:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1315
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1316
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    .end local v16           #str:Ljava/lang/String;
    :cond_0
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1151
    .end local v2           #bCITY:Z
    .end local v3           #bCOUNTRY:Z
    .end local v4           #bSTATE:Z
    .end local v5           #bSTREET1:Z
    .end local v6           #bZIP:Z
    .end local v9           #csBuffer:Ljava/lang/StringBuffer;
    .end local v13           #i:I
    .end local v15           #profld:Lcom/futuredial/publicobj/Field;
    :cond_1
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x13ed

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1153
    const-string v17, "data2"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1331
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #fld:Lcom/futuredial/publicobj/Field;
    :catch_0
    move-exception v11

    .line 1333
    .local v11, e:Ljava/lang/Exception;
    const-string v17, "G2Phonebook"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1335
    const/4 v7, 0x0

    .line 1337
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    :goto_4
    return v7

    .line 1156
    .restart local v8       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v12       #fld:Lcom/futuredial/publicobj/Field;
    :cond_3
    :try_start_1
    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x13ee

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1158
    const-string v17, "data2"

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1163
    :cond_4
    const/4 v7, 0x0

    .line 1164
    goto :goto_4

    .line 1185
    .restart local v2       #bCITY:Z
    .restart local v3       #bCOUNTRY:Z
    .restart local v4       #bSTATE:Z
    .restart local v5       #bSTREET1:Z
    .restart local v6       #bZIP:Z
    .restart local v9       #csBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #i:I
    .restart local v15       #profld:Lcom/futuredial/publicobj/Field;
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v16

    .line 1186
    .restart local v16       #str:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1188
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1189
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1196
    .end local v16           #str:Ljava/lang/String;
    :pswitch_2
    if-nez v5, :cond_5

    .line 1198
    const-string v17, "data4"

    iget-object v0, v15, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\r\n"

    const-string v20, "\n"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1199
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 1203
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v16

    .line 1204
    .restart local v16       #str:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1206
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1207
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1226
    .end local v16           #str:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v16

    .line 1227
    .restart local v16       #str:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1229
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1230
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1237
    .end local v16           #str:Ljava/lang/String;
    :pswitch_4
    if-nez v2, :cond_6

    .line 1239
    const-string v17, "data7"

    iget-object v0, v15, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\r\n"

    const-string v20, "\n"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1240
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1244
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v16

    .line 1245
    .restart local v16       #str:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1247
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1248
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1258
    .end local v16           #str:Ljava/lang/String;
    :pswitch_5
    if-nez v4, :cond_7

    .line 1260
    const-string v17, "data8"

    iget-object v0, v15, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\r\n"

    const-string v20, "\n"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1261
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 1265
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v16

    .line 1266
    .restart local v16       #str:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1268
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1269
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1276
    .end local v16           #str:Ljava/lang/String;
    :pswitch_6
    if-nez v6, :cond_8

    .line 1278
    const-string v17, "data9"

    iget-object v0, v15, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\r\n"

    const-string v20, "\n"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1279
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1283
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v16

    .line 1284
    .restart local v16       #str:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1286
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1294
    .end local v16           #str:Ljava/lang/String;
    :pswitch_7
    if-nez v3, :cond_9

    .line 1296
    const-string v17, "data10"

    iget-object v0, v15, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\r\n"

    const-string v20, "\n"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1297
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1301
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v16

    .line 1302
    .restart local v16       #str:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1304
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1305
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1322
    .end local v15           #profld:Lcom/futuredial/publicobj/Field;
    .end local v16           #str:Ljava/lang/String;
    :cond_a
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-lez v17, :cond_b

    .line 1324
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->sysRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->fldIDTB:Lcom/futuredial/pim/FieldIDResTB;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/futuredial/pim/FieldIDResTB;->GetResID(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1325
    .local v10, csInfo:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    .end local v10           #csInfo:Ljava/lang/String;
    :cond_b
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1138
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1172
    nop

    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private putPhoneEmailsArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 617
    .local v0, bs:Z
    const/4 v4, 0x0

    .local v4, n:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, nCount:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 619
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    .line 620
    .local v3, fld:Lcom/futuredial/publicobj/Field;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 621
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "raw_contact_id"

    iget v7, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 622
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 623
    const-string v6, "data1"

    iget-object v7, v3, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 626
    iget-object v6, v3, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 639
    const-string v6, "data2"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 642
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 629
    :pswitch_0
    const-string v6, "data2"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 645
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #fld:Lcom/futuredial/publicobj/Field;
    .end local v5           #nCount:I
    :catch_0
    move-exception v2

    .line 647
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    const/4 v0, 0x0

    .line 651
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return v0

    .line 632
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v3       #fld:Lcom/futuredial/publicobj/Field;
    .restart local v5       #nCount:I
    :pswitch_1
    :try_start_1
    const-string v6, "data2"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putPhoneEventArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 1012
    .local v0, bs:Z
    const/4 v5, 0x0

    .local v5, n:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, nCount:I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 1014
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/publicobj/Field;

    .line 1015
    .local v4, fld:Lcom/futuredial/publicobj/Field;
    iget-object v8, v4, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1017
    iget-object v7, v4, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 1018
    .local v7, strTime:Ljava/lang/String;
    const-string v8, "-"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1019
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/futuredial/pim/G2Phonebook;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v2

    .line 1020
    .local v2, dttime:Landroid/text/format/Time;
    if-eqz v2, :cond_0

    .line 1022
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1023
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "raw_contact_id"

    iget v9, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1024
    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1025
    const-string v8, "data1"

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1028
    iget-object v8, v4, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1037
    const-string v8, "data2"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1040
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #dttime:Landroid/text/format/Time;
    .end local v7           #strTime:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1031
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v2       #dttime:Landroid/text/format/Time;
    .restart local v7       #strTime:Ljava/lang/String;
    :sswitch_0
    const-string v8, "data2"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1046
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #dttime:Landroid/text/format/Time;
    .end local v4           #fld:Lcom/futuredial/publicobj/Field;
    .end local v6           #nCount:I
    .end local v7           #strTime:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1048
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "G2Phonebook"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1050
    const/4 v0, 0x0

    .line 1052
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    return v0

    .line 1034
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v2       #dttime:Landroid/text/format/Time;
    .restart local v4       #fld:Lcom/futuredial/publicobj/Field;
    .restart local v6       #nCount:I
    .restart local v7       #strTime:Ljava/lang/String;
    :sswitch_1
    :try_start_1
    const-string v8, "data2"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1028
    nop

    :sswitch_data_0
    .sparse-switch
        0xfa3 -> :sswitch_0
        0xfb3 -> :sswitch_1
    .end sparse-switch
.end method

.method private putPhoneIMsArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 699
    .local v0, bs:Z
    const/4 v4, 0x0

    .local v4, n:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, nCount:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 701
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    .line 702
    .local v3, fld:Lcom/futuredial/publicobj/Field;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 703
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "raw_contact_id"

    iget v7, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 704
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 705
    const-string v6, "data1"

    iget-object v7, v3, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 706
    const-string v6, "data2"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 709
    iget-object v6, v3, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 736
    const-string v6, "data2"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 737
    const-string v6, "data3"

    iget-object v7, p0, Lcom/futuredial/pim/G2Phonebook;->sysRes:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/futuredial/pim/G2Phonebook;->fldIDTB:Lcom/futuredial/pim/FieldIDResTB;

    iget-object v9, v3, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Lcom/futuredial/pim/FieldIDResTB;->GetResID(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 741
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 712
    :pswitch_0
    const-string v6, "data5"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 745
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #fld:Lcom/futuredial/publicobj/Field;
    .end local v5           #nCount:I
    :catch_0
    move-exception v2

    .line 747
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 749
    const/4 v0, 0x0

    .line 751
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return v0

    .line 715
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v3       #fld:Lcom/futuredial/publicobj/Field;
    .restart local v5       #nCount:I
    :pswitch_1
    :try_start_1
    const-string v6, "data5"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 718
    :pswitch_2
    const-string v6, "data5"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 721
    :pswitch_3
    const-string v6, "data5"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 724
    :pswitch_4
    const-string v6, "data5"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 727
    :pswitch_5
    const-string v6, "data5"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 730
    :pswitch_6
    const-string v6, "data5"

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 733
    :pswitch_7
    const-string v6, "data5"

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 709
    :pswitch_data_0
    .packed-switch 0xfb7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private putPhoneNickNameArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 950
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 953
    .local v0, bs:Z
    const/4 v2, 0x0

    .local v2, n:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, nCount:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 955
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/publicobj/Field;

    invoke-direct {p0, v5}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v4

    .line 956
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 957
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 997
    .end local v3           #nCount:I
    .end local v4           #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 999
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "G2Phonebook"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1001
    const/4 v0, 0x0

    .line 1003
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return v0
.end method

.method private putPhoneNotesArray(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter "csNotes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1089
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 1092
    .local v0, bs:Z
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1093
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    iget v4, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1094
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1096
    const-string v3, "data1"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1098
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_0
    return v0

    .line 1101
    :catch_0
    move-exception v2

    .line 1103
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putPhoneNumbersArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 506
    .local v0, bs:Z
    const/4 v4, 0x0

    .local v4, n:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, nCount:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 508
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    .line 509
    .local v3, fld:Lcom/futuredial/publicobj/Field;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 510
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "raw_contact_id"

    iget v7, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 511
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 512
    const-string v6, "data1"

    iget-object v7, v3, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 515
    iget-object v6, v3, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 592
    :pswitch_0
    const-string v6, "data2"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 593
    const-string v6, "data3"

    iget-object v7, p0, Lcom/futuredial/pim/G2Phonebook;->sysRes:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/futuredial/pim/G2Phonebook;->fldIDTB:Lcom/futuredial/pim/FieldIDResTB;

    iget-object v9, v3, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Lcom/futuredial/pim/FieldIDResTB;->GetResID(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 597
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 520
    :pswitch_1
    const-string v6, "data2"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 602
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #fld:Lcom/futuredial/publicobj/Field;
    .end local v5           #nCount:I
    :catch_0
    move-exception v2

    .line 604
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    const/4 v0, 0x0

    .line 608
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return v0

    .line 525
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v3       #fld:Lcom/futuredial/publicobj/Field;
    .restart local v5       #nCount:I
    :pswitch_2
    :try_start_1
    const-string v6, "data2"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 528
    :pswitch_3
    const-string v6, "data2"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 532
    :pswitch_4
    const-string v6, "data2"

    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 535
    :pswitch_5
    const-string v6, "data2"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 538
    :pswitch_6
    const-string v6, "data2"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 541
    :pswitch_7
    const-string v6, "data2"

    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 544
    :pswitch_8
    const-string v6, "data2"

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 548
    :pswitch_9
    const-string v6, "data2"

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 553
    :pswitch_a
    const-string v6, "data2"

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 556
    :pswitch_b
    const-string v6, "data2"

    const/16 v7, 0x13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 559
    :pswitch_c
    const-string v6, "data2"

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 562
    :pswitch_d
    const-string v6, "data2"

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 565
    :pswitch_e
    const-string v6, "data2"

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 568
    :pswitch_f
    const-string v6, "data2"

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 571
    :pswitch_10
    const-string v6, "data2"

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 574
    :pswitch_11
    const-string v6, "data2"

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 577
    :pswitch_12
    const-string v6, "data2"

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 580
    :pswitch_13
    const-string v6, "data2"

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_13
        :pswitch_12
        :pswitch_10
        :pswitch_11
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private putPhoneOrganization(Lcom/futuredial/publicobj/Field;Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 8
    .parameter "fld"
    .parameter "builder"

    .prologue
    .line 781
    const/4 v0, 0x1

    .line 783
    .local v0, bs:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 836
    .end local v0           #bs:Z
    .local v1, bs:I
    :goto_0
    return v1

    .line 796
    .end local v1           #bs:I
    .restart local v0       #bs:Z
    :cond_0
    :try_start_0
    const-string v4, "data1"

    iget-object v5, p1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 801
    iget-object v4, p1, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 819
    :pswitch_0
    iget-object v4, p1, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 821
    iget-object v4, p1, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    .line 822
    .local v3, proFld:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v3}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xfa2

    if-ne v4, v5, :cond_1

    .line 823
    iget-object v4, v3, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v5, "\u0000"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 824
    const-string v4, "data5"

    iget-object v5, v3, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #proFld:Lcom/futuredial/publicobj/Field;
    :cond_1
    :goto_1
    move v1, v0

    .line 836
    .restart local v1       #bs:I
    goto :goto_0

    .line 831
    .end local v1           #bs:I
    :catch_0
    move-exception v2

    .line 832
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    const/4 v0, 0x0

    goto :goto_1

    .line 801
    :pswitch_data_0
    .packed-switch 0xfbf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putPhoneOrganizationArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 864
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 867
    .local v0, bs:Z
    const/4 v3, 0x0

    .local v3, n:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, nCount:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 869
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Field;

    .line 870
    .local v2, fld:Lcom/futuredial/publicobj/Field;
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    if-nez v6, :cond_0

    .line 872
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    iput-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 873
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "raw_contact_id"

    iget v8, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 874
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 875
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data2"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 877
    :cond_0
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data1"

    iget-object v8, v2, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v9, "\r\n"

    const-string v10, "\n"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 879
    iget-object v6, v2, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 894
    :pswitch_0
    iget-object v6, v2, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 896
    iget-object v6, v2, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/futuredial/publicobj/Field;

    .line 897
    .local v5, proFld:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v5}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xfa2

    if-ne v6, v7, :cond_1

    .line 899
    iget-object v6, v5, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v7, "\u0000"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 900
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data5"

    iget-object v8, v5, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v9, "\r\n"

    const-string v10, "\n"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .end local v5           #proFld:Lcom/futuredial/publicobj/Field;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 908
    .end local v2           #fld:Lcom/futuredial/publicobj/Field;
    .end local v4           #nCount:I
    :catch_0
    move-exception v1

    .line 910
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "G2Phonebook"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 912
    const/4 v0, 0x0

    .line 914
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return v0

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0xfbf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putPhoneOrganizationJobTitle(Lcom/futuredial/publicobj/Field;Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 7
    .parameter "fld"
    .parameter "builder"

    .prologue
    .line 841
    const/4 v0, 0x1

    .line 844
    .local v0, bs:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 858
    .end local v0           #bs:Z
    .local v1, bs:I
    :goto_0
    return v1

    .line 845
    .end local v1           #bs:I
    .restart local v0       #bs:Z
    :cond_0
    :try_start_0
    const-string v3, "data4"

    iget-object v4, p1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 858
    .restart local v1       #bs:I
    goto :goto_0

    .line 852
    .end local v1           #bs:I
    :catch_0
    move-exception v2

    .line 854
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 856
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private putPhoneOrganizationJobTitleArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 918
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 921
    .local v0, bs:Z
    const/4 v3, 0x0

    .local v3, n:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, nCount:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 923
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Field;

    .line 924
    .local v2, fld:Lcom/futuredial/publicobj/Field;
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    if-nez v5, :cond_0

    .line 926
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 927
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "raw_contact_id"

    iget v7, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 928
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/organization"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 929
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "data2"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 931
    :cond_0
    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "data4"

    iget-object v7, v2, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 939
    .end local v2           #fld:Lcom/futuredial/publicobj/Field;
    .end local v4           #nCount:I
    :catch_0
    move-exception v1

    .line 941
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "G2Phonebook"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 943
    const/4 v0, 0x0

    .line 945
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return v0
.end method

.method private putPhoneWebsitesArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Field;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 660
    .local v0, bs:Z
    const/4 v4, 0x0

    .local v4, n:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, nCount:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 662
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/publicobj/Field;

    .line 663
    .local v3, fld:Lcom/futuredial/publicobj/Field;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 664
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "raw_contact_id"

    iget v7, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 665
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 666
    const-string v6, "data1"

    iget-object v7, v3, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 669
    iget-object v6, v3, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 678
    const-string v6, "data2"

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 681
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 672
    :pswitch_0
    const-string v6, "data2"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 684
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #fld:Lcom/futuredial/publicobj/Field;
    .end local v5           #nCount:I
    :catch_0
    move-exception v2

    .line 686
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 688
    const/4 v0, 0x0

    .line 690
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return v0

    .line 675
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v3       #fld:Lcom/futuredial/publicobj/Field;
    .restart local v5       #nCount:I
    :pswitch_1
    :try_start_1
    const-string v6, "data2"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x5dc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putPhotoData(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 7
    .parameter "csPhotoData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1057
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 1060
    .local v0, bs:Z
    :try_start_0
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1061
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "raw_contact_id"

    iget v6, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1062
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1063
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v5, "is_super_primary"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1072
    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1073
    .local v2, data:[B
    const-string v5, "data15"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1074
    invoke-virtual {v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1075
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #data:[B
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return v0

    .line 1078
    :catch_0
    move-exception v3

    .line 1080
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "G2Phonebook"

    const-string v6, "Write Photo Data Failed !"

    invoke-static {v5, v6, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1081
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putPhotoFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2050
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 2053
    .local v0, bs:Z
    :try_start_0
    const-string v6, "data15"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2054
    const-string v6, "data15"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2055
    .local v3, photo:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 2056
    .local v4, photo_buffer:[B
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 2057
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2058
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "raw_contact_id"

    iget v7, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2059
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2060
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/photo"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    const-string v6, "is_super_primary"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2069
    const-string v6, "data15"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2070
    invoke-virtual {v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2071
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #photo:Ljava/lang/String;
    .end local v4           #photo_buffer:[B
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v0

    .line 2075
    :catch_0
    move-exception v2

    .line 2077
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "G2Phonebook"

    const-string v7, "Write Photo Data Failed !"

    invoke-static {v6, v7, v2}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2078
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putRawContact(Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1366
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 1369
    .local v0, bs:Z
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "account_type"

    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->sAccountType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "account_name"

    iget-object v5, p0, Lcom/futuredial/pim/G2Phonebook;->sAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1372
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "display_name"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1373
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    .line 1374
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_0
    return v0

    .line 1377
    :catch_0
    move-exception v2

    .line 1379
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "G2Phonebook"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1381
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putSipaddressFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 12
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1988
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x1

    .line 1990
    .local v1, bs:Z
    const/4 v5, 0x0

    .line 1991
    .local v5, jsonArray:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 1992
    .local v6, jsonObject_Sip:Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 1993
    .local v9, type:I
    :try_start_0
    const-string v7, ""

    .line 1994
    .local v7, label:Ljava/lang/String;
    const-string v8, ""

    .line 1996
    .local v8, sip_address:Ljava/lang/String;
    const-string v10, "sipaddress"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1997
    const-string v10, "sipaddress"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1998
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 1999
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 2000
    const-string v10, "data2"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2001
    const-string v10, "data2"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2002
    :cond_0
    const-string v10, "data3"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2003
    const-string v10, "data3"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #label:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 2004
    .restart local v7       #label:Ljava/lang/String;
    :cond_1
    const-string v10, "data1"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2005
    const-string v10, "data1"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sip_address:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 2006
    .restart local v8       #sip_address:Ljava/lang/String;
    :cond_2
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 2007
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "raw_contact_id"

    iget v11, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2008
    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2009
    const-string v10, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2010
    const-string v10, "data3"

    invoke-virtual {v2, v10, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2011
    const-string v10, "data1"

    invoke-virtual {v2, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2012
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2015
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #i:I
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #sip_address:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2016
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2018
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    return v1
.end method

.method private putStructuredNameFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1588
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x1

    .line 1589
    .local v1, bs:Z
    const-string v6, ""

    .line 1592
    .local v6, value:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1593
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 1595
    .local v5, jsonObject_structuredname:Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "structuredname"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1596
    const-string v8, "structuredname"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1597
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1598
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_9

    .line 1600
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    .line 1601
    const-string v8, "data1"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1602
    const-string v8, "data1"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1603
    const-string v8, "data1"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :cond_0
    const-string v8, "data2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1606
    const-string v8, "data2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1607
    const-string v8, "data2"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :cond_1
    const-string v8, "data3"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1610
    const-string v8, "data3"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1611
    const-string v8, "data3"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :cond_2
    const-string v8, "data4"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1614
    const-string v8, "data4"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1615
    const-string v8, "data4"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    :cond_3
    const-string v8, "data5"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1618
    const-string v8, "data5"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1619
    const-string v8, "data5"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_4
    const-string v8, "data6"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1622
    const-string v8, "data6"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1623
    const-string v8, "data6"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    :cond_5
    const-string v8, "data7"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1626
    const-string v8, "data7"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1627
    const-string v8, "data7"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :cond_6
    const-string v8, "data8"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1630
    const-string v8, "data8"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1631
    const-string v8, "data8"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    :cond_7
    const-string v8, "data9"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1634
    const-string v8, "data9"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1635
    const-string v8, "data9"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1638
    :cond_9
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "raw_contact_id"

    iget v10, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    .end local v3           #i:I
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_a
    :goto_1
    return v1

    .line 1640
    :catch_0
    move-exception v2

    .line 1642
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private putStructuredPostalFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 19
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1809
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x1

    .line 1811
    .local v2, bs:Z
    const/16 v16, 0x0

    .line 1812
    .local v16, type:I
    :try_start_0
    const-string v10, ""

    .line 1813
    .local v10, label:Ljava/lang/String;
    const-string v15, ""

    .line 1814
    .local v15, street:Ljava/lang/String;
    const-string v12, ""

    .line 1815
    .local v12, pobox:Ljava/lang/String;
    const-string v11, ""

    .line 1816
    .local v11, neighborhood:Ljava/lang/String;
    const-string v4, ""

    .line 1817
    .local v4, city:Ljava/lang/String;
    const-string v14, ""

    .line 1818
    .local v14, region:Ljava/lang/String;
    const-string v13, ""

    .line 1819
    .local v13, postcode:Ljava/lang/String;
    const-string v5, ""

    .line 1820
    .local v5, country:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1821
    .local v8, jsonArray:Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 1823
    .local v9, jsonObject_sp:Lorg/json/JSONObject;
    const-string v17, "structuredpostal"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1824
    const-string v17, "structuredpostal"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1825
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_9

    .line 1826
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #jsonObject_sp:Lorg/json/JSONObject;
    check-cast v9, Lorg/json/JSONObject;

    .line 1827
    .restart local v9       #jsonObject_sp:Lorg/json/JSONObject;
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 1828
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v17, "raw_contact_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1829
    const-string v17, "mimetype"

    const-string v18, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1830
    const-string v17, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1831
    const-string v17, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1832
    const-string v17, "data2"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1834
    :cond_0
    const-string v17, "data3"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1835
    const-string v17, "data3"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #label:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1836
    .restart local v10       #label:Ljava/lang/String;
    const-string v17, "data3"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1838
    :cond_1
    const-string v17, "data4"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1839
    const-string v17, "data4"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #street:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1840
    .restart local v15       #street:Ljava/lang/String;
    const-string v17, "data4"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1842
    :cond_2
    const-string v17, "data5"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1843
    const-string v17, "data5"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #pobox:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1844
    .restart local v12       #pobox:Ljava/lang/String;
    const-string v17, "data5"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1846
    :cond_3
    const-string v17, "data6"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1847
    const-string v17, "data6"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #neighborhood:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1848
    .restart local v11       #neighborhood:Ljava/lang/String;
    const-string v17, "data6"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1850
    :cond_4
    const-string v17, "data7"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1851
    const-string v17, "data7"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #city:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1852
    .restart local v4       #city:Ljava/lang/String;
    const-string v17, "data7"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1854
    :cond_5
    const-string v17, "data8"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1855
    const-string v17, "data8"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #region:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1856
    .restart local v14       #region:Ljava/lang/String;
    const-string v17, "data8"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1858
    :cond_6
    const-string v17, "data9"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1859
    const-string v17, "data9"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #postcode:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 1860
    .restart local v13       #postcode:Ljava/lang/String;
    const-string v17, "data9"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1862
    :cond_7
    const-string v17, "data10"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1863
    const-string v17, "data10"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #country:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1864
    .restart local v5       #country:Ljava/lang/String;
    const-string v17, "data10"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1866
    :cond_8
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1825
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1870
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #city:Ljava/lang/String;
    .end local v5           #country:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonObject_sp:Lorg/json/JSONObject;
    .end local v10           #label:Ljava/lang/String;
    .end local v11           #neighborhood:Ljava/lang/String;
    .end local v12           #pobox:Ljava/lang/String;
    .end local v13           #postcode:Ljava/lang/String;
    .end local v14           #region:Ljava/lang/String;
    .end local v15           #street:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1872
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1873
    const/4 v2, 0x0

    .line 1875
    .end local v6           #e:Ljava/lang/Exception;
    :cond_9
    return v2
.end method

.method private putWebsiteFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1728
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    .line 1730
    .local v0, bs:Z
    const/4 v7, 0x0

    .line 1731
    .local v7, type:I
    :try_start_0
    const-string v8, ""

    .line 1732
    .local v8, url:Ljava/lang/String;
    const-string v6, ""

    .line 1733
    .local v6, label:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1734
    .local v5, jsonObject_website:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 1736
    .local v4, jsonArray:Lorg/json/JSONArray;
    const-string v9, "website"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1737
    const-string v9, "website"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1738
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 1739
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #jsonObject_website:Lorg/json/JSONObject;
    check-cast v5, Lorg/json/JSONObject;

    .line 1740
    .restart local v5       #jsonObject_website:Lorg/json/JSONObject;
    const-string v9, "data2"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1741
    const-string v9, "data2"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1742
    :cond_0
    const-string v9, "data1"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1743
    const-string v9, "data1"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #url:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1744
    .restart local v8       #url:Ljava/lang/String;
    :cond_1
    const-string v9, "data3"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1745
    const-string v9, "data3"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #label:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1746
    .restart local v6       #label:Ljava/lang/String;
    :cond_2
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1747
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "raw_contact_id"

    iget v10, p0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1748
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1749
    const-string v9, "data3"

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1750
    const-string v9, "data1"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1751
    const-string v9, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1752
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1755
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #jsonObject_website:Lorg/json/JSONObject;
    .end local v6           #label:Ljava/lang/String;
    .end local v8           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1756
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1757
    const/4 v0, 0x0

    .line 1759
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    return v0
.end method


# virtual methods
.method public DeleteAll()I
    .locals 6

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 132
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/pim/G2Phonebook;->cr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "account_name= \"pcsc\""

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "G2Phonebook"

    const-string v3, "DeleteAllContacts exception !"

    invoke-static {v2, v3, v0}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public InitRead()I
    .locals 2

    .prologue
    .line 2568
    new-instance v0, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;-><init>(Lcom/futuredial/pim/G2Phonebook;Lcom/futuredial/pim/G2Phonebook$1;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->rdContact:Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;

    .line 2569
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->rdContact:Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->InitRead()I

    move-result v0

    return v0
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "jsonObject_item"

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->rdContact:Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;

    #calls: Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->ReadOneContact(Lorg/json/JSONObject;)I
    invoke-static {v0, p1}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->access$100(Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public SetAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "sType"
    .parameter "sName"

    .prologue
    .line 1432
    const/4 v7, 0x0

    .line 1433
    .local v7, managedCursor:Landroid/database/Cursor;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "account_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "account_type"

    aput-object v1, v2, v0

    .line 1435
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1439
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->cr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1441
    const-string v0, "G2Phonebook"

    const-string v1, "Listing Selected Group ship Only"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->sGroup:Ljava/lang/String;

    .line 1454
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/futuredial/pim/CPim;->SetAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    return-void

    .line 1456
    :cond_0
    :try_start_1
    const-string v0, "G2Phonebook"

    const-string v1, "No Accounts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1459
    :catch_0
    move-exception v6

    .line 1460
    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method protected String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;
    .locals 15
    .parameter "strTime"
    .parameter "strTZ"

    .prologue
    .line 1389
    const/4 v1, 0x0

    .line 1390
    .local v1, dttime:Landroid/text/format/Time;
    const/4 v8, 0x0

    .line 1391
    .local v8, bLinxTime:Z
    new-instance v1, Landroid/text/format/Time;

    .end local v1           #dttime:Landroid/text/format/Time;
    const-string v6, "UTC"

    invoke-direct {v1, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1392
    .restart local v1       #dttime:Landroid/text/format/Time;
    if-eqz p2, :cond_3

    .line 1394
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1400
    :goto_0
    const-string v6, "\\d{9,}"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 1401
    .local v12, pattern:Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1402
    .local v10, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1403
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 1404
    const/4 v8, 0x1

    .line 1406
    :cond_0
    if-nez v8, :cond_2

    .line 1410
    const/4 v6, 0x0

    const/4 v13, 0x4

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1411
    .local v7, nY:I
    const/4 v6, 0x4

    const/4 v13, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1412
    .local v11, nM:I
    const/4 v6, 0x6

    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1413
    .local v5, nD:I
    const/4 v4, 0x0

    .local v4, nH:I
    const/4 v3, 0x0

    .local v3, nmin:I
    const/4 v2, 0x0

    .line 1414
    .local v2, nS:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v13, 0x8

    if-le v6, v13, :cond_1

    .line 1416
    const/16 v6, 0x9

    const/16 v13, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1417
    const/16 v6, 0xb

    const/16 v13, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1418
    const/16 v6, 0xd

    const/16 v13, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1420
    :cond_1
    add-int/lit8 v6, v11, -0x1

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    .end local v2           #nS:I
    .end local v3           #nmin:I
    .end local v4           #nH:I
    .end local v5           #nD:I
    .end local v7           #nY:I
    .end local v11           #nM:I
    :cond_2
    :goto_1
    return-object v1

    .line 1398
    .end local v10           #matcher:Ljava/util/regex/Matcher;
    .end local v12           #pattern:Ljava/util/regex/Pattern;
    :cond_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1422
    .restart local v10       #matcher:Ljava/util/regex/Matcher;
    .restart local v12       #pattern:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v9

    .line 1424
    .local v9, e:Ljava/lang/Exception;
    const-string v6, "CPIM"

    const-string v13, "parse starttime exception"

    invoke-static {v6, v13, v9}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public UnInitRead()I
    .locals 1

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->rdContact:Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2Phonebook$ReadPhoneBook;->UnInitRead()I

    move-result v0

    return v0
.end method

.method WriteData(I)I
    .locals 12
    .parameter "nSize"

    .prologue
    .line 191
    const/4 v6, 0x0

    .line 194
    .local v6, nRet:I
    :try_start_0
    iget-object v8, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 196
    const-string v8, "G2Phonebook"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start applyBatch--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v8, p0, Lcom/futuredial/pim/G2Phonebook;->cr:Landroid/content/ContentResolver;

    const-string v9, "com.android.contacts"

    iget-object v10, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 198
    .local v2, counts:[Landroid/content/ContentProviderResult;
    const-string v8, "G2Phonebook"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "end applyBatch--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-nez v2, :cond_0

    .line 201
    const/16 v6, 0x4e33

    .line 202
    const-string v8, "G2Phonebook"

    const-string v9, "Insert Datas failed!"

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    move-object v1, v2

    .local v1, arr$:[Landroid/content/ContentProviderResult;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 207
    .local v0, aa:Landroid/content/ContentProviderResult;
    iget-object v8, p0, Lcom/futuredial/pim/G2Phonebook;->WrittenUri:Ljava/util/ArrayList;

    iget-object v9, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    .end local v0           #aa:Landroid/content/ContentProviderResult;
    .end local v1           #arr$:[Landroid/content/ContentProviderResult;
    .end local v2           #counts:[Landroid/content/ContentProviderResult;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    iget-object v8, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 211
    iput p1, p0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v6

    .line 221
    .end local v6           #nRet:I
    .local v7, nRet:I
    :goto_1
    return v7

    .line 213
    .end local v7           #nRet:I
    .restart local v6       #nRet:I
    :catch_0
    move-exception v3

    .line 215
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const-string v8, "G2Phonebook"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v8, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 218
    const/16 v6, 0x4e33

    move v7, v6

    .line 219
    .end local v6           #nRet:I
    .restart local v7       #nRet:I
    goto :goto_1
.end method

.method public addNewItemFromAndroid(Lcom/futuredial/publicobj/Item;Z)I
    .locals 10
    .parameter "objItem"
    .parameter "bLast"

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0x4e33

    .line 1522
    const/4 v4, 0x0

    .line 1523
    .local v4, nRet:I
    if-nez p1, :cond_1

    .line 1524
    const/4 p2, 0x1

    .line 1575
    :goto_0
    iget v6, p0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    sget v8, Lcom/futuredial/pim/G2Phonebook;->MAX_APPLYBATCH:I

    if-ge v6, v8, :cond_0

    if-eqz p2, :cond_4

    .line 1577
    :cond_0
    invoke-virtual {p0, v9}, Lcom/futuredial/pim/G2Phonebook;->WriteData(I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    .line 1583
    :goto_1
    return v6

    .line 1526
    :cond_1
    iget-object v6, p1, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/16 v8, 0x2710

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1527
    .local v0, arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz v0, :cond_3

    .line 1528
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/futuredial/publicobj/Field;

    iget-object v3, v6, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 1530
    .local v3, json_pb:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/futuredial/pim/G2Phonebook;->getFieldCount(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v5, v6, 0x2

    .line 1531
    .local v5, nSize:I
    iget v6, p0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    .line 1532
    iget v6, p0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    sget v8, Lcom/futuredial/pim/G2Phonebook;->MAX_APPLYBATCH:I

    if-le v6, v8, :cond_2

    .line 1534
    invoke-virtual {p0, v5}, Lcom/futuredial/pim/G2Phonebook;->WriteData(I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    .line 1536
    goto :goto_1

    .line 1541
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1543
    .local v2, jsonObject:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/futuredial/pim/G2Phonebook;->putRawContact(Ljava/util/ArrayList;)Z

    .line 1545
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putStructuredNameFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1547
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putPhotoFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1549
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putNumberFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1551
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putEmailFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1553
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putWebsiteFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1555
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putStructuredPostalFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1557
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putImFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1559
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putOrganizationFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1561
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putEventFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1563
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putSipaddressFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z

    .line 1565
    iget-object v6, p0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lcom/futuredial/pim/G2Phonebook;->putNoteFromAndroid(Lorg/json/JSONObject;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1567
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1569
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1572
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #json_pb:Ljava/lang/String;
    .end local v5           #nSize:I
    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v0           #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :cond_4
    move v6, v4

    .line 1583
    goto/16 :goto_1
.end method

.method public addnewItem(Lcom/futuredial/publicobj/Item;Z)I
    .locals 26
    .parameter "objItem"
    .parameter "bLast"

    .prologue
    .line 230
    const/4 v14, 0x0

    .line 231
    .local v14, nRet:I
    const-string v22, "G2Phonebook"

    const-string v23, "BEGIN TO ADD AN NEW CONTACT!"

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    const/16 v23, 0x2710

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 234
    invoke-virtual/range {p0 .. p2}, Lcom/futuredial/pim/G2Phonebook;->addNewItemFromAndroid(Lcom/futuredial/publicobj/Item;Z)I

    move/from16 v22, v14

    .line 460
    :goto_0
    return v22

    .line 237
    :cond_0
    const/4 v5, 0x1

    .line 238
    .local v5, bs:Z
    const-string v19, ""

    .line 241
    .local v19, sNote:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v16, nameValues:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/Item;->GetFieldCount()I

    move-result v22

    add-int/lit8 v22, v22, 0x2

    mul-int/lit8 v15, v22, 0x2

    .line 245
    .local v15, nSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    move/from16 v22, v0

    add-int v22, v22, v15

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    move/from16 v22, v0

    sget v23, Lcom/futuredial/pim/G2Phonebook;->MAX_APPLYBATCH:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/futuredial/pim/G2Phonebook;->WriteData(I)I

    move-result v22

    const/16 v23, 0x4e33

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 250
    const/16 v22, 0x4e33

    goto :goto_0

    .line 254
    .end local v15           #nSize:I
    :cond_1
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/pim/G2Phonebook;->orgBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v6, company:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v11, jobtitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz p1, :cond_1d

    .line 262
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    const/16 v23, 0x232e

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 264
    const/16 v14, 0x4e24

    move/from16 v22, v14

    .line 265
    goto :goto_0

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 270
    const-string v22, "G2Phonebook"

    const-string v23, "have item data"

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 272
    .local v3, bhasFirstName:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 273
    .local v4, bhasLastName:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Phonebook;->putRawContact(Ljava/util/ArrayList;)Z

    .line 274
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 276
    .local v8, enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 278
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 279
    .local v17, nfldID:Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 280
    .local v10, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v12, 0x0

    .local v12, n:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, nCount:I
    :goto_1
    if-ge v12, v13, :cond_4

    .line 282
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/futuredial/publicobj/Field;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "\u0000"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 280
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 285
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x63

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v3, v4, v1}, Lcom/futuredial/pim/G2Phonebook;->putNameValues(Ljava/util/ArrayList;ZZLandroid/content/ContentValues;)Z

    move-result v5

    .line 382
    :cond_5
    :goto_2
    if-nez v5, :cond_3

    .line 384
    const/16 v14, 0x4e33

    .line 390
    .end local v10           #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v12           #n:I
    .end local v13           #nCount:I
    .end local v17           #nfldID:Ljava/lang/Integer;
    :cond_6
    if-nez v14, :cond_1d

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_1c

    .line 394
    const/16 v14, 0x4e42

    .line 395
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_7

    .line 396
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 397
    :cond_7
    const/4 v12, 0x0

    .restart local v12       #n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v13

    .restart local v13       #nCount:I
    :goto_3
    if-ge v12, v13, :cond_1b

    .line 399
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_1a

    .line 401
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 397
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 289
    .restart local v10       #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .restart local v17       #nfldID:Ljava/lang/Integer;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x63

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x3e7

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_9

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/futuredial/pim/G2Phonebook;->putPhoneNumbersArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    goto/16 :goto_2

    .line 293
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x3e7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x5db

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_a

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/futuredial/pim/G2Phonebook;->putPhoneEmailsArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    goto/16 :goto_2

    .line 297
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x5db

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x7cf

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/futuredial/pim/G2Phonebook;->putPhoneWebsitesArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    goto/16 :goto_2

    .line 301
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x7cf

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xbb7

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_d

    .line 303
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_5
    if-ge v12, v13, :cond_5

    .line 305
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v21

    .line 306
    .local v21, str:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_c

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 311
    .end local v21           #str:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xfa5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/futuredial/pim/G2Phonebook;->putPhoneNickNameArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    goto/16 :goto_2

    .line 315
    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xfb7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xfbe

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_f

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/futuredial/pim/G2Phonebook;->putPhoneIMsArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    goto/16 :goto_2

    .line 319
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xfbf

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xfc1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_10

    .line 322
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 452
    .end local v3           #bhasFirstName:Z
    .end local v4           #bhasLastName:Z
    .end local v8           #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v10           #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v12           #n:I
    .end local v13           #nCount:I
    .end local v17           #nfldID:Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 454
    .local v7, e:Ljava/lang/Exception;
    const-string v22, "G2Phonebook"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 456
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    const/16 v14, 0x4e33

    .line 459
    .end local v7           #e:Ljava/lang/Exception;
    :goto_6
    const-string v22, "G2Phonebook"

    const-string v23, "END ADD AN NEW CONTACT!"

    invoke-static/range {v22 .. v23}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v14

    .line 460
    goto/16 :goto_0

    .line 324
    .restart local v3       #bhasFirstName:Z
    .restart local v4       #bhasLastName:Z
    .restart local v8       #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v10       #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .restart local v12       #n:I
    .restart local v13       #nCount:I
    .restart local v17       #nfldID:Ljava/lang/Integer;
    :cond_10
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xfaf

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 327
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 329
    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xbba

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 331
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_7
    if-ge v12, v13, :cond_5

    .line 333
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/futuredial/publicobj/Field;

    .line 334
    .local v9, fld:Lcom/futuredial/publicobj/Field;
    if-eqz v9, :cond_12

    .line 336
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v9, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 331
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 340
    .end local v9           #fld:Lcom/futuredial/publicobj/Field;
    :cond_13
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x13ef

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 343
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/futuredial/publicobj/Field;

    .line 344
    .restart local v9       #fld:Lcom/futuredial/publicobj/Field;
    if-eqz v9, :cond_5

    .line 346
    iget-object v0, v9, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 347
    .local v20, sPhotoData:Ljava/lang/String;
    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_5

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/futuredial/publicobj/ItemSerializable;->ReverseSerializePhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 351
    .local v18, photodata:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_14

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/futuredial/pim/G2Phonebook;->putPhotoData(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 355
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/futuredial/publicobj/ItemSerializable;->removeSerializedFile(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 360
    .end local v9           #fld:Lcom/futuredial/publicobj/Field;
    .end local v18           #photodata:Ljava/lang/String;
    .end local v20           #sPhotoData:Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x13ec

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_16

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x13ee

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_16

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/futuredial/pim/G2Phonebook;->putPhoneAddressesArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    goto/16 :goto_2

    .line 364
    :cond_16
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xfa3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0xfb3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 366
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/futuredial/pim/G2Phonebook;->putPhoneEventArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    goto/16 :goto_2

    .line 368
    :cond_18
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x232c

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 374
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_8
    if-ge v12, v13, :cond_5

    .line 376
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Phonebook;->SetAddToStringBuf(Lcom/futuredial/publicobj/Field;)Ljava/lang/String;

    move-result-object v21

    .line 377
    .restart local v21       #str:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_19

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 404
    .end local v10           #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v17           #nfldID:Ljava/lang/Integer;
    .end local v21           #str:Ljava/lang/String;
    :cond_1a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 407
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->m_disMatchArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 409
    .end local v12           #n:I
    .end local v13           #nCount:I
    :cond_1c
    if-eqz v19, :cond_1d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_1d

    .line 411
    const-string v22, "\r\n"

    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/futuredial/pim/G2Phonebook;->putPhoneNotesArray(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    .line 412
    if-nez v5, :cond_1d

    .line 414
    const/16 v14, 0x4e33

    .line 420
    .end local v3           #bhasFirstName:Z
    .end local v4           #bhasLastName:Z
    .end local v8           #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_1d
    if-eqz v14, :cond_1e

    const/16 v22, 0x4e42

    move/from16 v0, v22

    if-ne v14, v0, :cond_22

    .line 422
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v11, v1}, Lcom/futuredial/pim/G2Phonebook;->AddOrganization(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 427
    if-eqz p1, :cond_21

    .line 429
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->size()I

    move-result v22

    if-nez v22, :cond_1f

    .line 431
    const-string v22, "mimetype"

    const-string v23, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v22, "data2"

    const-string v23, "Unname"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Phonebook;->operations:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    const-string v24, "raw_contact_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Phonebook;->iOrder:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Phonebook;->iWriteSizeCount:I

    move/from16 v22, v0

    sget v23, Lcom/futuredial/pim/G2Phonebook;->MAX_APPLYBATCH:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_20

    if-eqz p2, :cond_22

    .line 441
    :cond_20
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/pim/G2Phonebook;->WriteData(I)I

    move-result v22

    const/16 v23, 0x4e33

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_22

    .line 443
    const/16 v22, 0x4e33

    goto/16 :goto_0

    .line 437
    :cond_21
    const/16 p2, 0x1

    goto :goto_9

    .line 449
    :cond_22
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method public getCounts()I
    .locals 9

    .prologue
    .line 145
    const/4 v6, 0x0

    .line 146
    .local v6, Count:I
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 148
    .local v1, contactUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 151
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 153
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    const-string v0, "[phonebook query]"

    const-string v2, "phonebook count:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return v6

    .line 156
    :catch_0
    move-exception v8

    .line 158
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2Phonebook"

    const-string v2, "InquireContactNumbers Exception."

    invoke-static {v0, v2, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getFieldCount(Ljava/lang/String;)I
    .locals 13
    .parameter "jsonString"

    .prologue
    .line 1468
    const/4 v10, 0x0

    .line 1470
    .local v10, nCount:I
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v9, jsonObject:Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 1472
    .local v11, nSize:I
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1473
    const-string v12, "number"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1474
    const-string v12, "number"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1475
    .local v3, array_number:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1478
    .end local v3           #array_number:Lorg/json/JSONArray;
    :cond_0
    const-string v12, "email"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1479
    const-string v12, "email"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1480
    .local v0, array_email:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1483
    .end local v0           #array_email:Lorg/json/JSONArray;
    :cond_1
    const-string v12, "website"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1484
    const-string v12, "website"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1485
    .local v7, array_website:Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1488
    .end local v7           #array_website:Lorg/json/JSONArray;
    :cond_2
    const-string v12, "im"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1489
    const-string v12, "im"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1490
    .local v2, array_im:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1493
    .end local v2           #array_im:Lorg/json/JSONArray;
    :cond_3
    const-string v12, "structuredpostal"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1494
    const-string v12, "structuredpostal"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1495
    .local v6, array_structuredpostal:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1498
    .end local v6           #array_structuredpostal:Lorg/json/JSONArray;
    :cond_4
    const-string v12, "organization"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1499
    const-string v12, "organization"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1500
    .local v4, array_organization:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1503
    .end local v4           #array_organization:Lorg/json/JSONArray;
    :cond_5
    const-string v12, "sipaddress"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1504
    const-string v12, "sipaddress"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1505
    .local v5, array_sipaddress:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1508
    .end local v5           #array_sipaddress:Lorg/json/JSONArray;
    :cond_6
    const-string v12, "event"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1509
    const-string v12, "event"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1510
    .local v1, array_event:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    add-int/2addr v11, v12

    .line 1513
    .end local v1           #array_event:Lorg/json/JSONArray;
    :cond_7
    move v10, v11

    .line 1518
    .end local v9           #jsonObject:Lorg/json/JSONObject;
    .end local v11           #nSize:I
    :goto_0
    return v10

    .line 1514
    :catch_0
    move-exception v8

    .line 1516
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInstance(Landroid/content/Context;)Lcom/futuredial/pim/G2Phonebook;
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->m_pim:Lcom/futuredial/pim/CPim;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->m_pim:Lcom/futuredial/pim/CPim;

    check-cast v0, Lcom/futuredial/pim/G2Phonebook;

    .line 93
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lcom/futuredial/pim/G2Phonebook;

    invoke-direct {v0, p1}, Lcom/futuredial/pim/G2Phonebook;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->m_pim:Lcom/futuredial/pim/CPim;

    .line 93
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->m_pim:Lcom/futuredial/pim/CPim;

    check-cast v0, Lcom/futuredial/pim/G2Phonebook;

    goto :goto_0
.end method

.method public getPhoneMemCounts()I
    .locals 9

    .prologue
    .line 168
    const/4 v6, 0x0

    .line 169
    .local v6, Count:I
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 171
    .local v1, contactUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 174
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Phonebook;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "account_Type = \'com.htc.android.pcsc\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 175
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 176
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    const-string v0, "[phonebook query]"

    const-string v2, "phonebook count in phonememory:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v6

    .line 179
    :catch_0
    move-exception v8

    .line 181
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2Phonebook"

    const-string v2, "InquireContactNumbers Exception."

    invoke-static {v0, v2, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
