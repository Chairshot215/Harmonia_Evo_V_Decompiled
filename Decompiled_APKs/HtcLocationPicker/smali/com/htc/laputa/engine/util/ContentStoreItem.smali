.class public Lcom/htc/laputa/engine/util/ContentStoreItem;
.super Lcom/htc/laputa/engine/util/ContentExtrasItem;
.source "ContentStoreItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/laputa/engine/util/ContentStoreItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field mPrice:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentStoreItemPrice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreItem$1;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/ContentStoreItem$1;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;-><init>()V

    .line 11
    const-string v0, "LaputaContentStoreItem"

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->mPrice:Ljava/util/ArrayList;

    .line 14
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->TAG:Ljava/lang/String;

    const-string v1, "ContentStoreItem()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/ContentExtrasItem;-><init>(Landroid/os/Bundle;)V

    .line 11
    const-string v0, "LaputaContentStoreItem"

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->mPrice:Ljava/util/ArrayList;

    .line 20
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->TAG:Ljava/lang/String;

    const-string v1, "ContentStoreItem() got null bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentStoreItem() ,level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", server version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getStoreVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasLicense:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->hasLicense()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", downloaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getDownloadedSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;-><init>()V

    .line 11
    const-string v0, "LaputaContentStoreItem"

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->mPrice:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/laputa/engine/util/ContentStoreItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/ContentStoreItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getBundleId()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "bundleid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBuyIndex()I
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "buyindex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCatalogId()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "catalogid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCatalogIndex()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPrice()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/ContentStoreItemPrice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->mPrice:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->mPrice:Ljava/util/ArrayList;

    .line 99
    :goto_0
    return-object v3

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v4, "price0"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    const/4 v3, 0x0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v1, 0x0

    .line 91
    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v4, "price%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 99
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->mPrice:Ljava/util/ArrayList;

    goto :goto_0

    .line 95
    :cond_2
    new-instance v2, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;

    invoke-direct {v2, v0}, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;-><init>(Landroid/os/Bundle;)V

    .line 96
    .local v2, price:Lcom/htc/laputa/engine/util/ContentStoreItemPrice;
    invoke-virtual {v2, v1}, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->setPriceIndex(I)V

    .line 97
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->mPrice:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getStoreVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getStoreVersionMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getStoreVersionMinor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreVersionMajor()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "storeversionmajor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStoreVersionMinor()I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "storeversionminor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasNewerVersion()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getStoreVersionMajor()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getClientVersionMajor()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 138
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got newer version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getStoreVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getStoreVersionMajor()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getClientVersionMajor()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getStoreVersionMinor()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItem;->getClientVersionMinor()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 147
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreview()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "haspreview"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isContentExtrasItem()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "isfree"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFree()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "isfree"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isTryForFreeAvailable()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "istryforfreeavailable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isUpgradable()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "upgradable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBuyIndex(I)V
    .locals 2
    .parameter "val"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "buyindex"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method
