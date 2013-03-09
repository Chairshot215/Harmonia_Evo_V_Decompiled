.class public Lcom/android/vcard/VCardEntry$ImData;
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
    name = "ImData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mCustomProtocol:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mProtocol:I

.field private final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "address"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput p1, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    .line 894
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    .line 895
    iput p4, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    .line 896
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    .line 897
    iput-boolean p5, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    .line 898
    return-void
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 4
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
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, -0x1

    .line 903
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 905
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 906
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 907
    const-string v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 912
    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 914
    :cond_0
    const-string v1, "data5"

    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 918
    :cond_1
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 919
    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    if-ne v1, v3, :cond_2

    .line 920
    const-string v1, "data6"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 922
    :cond_2
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eqz v1, :cond_3

    .line 923
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 925
    :cond_3
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 935
    if-ne p0, p1, :cond_1

    .line 942
    :cond_0
    :goto_0
    return v1

    .line 938
    :cond_1
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$ImData;

    if-nez v3, :cond_2

    move v1, v2

    .line 939
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 941
    check-cast v0, Lcom/android/vcard/VCardEntry$ImData;

    .line 942
    .local v0, imData:Lcom/android/vcard/VCardEntry$ImData;
    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    iget v4, v0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    iget v4, v0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 968
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 951
    iget v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    .line 952
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    add-int v0, v1, v3

    .line 953
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 954
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 955
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v2, v1

    .line 956
    return v0

    :cond_1
    move v1, v2

    .line 953
    goto :goto_0

    .line 955
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 961
    const-string v0, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
