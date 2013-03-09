.class public Lcom/htc/laputa/engine/util/ContentExtrasItem;
.super Ljava/lang/Object;
.source "ContentExtrasItem.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mBundle:Landroid/os/Bundle;

.field private mCompleteContent:Lcom/htc/laputa/engine/util/ContentExtrasItem;

.field private mHasLicense:Z

.field private mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "LaputaContentExtrasItem"

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->TAG:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    .line 8
    iput-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mCompleteContent:Lcom/htc/laputa/engine/util/ContentExtrasItem;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mHasLicense:Z

    .line 43
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->TAG:Ljava/lang/String;

    const-string v1, "ContentExtrasItem()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v1, "LaputaContentExtrasItem"

    iput-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->TAG:Ljava/lang/String;

    .line 7
    iput-object v3, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    .line 8
    iput-object v3, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mCompleteContent:Lcom/htc/laputa/engine/util/ContentExtrasItem;

    .line 9
    iput-boolean v4, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mHasLicense:Z

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .restart local p1
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->TAG:Ljava/lang/String;

    const-string v2, "the bundle passed in is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    .line 20
    const-string v1, "license"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 21
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 23
    new-instance v1, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    invoke-direct {v1, v0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mHasLicense:Z

    .line 32
    :goto_0
    const-string v1, "completecontent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #b:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 33
    .restart local v0       #b:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 34
    new-instance v1, Lcom/htc/laputa/engine/util/ContentExtrasItem;

    invoke-direct {v1, v0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mCompleteContent:Lcom/htc/laputa/engine/util/ContentExtrasItem;

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentExtrasItem() ,id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getClientVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", totalsize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", downloaded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getDownloadedSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",expireDate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getExpireDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",needDownload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->needDownload()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTrial:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->isTrial()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", countryCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 26
    :cond_2
    iput-object v3, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    .line 27
    iput-boolean v4, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mHasLicense:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getAudioPreview()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getClientVersionMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getClientVersionMinor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersionMajor()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "clientversionmajor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClientVersionMinor()I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "clientversionminor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCompleteContent()Lcom/htc/laputa/engine/util/ContentExtrasItem;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mCompleteContent:Lcom/htc/laputa/engine/util/ContentExtrasItem;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "countrycode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoverage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "coverage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadPercentage()I
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "percentage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDownloadedPercentage()I
    .locals 6

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getDownloadedSize()I

    move-result v2

    if-nez v2, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 137
    :goto_0
    return v1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getDownloadedSize()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getSize()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 135
    .local v0, db:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 136
    .local v1, result:I
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getDownloadedPercentage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDownloadedSize()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "availablesize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExpireDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v2, "license"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 104
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 106
    const-string v1, ""

    .line 113
    .end local v0           #b:Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 108
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->TAG:Ljava/lang/String;

    const-string v2, "restore license bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    invoke-direct {v1, v0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mHasLicense:Z

    .line 113
    .end local v0           #b:Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    invoke-virtual {v1}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->getExpireDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGracePeriod()I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "graceperiod"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getImagePreview()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicense()Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLicense() item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t have license"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "totalsize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWifiCableOnly()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreConstants;->IS_WIFICABLEONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasLicense()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mHasLicense:Z

    return v0
.end method

.method public hasValidLicense()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "hasvalidlicense"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAudioPreviewAvailable()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "isaudiopreviewavailable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCatalog()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "iscatalog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentAvailable()Z
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v2, "iscontentavailable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 170
    .local v0, available:Z
    return v0
.end method

.method public isDownloading()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "isdownloading"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isImagePreviewAvailable()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "isimageavailable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLicenseItem()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->getType()I

    move-result v0

    .line 187
    .local v0, type:I
    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EDriveAndWalk:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    invoke-virtual {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EWalk:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    invoke-virtual {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EAdvanceGuidance:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    invoke-virtual {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ESafetyCamera:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    invoke-virtual {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 199
    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ETraffic:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    invoke-virtual {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 203
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTrial()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mLicense:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;

    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;->isTrial()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public needDownload()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "needdownload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public needShown()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->isLicenseItem()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->hasLicense()Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->isContentAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 217
    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->needDownload()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 222
    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->isContentAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 230
    goto :goto_0
.end method

.method public setIsDownloading()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "isdownloading"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    return-void
.end method

.method public setNeedDownload()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "needdownload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method public setWifiCableOnly(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentExtrasItem;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreConstants;->IS_WIFICABLEONLY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    return-void
.end method

.method public shouldBeSync()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentExtrasItem;->isLicenseItem()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
