.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_HOME_SID_NID.java"


# instance fields
.field private NAM:Ljava/lang/String;

.field private final NID_LENGTH:I

.field private PAIR:Ljava/lang/String;

.field private final PAIR_LENGTH:I

.field private final SIDNID_LENGTH:I

.field private final SID_LENGTH:I

.field private mNid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 11
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->NAM:Ljava/lang/String;

    .line 14
    const-string v0, "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->PAIR:Ljava/lang/String;

    .line 20
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->PAIR_LENGTH:I

    .line 21
    iput v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->SID_LENGTH:I

    .line 22
    iput v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->NID_LENGTH:I

    .line 23
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->SIDNID_LENGTH:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mSid:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mNid:Ljava/util/ArrayList;

    return-void
.end method

.method private SetArray(Ljava/lang/String;)V
    .locals 11
    .parameter "pair"

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x4

    .line 54
    const/4 v7, 0x0

    .local v7, start:I
    const/4 v0, 0x0

    .line 55
    .local v0, end:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v8, 0x14

    if-ge v1, v8, :cond_0

    .line 56
    add-int/lit8 v0, v0, 0x8

    .line 57
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->PAIR:Ljava/lang/String;

    invoke-virtual {v8, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, sidnid:Ljava/lang/String;
    add-int/lit8 v7, v7, 0x8

    .line 59
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 61
    .local v3, iSid:I
    const/16 v8, 0x8

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, iNid:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, sid:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, nid:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mSid:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mNid:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v2           #iNid:I
    .end local v3           #iSid:I
    .end local v4           #nid:Ljava/lang/String;
    .end local v5           #sid:Ljava/lang/String;
    .end local v6           #sidnid:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 72
    const-string v5, ""

    .line 73
    .local v5, sidnid:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v8, 0x14

    if-ge v2, v8, :cond_0

    .line 74
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mSid:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, decSid:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mNid:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, decNid:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, tmpSid:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, tmpNid:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, sid:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, nid:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0           #decNid:Ljava/lang/String;
    .end local v1           #decSid:Ljava/lang/String;
    .end local v3           #nid:Ljava/lang/String;
    .end local v4           #sid:Ljava/lang/String;
    .end local v6           #tmpNid:Ljava/lang/String;
    .end local v7           #tmpSid:Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->NAM:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mCurrentCmdData:Ljava/lang/String;

    .line 85
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mCurrentCmdData:Ljava/lang/String;

    return-object v8
.end method

.method public getSIDNID(I)[Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 29
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mSid:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    .local v2, sid:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mNid:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, nid:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    .line 32
    .local v1, ret:[Ljava/lang/String;
    return-object v1
.end method

.method public read()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 47
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->NAM:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v1, 0xa2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->PAIR:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->PAIR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->SetArray(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setSIDNID(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "sidVal"
    .parameter "nidVal"

    .prologue
    const/16 v2, 0xa

    .line 39
    invoke-static {p2, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, sid:I
    invoke-static {p3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, nid:I
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mSid:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->mNid:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method
