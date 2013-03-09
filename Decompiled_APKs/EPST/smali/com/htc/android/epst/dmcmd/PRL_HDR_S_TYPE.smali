.class Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;
.super Ljava/lang/Object;
.source "DM_CMD_CODE_PRL_READ.java"


# instance fields
.field private acqTableBitOffset:I

.field private defaultRoamingIndicator:I

.field private isDiabled:Z

.field private isValid:Z

.field private numAcqRecs:I

.field private numSubnetRecs:I

.field private numSysRecs:I

.field private prListId:I

.field private prListSize:I

.field private pref_only:Z

.field private sspr_p_rev:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/16 v0, 0x58

    iput v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->acqTableBitOffset:I

    return-void
.end method


# virtual methods
.method public getAcqTableBitOffset()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->acqTableBitOffset:I

    return v0
.end method

.method public getDefaultRoamingIndicator()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->defaultRoamingIndicator:I

    return v0
.end method

.method public getNumAcqRecs()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->numAcqRecs:I

    return v0
.end method

.method public getNumSubnetRecs()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->numSubnetRecs:I

    return v0
.end method

.method public getNumSysRecs()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->numSysRecs:I

    return v0
.end method

.method public getPrListId()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->prListId:I

    return v0
.end method

.method public getPrListSize()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->prListSize:I

    return v0
.end method

.method public getPref_only()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->pref_only:Z

    return v0
.end method

.method public getSspr_p_rev()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->sspr_p_rev:I

    return v0
.end method

.method public isDiabled()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->isDiabled:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->isValid:Z

    return v0
.end method

.method public setAcqTableBitOffset(I)V
    .locals 0
    .parameter "acqTableBitOffset"

    .prologue
    .line 411
    iput p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->acqTableBitOffset:I

    .line 412
    return-void
.end method

.method public setDefaultRoamingIndicator(I)V
    .locals 0
    .parameter "sysRoamStatusEType"

    .prologue
    .line 387
    iput p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->defaultRoamingIndicator:I

    .line 388
    return-void
.end method

.method public setDiabled(Z)V
    .locals 0
    .parameter "isDiabled"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->isDiabled:Z

    .line 348
    return-void
.end method

.method public setNumAcqRecs(I)V
    .locals 0
    .parameter "numAcqRecs"

    .prologue
    .line 395
    iput p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->numAcqRecs:I

    .line 396
    return-void
.end method

.method public setNumSubnetRecs(I)V
    .locals 0
    .parameter "numSubnetRecs"

    .prologue
    .line 419
    iput p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->numSubnetRecs:I

    .line 420
    return-void
.end method

.method public setNumSysRecs(I)V
    .locals 0
    .parameter "numSysRecs"

    .prologue
    .line 403
    iput p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->numSysRecs:I

    .line 404
    return-void
.end method

.method public setPrListId(I)V
    .locals 0
    .parameter "prListId"

    .prologue
    .line 363
    iput p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->prListId:I

    .line 364
    return-void
.end method

.method public setPrListSize(I)V
    .locals 0
    .parameter "prListSize"

    .prologue
    .line 355
    iput p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->prListSize:I

    .line 356
    return-void
.end method

.method public setPref_only(Z)V
    .locals 0
    .parameter "pref_only"

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->pref_only:Z

    .line 380
    return-void
.end method

.method public setSspr_p_rev(I)V
    .locals 0
    .parameter "sspr_p_rev"

    .prologue
    .line 371
    iput p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->sspr_p_rev:I

    .line 372
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "isValid"

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/htc/android/epst/dmcmd/PRL_HDR_S_TYPE;->isValid:Z

    .line 340
    return-void
.end method
