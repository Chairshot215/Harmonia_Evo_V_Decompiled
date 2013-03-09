.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_USER_NAI.java"


# static fields
.field public static final DISABLE:Ljava/lang/String; = "00"

.field public static final DM_NVI_MAX_NAI_LENGTH:I = 0x48

.field public static final ENABLE:Ljava/lang/String; = "01"

.field public static final IP_ADDRESS_SIZE:I = 0x4

.field public static final IP_NUMBER_LENGTH:I = 0x3

.field public static final MAX_SPI_LENGTH:I = 0x8


# instance fields
.field private MN_AAA_Spi:Ljava/lang/String;

.field private MN_AAA_SpiSet:Ljava/lang/String;

.field private MN_HA_Spi:Ljava/lang/String;

.field private MN_HA_SpiSet:Ljava/lang/String;

.field private NAI:Ljava/lang/String;

.field private homeAddr:[Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private naiLength:Ljava/lang/String;

.field private primary_HA_Addr:[Ljava/lang/String;

.field private revTunPref:Ljava/lang/String;

.field private secondary_HA_Addr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 21
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->naiLength:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->NAI:Ljava/lang/String;

    .line 25
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_SpiSet:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    .line 29
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_SpiSet:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    .line 33
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->revTunPref:Ljava/lang/String;

    .line 35
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v2

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "00"

    aput-object v1, v0, v4

    const-string v1, "00"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->homeAddr:[Ljava/lang/String;

    .line 37
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v2

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "00"

    aput-object v1, v0, v4

    const-string v1, "00"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->primary_HA_Addr:[Ljava/lang/String;

    .line 39
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v2

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "00"

    aput-object v1, v0, v4

    const-string v1, "00"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->secondary_HA_Addr:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    .line 91
    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->index:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->naiLength:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 93
    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->NAI:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, NAIString:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->NAI:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v2, v5, 0x48

    .line 95
    .local v2, appendLen:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_SpiSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 100
    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, haSpi:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_SpiSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 104
    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, aaaSpi:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->revTunPref:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 107
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->homeAddr:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_2

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->primary_HA_Addr:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 113
    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_3

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->secondary_HA_Addr:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 116
    :cond_3
    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCurrentCmdData:Ljava/lang/String;

    return-object v5
.end method

.method public getHomeAddr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->homeAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getMN_AAA_Spi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    return-object v0
.end method

.method public getMN_AAA_SpiSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_SpiSet:Ljava/lang/String;

    return-object v0
.end method

.method public getMN_HA_Spi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    return-object v0
.end method

.method public getMN_HA_SpiSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_SpiSet:Ljava/lang/String;

    return-object v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->NAI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary_HA_Addr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->primary_HA_Addr:[Ljava/lang/String;

    return-object v0
.end method

.method public getRevTunPref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->revTunPref:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondary_HA_Addr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->secondary_HA_Addr:[Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 9

    .prologue
    const/16 v8, 0x30

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    .line 43
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->index:Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->naiLength:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->naiLength:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 46
    .local v2, len:I
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->NAI:Ljava/lang/String;

    .line 48
    const/16 v0, 0x94

    .line 49
    .local v0, beginPos:I
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v4, 0x96

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_SpiSet:Ljava/lang/String;

    .line 51
    add-int/lit8 v0, v0, 0x2

    .line 52
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v4, 0x9e

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    .line 53
    :goto_0
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 54
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_2

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x8

    .line 61
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v4, 0xa0

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_SpiSet:Ljava/lang/String;

    .line 63
    add-int/lit8 v0, v0, 0x2

    .line 64
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v4, 0xa8

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    .line 65
    :goto_1
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 66
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_3

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x8

    .line 73
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v4, 0xaa

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->revTunPref:Ljava/lang/String;

    .line 74
    add-int/lit8 v0, v0, 0x2

    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v6, :cond_4

    .line 76
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->homeAddr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 77
    add-int/lit8 v0, v0, 0x2

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 57
    .end local v1           #i:I
    :cond_2
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_3
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    goto :goto_1

    .line 79
    .restart local v1       #i:I
    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_5

    .line 80
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->primary_HA_Addr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 81
    add-int/lit8 v0, v0, 0x2

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 83
    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_6

    .line 84
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->secondary_HA_Addr:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 85
    add-int/lit8 v0, v0, 0x2

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 87
    :cond_6
    return-void
.end method

.method public setHomeAddr([Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->homeAddr:[Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setMN_AAA_Spi(Ljava/lang/String;)V
    .locals 0
    .parameter "aaaSpi"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_Spi:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setMN_AAA_SpiSet(Ljava/lang/String;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_AAA_SpiSet:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setMN_HA_Spi(Ljava/lang/String;)V
    .locals 0
    .parameter "haSpi"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_Spi:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setMN_HA_SpiSet(Ljava/lang/String;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->MN_HA_SpiSet:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setNai(Ljava/lang/String;)V
    .locals 4
    .parameter "nai"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->NAI:Ljava/lang/String;

    .line 124
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->NAI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->naiLength:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPrimary_HA_Addr([Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->primary_HA_Addr:[Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setRevTunPref(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->revTunPref:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setSecondary_HA_Addr([Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_USER_NAI;->secondary_HA_Addr:[Ljava/lang/String;

    .line 181
    return-void
.end method
