.class Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;
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
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/16 v0, 0x58

    iput v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->acqTableBitOffset:I

    return-void
.end method


# virtual methods
.method public getAcqTableBitOffset()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->acqTableBitOffset:I

    return v0
.end method

.method public getDefaultRoamingIndicator()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->defaultRoamingIndicator:I

    return v0
.end method

.method public getNumAcqRecs()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->numAcqRecs:I

    return v0
.end method

.method public getNumSubnetRecs()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->numSubnetRecs:I

    return v0
.end method

.method public getNumSysRecs()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->numSysRecs:I

    return v0
.end method

.method public getPrListId()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->prListId:I

    return v0
.end method

.method public getPrListSize()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->prListSize:I

    return v0
.end method

.method public getPref_only()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->pref_only:Z

    return v0
.end method

.method public getSspr_p_rev()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->sspr_p_rev:I

    return v0
.end method

.method public isDiabled()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->isDiabled:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->isValid:Z

    return v0
.end method

.method public setAcqTableBitOffset(I)V
    .locals 0
    .parameter "acqTableBitOffset"

    .prologue
    .line 412
    iput p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->acqTableBitOffset:I

    .line 413
    return-void
.end method

.method public setDefaultRoamingIndicator(I)V
    .locals 0
    .parameter "sysRoamStatusEType"

    .prologue
    .line 388
    iput p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->defaultRoamingIndicator:I

    .line 389
    return-void
.end method

.method public setDiabled(Z)V
    .locals 0
    .parameter "isDiabled"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->isDiabled:Z

    .line 349
    return-void
.end method

.method public setNumAcqRecs(I)V
    .locals 0
    .parameter "numAcqRecs"

    .prologue
    .line 396
    iput p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->numAcqRecs:I

    .line 397
    return-void
.end method

.method public setNumSubnetRecs(I)V
    .locals 0
    .parameter "numSubnetRecs"

    .prologue
    .line 420
    iput p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->numSubnetRecs:I

    .line 421
    return-void
.end method

.method public setNumSysRecs(I)V
    .locals 0
    .parameter "numSysRecs"

    .prologue
    .line 404
    iput p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->numSysRecs:I

    .line 405
    return-void
.end method

.method public setPrListId(I)V
    .locals 0
    .parameter "prListId"

    .prologue
    .line 364
    iput p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->prListId:I

    .line 365
    return-void
.end method

.method public setPrListSize(I)V
    .locals 0
    .parameter "prListSize"

    .prologue
    .line 356
    iput p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->prListSize:I

    .line 357
    return-void
.end method

.method public setPref_only(Z)V
    .locals 0
    .parameter "pref_only"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->pref_only:Z

    .line 381
    return-void
.end method

.method public setSspr_p_rev(I)V
    .locals 0
    .parameter "sspr_p_rev"

    .prologue
    .line 372
    iput p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->sspr_p_rev:I

    .line 373
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "isValid"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/htc/android/fieldtrial/dmcmd/PRL_HDR_S_TYPE;->isValid:Z

    .line 341
    return-void
.end method
