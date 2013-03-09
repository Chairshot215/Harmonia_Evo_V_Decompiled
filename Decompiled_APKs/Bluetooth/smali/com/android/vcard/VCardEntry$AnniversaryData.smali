.class public Lcom/android/vcard/VCardEntry$AnniversaryData;
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
    name = "AnniversaryData"
.end annotation


# instance fields
.field private final mAnniversary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "anniversary"

    .prologue
    .line 1317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    .line 1319
    return-void
.end method

.method static synthetic access$2000(Lcom/android/vcard/VCardEntry$AnniversaryData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    return-object v0
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
    .line 1324
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1326
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1327
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1330
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    #calls: Lcom/android/vcard/VCardEntry;->convertCalendarDateString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/vcard/VCardEntry;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1332
    const-string v1, "data2"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1333
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 1343
    if-ne p0, p1, :cond_0

    .line 1344
    const/4 v1, 0x1

    .line 1350
    :goto_0
    return v1

    .line 1346
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-nez v1, :cond_1

    .line 1347
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1349
    check-cast v0, Lcom/android/vcard/VCardEntry$AnniversaryData;

    .line 1350
    .local v0, anniversaryData:Lcom/android/vcard/VCardEntry$AnniversaryData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAnniversary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1365
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anniversary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
