.class public Lcom/android/htcdialer/search/CandidateInfo;
.super Ljava/lang/Object;
.source "CandidateInfo.java"


# instance fields
.field curStage:I

.field isSplited:Z

.field newMatchCountCh:I

.field newMatchCountEn:I

.field oldMatchCountCh:I

.field oldMatchCountEn:I

.field pos0:[I

.field pos1:[I

.field status:[I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "infoCount"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->curStage:I

    .line 7
    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->oldMatchCountEn:I

    .line 8
    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->oldMatchCountCh:I

    .line 9
    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->newMatchCountEn:I

    .line 10
    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->newMatchCountCh:I

    .line 12
    iput-object v1, p0, Lcom/android/htcdialer/search/CandidateInfo;->pos0:[I

    .line 13
    iput-object v1, p0, Lcom/android/htcdialer/search/CandidateInfo;->pos1:[I

    .line 14
    iput-object v1, p0, Lcom/android/htcdialer/search/CandidateInfo;->status:[I

    .line 16
    iput-boolean v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->isSplited:Z

    .line 19
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->pos0:[I

    .line 20
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->pos1:[I

    .line 21
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->status:[I

    .line 22
    return-void
.end method


# virtual methods
.method public getNewMatchCount()I
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->newMatchCountEn:I

    iget v1, p0, Lcom/android/htcdialer/search/CandidateInfo;->newMatchCountCh:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOldMatchCount()I
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->oldMatchCountEn:I

    iget v1, p0, Lcom/android/htcdialer/search/CandidateInfo;->oldMatchCountCh:I

    add-int/2addr v0, v1

    return v0
.end method

.method public nextStage(I)V
    .locals 1
    .parameter "limitStage"

    .prologue
    .line 33
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->curStage:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 34
    :cond_0
    iget v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->curStage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->curStage:I

    .line 35
    iget v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->newMatchCountEn:I

    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->oldMatchCountEn:I

    .line 36
    iget v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->newMatchCountCh:I

    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->oldMatchCountCh:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->newMatchCountCh:I

    iput v0, p0, Lcom/android/htcdialer/search/CandidateInfo;->newMatchCountEn:I

    .line 39
    :cond_1
    return-void
.end method
