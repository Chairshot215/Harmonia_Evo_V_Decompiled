.class public Lcom/android/vcard/VCardEntry$SipData;
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
    name = "SipData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .parameter "rawSip"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    .line 1388
    :goto_0
    iput p2, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    .line 1389
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    .line 1390
    iput-boolean p4, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    .line 1391
    return-void

    .line 1386
    :cond_0
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
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
    .line 1396
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1398
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1399
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1400
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1401
    const-string v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1402
    iget v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    if-nez v1, :cond_0

    .line 1403
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1405
    :cond_0
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz v1, :cond_1

    .line 1406
    const-string v1, "is_primary"

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1408
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1409
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1418
    if-ne p0, p1, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return v1

    .line 1421
    :cond_1
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$SipData;

    if-nez v3, :cond_2

    move v1, v2

    .line 1422
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1424
    check-cast v0, Lcom/android/vcard/VCardEntry$SipData;

    .line 1425
    .local v0, sipData:Lcom/android/vcard/VCardEntry$SipData;
    iget v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    iget v4, v0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1447
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1454
    iget v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1433
    iget v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    .line 1434
    .local v0, hash:I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 1435
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 1436
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v2, v1

    .line 1437
    return v0

    :cond_1
    move v1, v2

    .line 1434
    goto :goto_0

    .line 1436
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
