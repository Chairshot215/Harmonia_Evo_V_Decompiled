.class public Lcom/android/mms/ui/SimpleVCardListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleVCardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SimpleVCardListViewAdapter$1;,
        Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;,
        Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;,
        Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;,
        Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "SimpleVCardListViewAdapter"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mContactStruct:Lcom/android/vcard/VCardEntry;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/vcard/VCardEntry;)V
    .locals 1
    .parameter "context"
    .parameter "struct"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 93
    iput-object p1, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iput-object p2, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->initInfoList()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 1
    .parameter "context"
    .parameter "vCard"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method private buildAndCustomPropertyListViewEntry(Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "pdata"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->kind:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    if-nez v12, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v12, Lcom/android/mms/ui/SimpleVCardListViewAdapter$1;->$SwitchMap$com$android$mms$ui$SimpleVCardListViewAdapter$AndCommonDataKinds:[I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->kind:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    invoke-virtual {v13}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    .line 183
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->data:Ljava/util/HashMap;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    .local v3, data1:Ljava/lang/String;
    const/4 v5, 0x0

    .line 185
    .local v5, date:Ljava/lang/String;
    const/4 v10, 0x0

    .line 186
    .local v10, label:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 188
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 189
    .local v1, cal:Ljava/util/Calendar;
    if-eqz v1, :cond_2

    .line 190
    iget-object v12, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/MessageUtils;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 193
    .end local v1           #cal:Ljava/util/Calendar;
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->data:Ljava/util/HashMap;

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    .local v4, data2:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 197
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 198
    .local v11, type:I
    iget-object v12, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 205
    .end local v11           #type:I
    :cond_3
    :goto_1
    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    .line 206
    new-instance v9, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 207
    .local v9, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v12, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v9, v12}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 208
    iput-object v5, v9, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 209
    iput-object v10, v9, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 210
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v9           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :catch_0
    move-exception v6

    .line 201
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v12, "SimpleVCardListViewAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can not parse event type. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    .end local v3           #data1:Ljava/lang/String;
    .end local v4           #data2:Ljava/lang/String;
    .end local v5           #date:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v10           #label:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->data:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 215
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, data:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 218
    new-instance v9, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 219
    .restart local v9       #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v12, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v9, v12}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 220
    iget-object v12, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    const v13, 0x7f090257

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 221
    iput-object v2, v9, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildAndroidCustomPropertyList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, cusList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$AndroidCustomData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    const/4 v12, 0x0

    .line 234
    if-eqz p1, :cond_7

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    .line 236
    .local v0, customPropertyData:Lcom/android/vcard/VCardEntry$AndroidCustomData;
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->getDataList()Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 238
    .local v8, size:I
    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 240
    const/16 v9, 0x10

    if-le v8, v9, :cond_1

    .line 241
    const/16 v8, 0x10

    .line 242
    const/16 v9, 0x11

    invoke-interface {v1, v12, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 246
    :cond_1
    const/4 v3, 0x0

    .line 247
    .local v3, i:I
    new-instance v7, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 248
    .local v7, pdata:Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    .local v2, customPropertyValue:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 250
    move-object v6, v2

    .line 251
    .local v6, mimeType:Ljava/lang/String;
    const-string v9, "SimpleVCardListViewAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mimeType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v9, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 253
    sget-object v9, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->EVENT:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    iput-object v9, v7, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->kind:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    .line 272
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_3
    const-string v9, "vnd.android.cursor.item/nickname"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 256
    sget-object v9, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->NICKNAME:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    iput-object v9, v7, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->kind:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    goto :goto_2

    .line 263
    :cond_4
    const-string v9, "SimpleVCardListViewAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skip mimeType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v2           #customPropertyValue:Ljava/lang/String;
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v7, p2}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildAndCustomPropertyListViewEntry(Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 267
    .restart local v2       #customPropertyValue:Ljava/lang/String;
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 268
    const-string v9, "SimpleVCardListViewAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "customPropertyValue: i> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v9, v7, Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 278
    .end local v0           #customPropertyData:Lcom/android/vcard/VCardEntry$AndroidCustomData;
    .end local v1           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #customPropertyValue:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #pdata:Lcom/android/mms/ui/SimpleVCardListViewAdapter$CustomPropertyData;
    .end local v8           #size:I
    :cond_7
    return-void
.end method

.method private buildBirthDay(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "bday"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    new-instance v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 284
    .local v1, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 285
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 286
    .local v0, cal:Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    const v3, 0x7f090253

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 290
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_1
    return-void
.end method

.method private buildEmailList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, emailList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$EmailData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_0

    .line 371
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    .line 372
    .local v0, data:Lcom/android/vcard/VCardEntry$EmailData;
    new-instance v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 378
    .local v2, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 379
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v3

    iput v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->type:I

    .line 381
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 382
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    const v4, 0x7f09025d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 387
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    .end local v0           #data:Lcom/android/vcard/VCardEntry$EmailData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_0
    return-void
.end method

.method private buildImList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$ImData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_1

    .line 326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$ImData;

    .line 327
    .local v0, data:Lcom/android/vcard/VCardEntry$ImData;
    new-instance v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 333
    .local v2, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 334
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ImData;->getType()I

    move-result v3

    iput v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->type:I

    .line 335
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ImData;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 337
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 338
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    const v4, 0x7f09015f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 345
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ImData;->getCustomProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    goto :goto_1

    .line 348
    .end local v0           #data:Lcom/android/vcard/VCardEntry$ImData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_1
    return-void
.end method

.method private buildNickNameList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$NicknameData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_0

    .line 412
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$NicknameData;

    .line 413
    .local v0, data:Lcom/android/vcard/VCardEntry$NicknameData;
    new-instance v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 415
    .local v2, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 416
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NicknameData;->getNickname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 417
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    const v4, 0x7f090257

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 418
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    .end local v0           #data:Lcom/android/vcard/VCardEntry$NicknameData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_0
    return-void
.end method

.method private buildNotes(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, noteList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$NoteData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_0

    .line 311
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$NoteData;

    .line 312
    .local v0, data:Lcom/android/vcard/VCardEntry$NoteData;
    new-instance v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 314
    .local v2, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 316
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NoteData;->getNote()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 317
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    const v4, 0x7f090250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 318
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v0           #data:Lcom/android/vcard/VCardEntry$NoteData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_0
    return-void
.end method

.method private buildOrganizationList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, orgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$OrganizationData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_0

    .line 395
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 396
    .local v0, data:Lcom/android/vcard/VCardEntry$OrganizationData;
    new-instance v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 401
    .local v2, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 402
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getType()I

    move-result v3

    iput v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->type:I

    .line 403
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 404
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    const v4, 0x7f090252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 405
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    .end local v0           #data:Lcom/android/vcard/VCardEntry$OrganizationData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_0
    return-void
.end method

.method private buildPhoneList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_1

    .line 426
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 427
    .local v0, data:Lcom/android/vcard/VCardEntry$PhoneData;
    new-instance v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 433
    .local v2, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 434
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v3

    iput v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->type:I

    .line 435
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 436
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 437
    iget-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 440
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    .end local v0           #data:Lcom/android/vcard/VCardEntry$PhoneData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_1
    return-void
.end method

.method private buildPostalList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, postList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PostalData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_0

    .line 353
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    .line 354
    .local v0, data:Lcom/android/vcard/VCardEntry$PostalData;
    new-instance v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 359
    .local v2, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 360
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PostalData;->getType()I

    move-result v3

    iput v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->type:I

    .line 361
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getVCardType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 362
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PostalData;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 363
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    .end local v0           #data:Lcom/android/vcard/VCardEntry$PostalData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_0
    return-void
.end method

.method private buildWebsiteList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, webList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$WebsiteData;>;"
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;>;"
    if-eqz p1, :cond_0

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$WebsiteData;

    .line 297
    .local v0, data:Lcom/android/vcard/VCardEntry$WebsiteData;
    new-instance v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 299
    .local v2, inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 301
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$WebsiteData;->getWebsite()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    .line 302
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    const v4, 0x7f090256

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 303
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v0           #data:Lcom/android/vcard/VCardEntry$WebsiteData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inf:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_0
    return-void
.end method

.method private initInfoList()V
    .locals 5

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 102
    new-instance v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 103
    .local v0, in:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x2

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v0, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 105
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    new-instance v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 112
    .local v1, info:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v1, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I

    .line 113
    iput-object v2, v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v1           #info:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildNickNameList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 121
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildPhoneList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 124
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildOrganizationList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 127
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildEmailList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 130
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildPostalList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 133
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildImList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 136
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildNotes(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 141
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildWebsiteList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 144
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildBirthDay(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    iget-object v3, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mContactStruct:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry;->getAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->buildAndroidCustomPropertyList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 151
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method protected bindView(ILandroid/view/View;Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)V
    .locals 3
    .parameter "position"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 516
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;

    .line 520
    .local v0, holder:Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;
    if-ne p1, v1, :cond_0

    .line 521
    iput-boolean v1, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mShouldSeparate:Z

    .line 526
    :goto_0
    #getter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {p3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$000(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 537
    :goto_1
    :pswitch_0
    return-void

    .line 523
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mShouldSeparate:Z

    goto :goto_0

    .line 530
    :pswitch_1
    iget-object v1, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 533
    :pswitch_2
    iget-object v1, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v1, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mDataView:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemHeight(I)I
    .locals 3
    .parameter "viewType"

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, h:I
    const/high16 v1, -0x8000

    .line 448
    .local v1, resId:I
    packed-switch p1, :pswitch_data_0

    .line 459
    :goto_0
    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 462
    :cond_0
    return v0

    .line 450
    :pswitch_0
    const v1, 0x7f0b0006

    .line 451
    goto :goto_0

    .line 454
    :pswitch_1
    const v1, 0x7f0b0007

    .line 455
    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 575
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    .line 567
    .local v0, info:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    #getter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$000(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)I

    move-result v1

    return v1
.end method

.method public getSuggestionListHeight()I
    .locals 8

    .prologue
    .line 154
    iget-object v6, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 155
    .local v5, size:I
    const/4 v2, 0x1

    .line 158
    .local v2, dividerH:I
    const/16 v1, 0x14

    .line 159
    .local v1, buffer:I
    iget-object v6, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20d0074

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 161
    .local v0, border:I
    const/4 v3, 0x0

    .line 162
    .local v3, h:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 163
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->getItemViewType(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->getItemHeight(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_0
    add-int/lit8 v6, v5, -0x1

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v0

    add-int/2addr v6, v1

    add-int/2addr v3, v6

    .line 167
    return v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    .line 542
    .local v1, info:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    const/4 v2, 0x0

    .line 543
    .local v2, v:Landroid/view/View;
    if-nez p2, :cond_0

    .line 544
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 554
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->bindView(ILandroid/view/View;Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)V

    .line 555
    return-object v2

    .line 546
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;

    .line 547
    .local v0, holer:Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;
    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 548
    :cond_1
    #getter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v1}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$000(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)I

    move-result v3

    iget v4, v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mViewType:I

    if-ne v3, v4, :cond_2

    .line 549
    move-object v2, p2

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 590
    const/4 v0, 0x0

    .line 592
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;

    .line 467
    .local v4, info:Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
    new-instance v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;-><init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V

    .line 468
    .local v3, holder:Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;
    const/4 v7, 0x0

    .line 469
    .local v7, v:Landroid/view/View;
    #getter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$000(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 470
    iget-object v8, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x2090026

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 471
    iget-object v8, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 473
    .local v2, hieght:I
    invoke-virtual {v7, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 474
    const v8, 0x2020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 475
    .local v6, text:Landroid/widget/TextView;
    const v8, 0x7f0901dd

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 476
    const v8, 0x2020085

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 477
    .local v1, ground:Landroid/view/View;
    const v8, 0x7f0200dc

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 478
    const/4 v8, 0x2

    iput v8, v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mViewType:I

    .line 479
    iput-object v6, v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    .line 480
    iput-object v1, v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mBackground:Landroid/view/View;

    .line 481
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 512
    .end local v1           #ground:Landroid/view/View;
    .end local v2           #hieght:I
    .end local v6           #text:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-object v7

    .line 482
    :cond_1
    #getter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$000(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)I

    move-result v8

    if-nez v8, :cond_3

    .line 483
    iget-object v8, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030003

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 484
    const v8, 0x7f0e0010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableSkin()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 487
    iget-object v8, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getListSelectorBackgroundResource(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    move-object v8, v7

    .line 490
    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 491
    const v8, 0x7f0e0011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 492
    .local v5, label:Landroid/widget/TextView;
    const v8, 0x7f0e0012

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 493
    .local v0, data:Landroid/widget/TextView;
    const/4 v8, 0x0

    iput v8, v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mViewType:I

    .line 494
    iput-object v5, v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    .line 495
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    .end local v0           #data:Landroid/widget/TextView;
    .end local v5           #label:Landroid/widget/TextView;
    :cond_3
    #getter for: Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I
    invoke-static {v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->access$000(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 498
    iget-object v8, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030003

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 499
    const v8, 0x7f0e0010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 501
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableSkin()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 502
    iget-object v8, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter;->mAppContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getListSelectorBackgroundResource(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 505
    :cond_4
    const v8, 0x7f0e0011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 506
    .restart local v5       #label:Landroid/widget/TextView;
    const v8, 0x7f0e0012

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 507
    .restart local v0       #data:Landroid/widget/TextView;
    const/4 v8, 0x1

    iput v8, v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mViewType:I

    .line 508
    iput-object v5, v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    .line 509
    iput-object v0, v3, Lcom/android/mms/ui/SimpleVCardListViewAdapter$ViewHolder;->mDataView:Landroid/widget/TextView;

    .line 510
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
