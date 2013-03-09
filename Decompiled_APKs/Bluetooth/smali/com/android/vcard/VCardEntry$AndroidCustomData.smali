.class public Lcom/android/vcard/VCardEntry$AndroidCustomData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidCustomData"
.end annotation


# instance fields
.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "mimeType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1467
    .local p2, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    .line 1469
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    .line 1470
    return-void
.end method

.method public static constructAndroidCustomData(Ljava/util/List;)Lcom/android/vcard/VCardEntry$AndroidCustomData;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0x10

    const/4 v5, 0x0

    .line 1476
    if-nez p0, :cond_0

    .line 1477
    const/4 v2, 0x0

    .line 1478
    .local v2, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1489
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v3, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    invoke-direct {v3, v2, v0}, Lcom/android/vcard/VCardEntry$AndroidCustomData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v3

    .line 1479
    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1480
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1481
    .restart local v2       #mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1483
    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1485
    .local v1, max:I
    :cond_2
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1486
    .restart local v2       #mimeType:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1495
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1497
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1498
    const-string v3, "mimetype"

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1500
    const-string v3, "vnd.android.cursor.item/contact_event"

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1501
    const-string v3, "data2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1504
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1505
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1506
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1504
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1511
    .end local v2           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1521
    if-ne p0, p1, :cond_1

    move v6, v5

    .line 1543
    :cond_0
    :goto_0
    return v6

    .line 1524
    :cond_1
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1527
    check-cast v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    .line 1528
    .local v0, data:Lcom/android/vcard/VCardEntry$AndroidCustomData;
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1531
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v3, :cond_3

    .line 1532
    iget-object v3, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    move v6, v3

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    .line 1534
    :cond_3
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1535
    .local v2, size:I
    iget-object v3, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1538
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1539
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1538
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v6, v5

    .line 1543
    goto :goto_0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1568
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1549
    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1550
    .local v1, hash:I
    :goto_0
    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 1551
    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1552
    .local v0, data:Ljava/lang/String;
    mul-int/lit8 v5, v1, 0x1f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    add-int v1, v5, v4

    goto :goto_1

    .end local v0           #data:Ljava/lang/String;
    .end local v1           #hash:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    move v1, v3

    .line 1549
    goto :goto_0

    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #hash:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    move v4, v3

    .line 1552
    goto :goto_2

    .line 1555
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1561
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-custom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1562
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
