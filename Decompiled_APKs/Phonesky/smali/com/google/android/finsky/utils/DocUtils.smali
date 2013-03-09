.class public Lcom/google/android/finsky/utils/DocUtils;
.super Ljava/lang/Object;
.source "DocUtils.java"


# static fields
.field public static final DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

.field public static final PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "app"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "album"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "artist"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "book"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "device"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "magazine"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "magazineissue"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "movie"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "song"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "tvepisode"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "tvseason"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "tvshow"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/finsky/utils/DocUtils;->PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;

    .line 50
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    .line 51
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRate(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z
    .locals 5
    .parameter "libraries"
    .parameter "document"

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    .end local v0           #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 96
    .restart local v0       #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static docidToBackend(Ljava/lang/String;)I
    .locals 5
    .parameter "docid"

    .prologue
    .line 71
    const-string v2, "[:-]"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, parts:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 74
    const/4 v2, 0x3

    .line 79
    :goto_0
    return v2

    .line 77
    :cond_0
    :try_start_0
    sget-object v3, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/utils/DocUtils;->PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static extractPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "docId"

    .prologue
    const/16 v3, 0x3a

    .line 133
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 134
    .local v1, start:I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 135
    .local v0, end:I
    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 136
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 138
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static extractSkuForInApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "docId"

    .prologue
    .line 147
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 148
    .local v0, start:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I
    .locals 4
    .parameter "document"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v1

    .line 196
    .local v1, restriction:I
    const v0, 0x7f07020b

    .line 197
    .local v0, resourceId:I
    packed-switch v1, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item is not available. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return v0

    .line 199
    :pswitch_1
    const v0, 0x7f07020c

    .line 200
    goto :goto_0

    .line 202
    :pswitch_2
    const v0, 0x7f07020d

    .line 203
    goto :goto_0

    .line 205
    :pswitch_3
    const v0, 0x7f07020e

    .line 206
    goto :goto_0

    .line 208
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 209
    const v0, 0x7f07020f

    goto :goto_0

    .line 211
    :cond_0
    const v0, 0x7f070210

    .line 213
    goto :goto_0

    .line 215
    :pswitch_5
    const v0, 0x7f070211

    .line 216
    goto :goto_0

    .line 218
    :pswitch_6
    const v0, 0x7f070212

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getListingOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 10
    .parameter "document"
    .parameter "dfeToc"
    .parameter "library"

    .prologue
    const/4 v9, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_4

    .line 234
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;

    move-result-object v6

    .line 237
    .local v6, subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 238
    .local v5, subscriptionOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    .line 239
    .local v4, subscription:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 242
    .end local v4           #subscription:Lcom/google/android/finsky/api/model/Document;
    :cond_0
    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    .line 244
    .local v0, cheapestSubscription:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-nez v0, :cond_1

    .line 245
    invoke-static {v5, v9}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    .line 247
    :cond_1
    if-eqz v0, :cond_2

    .line 264
    .end local v0           #cheapestSubscription:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #subscriptionOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    .end local v6           #subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :goto_1
    return-object v0

    .line 252
    .restart local v0       #cheapestSubscription:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #subscriptionOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    .restart local v6       #subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :cond_2
    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 253
    .local v1, currentIssue:Lcom/google/android/finsky/api/model/Document;
    if-eqz v1, :cond_3

    .line 254
    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v2

    .line 255
    .local v2, currentOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v2

    .line 256
    goto :goto_1

    .line 260
    .end local v2           #currentOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 264
    .end local v0           #cheapestSubscription:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v1           #currentIssue:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #subscriptionOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    .end local v6           #subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    goto :goto_1
.end method

.method public static getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 10
    .parameter
    .parameter "freeOk"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;Z)",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    const/4 v5, 0x0

    .line 274
    .local v5, lowestPricedOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const-wide v3, 0x7fffffffffffffffL

    .line 275
    .local v3, lowestPrice:J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 276
    .local v6, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 279
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v7

    .line 280
    .local v7, offerType:I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x7

    if-eq v7, v8, :cond_1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 285
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v0

    .line 286
    .local v0, currentPrice:J
    if-nez p1, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 289
    :cond_2
    cmp-long v8, v0, v3

    if-gez v8, :cond_0

    .line 290
    move-wide v3, v0

    .line 291
    move-object v5, v6

    goto :goto_0

    .line 294
    .end local v0           #currentPrice:J
    .end local v6           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v7           #offerType:I
    :cond_3
    return-object v5
.end method

.method public static getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;
    .locals 3
    .parameter "doc"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method should be called only on magazine docs. Passed type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 4
    .parameter "issueDoc"
    .parameter "dfeToc"
    .parameter "library"

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-object v1

    .line 308
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, currentOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 311
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0
.end method

.method public static getMagazineSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;
    .locals 4
    .parameter "doc"
    .parameter "dfeToc"
    .parameter "library"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/library/Library;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 337
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 338
    .local v2, subscription:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v2           #subscription:Lcom/google/android/finsky/api/model/Document;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static getPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "inAppDocId"

    .prologue
    .line 121
    const-string v0, "inapp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->extractPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "subscriptionDocId"

    .prologue
    .line 108
    const-string v0, "subs:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->extractPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z
    .locals 8
    .parameter "libraries"
    .parameter "document"

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 159
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasAppSubscriptions()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    .line 161
    .local v4, subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v0

    .line 162
    .local v0, accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    .line 163
    .local v1, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v5

    .line 165
    .local v5, subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    if-eqz v5, :cond_1

    iget-boolean v6, v5, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    if-eqz v6, :cond_1

    .line 166
    const/4 v6, 0x1

    .line 172
    .end local v0           #accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    .end local v1           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v5           #subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static packageHasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Ljava/lang/String;)Z
    .locals 7
    .parameter "libraries"
    .parameter "packageName"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v0

    .line 181
    .local v0, accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    .line 182
    .local v1, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v1}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v5

    .line 184
    .local v5, subscriptionList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibrarySubscriptionEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .line 185
    .local v4, subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    iget-object v6, v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->docId:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    if-eqz v6, :cond_1

    .line 187
    const/4 v6, 0x1

    .line 191
    .end local v1           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .end local v5           #subscriptionList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibrarySubscriptionEntry;>;"
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
