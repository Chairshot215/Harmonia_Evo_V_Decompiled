.class public Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_PILOT_SETS.java"


# instance fields
.field ActiveCnt:I

.field CandidateCnt:I

.field NeighborCnt:I

.field private PilotInc:Ljava/lang/String;

.field private PilotSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;",
            ">;"
        }
    .end annotation
.end field

.field limitActiveCnt:I

.field limitCandidateCnt:I

.field limitNeighborCnt:I

.field totalLimit:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 12
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotInc:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    .line 17
    iput v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitActiveCnt:I

    iput v2, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitCandidateCnt:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitNeighborCnt:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->totalLimit:I

    .line 18
    iput v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->ActiveCnt:I

    iput v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->CandidateCnt:I

    iput v1, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->NeighborCnt:I

    return-void
.end method


# virtual methods
.method public getPilotPN(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 148
    const-string v0, "N/A"

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    iget-object v0, v0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotPN:Ljava/lang/String;

    goto :goto_0
.end method

.method public read()V
    .locals 7

    .prologue
    .line 22
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v2

    .line 24
    .local v2, parser:Lcom/htc/android/fieldtrial/internal/CmdParser;
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1aa

    if-eq v4, v5, :cond_1

    .line 25
    const-string v4, "DM_PILOT_SETS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x40.mCmdToBeParsed.length()!=426:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void

    .line 29
    :cond_1
    const/4 v3, 0x0

    .line 30
    .local v3, pos:I
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v3, v5}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotInc:Ljava/lang/String;

    .line 31
    add-int/lit8 v3, v3, 0x4

    .line 34
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v3, v5}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->ActiveCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    add-int/lit8 v3, v3, 0x2

    .line 41
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-virtual {v2, v4, v3, v5}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->CandidateCnt:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :goto_1
    add-int/lit8 v3, v3, 0x2

    .line 48
    :try_start_2
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v3, v5}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->NeighborCnt:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    :goto_2
    add-int/lit8 v3, v3, 0x2

    .line 70
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->totalLimit:I

    if-eq v4, v5, :cond_2

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->totalLimit:I

    if-ge v1, v4, :cond_2

    .line 72
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    new-instance v5, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    invoke-direct {v5}, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 35
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DM_PILOT_SETS"

    const-string v5, "ActiveCnt =  Integer.parseInt error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 43
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "DM_PILOT_SETS"

    const-string v5, "CandidateCnt =  Integer.parseInt error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 50
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "DM_PILOT_SETS"

    const-string v5, "NeighborCnt =  Integer.parseInt error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 76
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    .line 77
    .restart local v1       #i:I
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->ActiveCnt:I

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitActiveCnt:I

    if-lt v4, v5, :cond_3

    .line 78
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitActiveCnt:I

    iput v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->ActiveCnt:I

    .line 81
    :cond_3
    const/4 v1, 0x0

    :goto_4
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->ActiveCnt:I

    if-ge v1, v4, :cond_4

    .line 83
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v2, v5, v3, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotPN:Ljava/lang/String;

    .line 85
    add-int/lit8 v3, v3, 0x4

    .line 87
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v2, v5, v3, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotStrength:Ljava/lang/String;

    .line 89
    add-int/lit8 v3, v3, 0x4

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 92
    :cond_4
    :goto_5
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitActiveCnt:I

    if-ge v1, v4, :cond_5

    .line 93
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    const-string v5, "NULL"

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotPN:Ljava/lang/String;

    .line 96
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    const-string v5, "NULL"

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotStrength:Ljava/lang/String;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 101
    :cond_5
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->CandidateCnt:I

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitCandidateCnt:I

    if-lt v4, v5, :cond_6

    .line 102
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitCandidateCnt:I

    iput v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->CandidateCnt:I

    .line 105
    :cond_6
    :goto_6
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->CandidateCnt:I

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitActiveCnt:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_7

    .line 106
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v2, v5, v3, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotPN:Ljava/lang/String;

    .line 108
    add-int/lit8 v3, v3, 0x4

    .line 109
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v2, v5, v3, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotStrength:Ljava/lang/String;

    .line 111
    add-int/lit8 v3, v3, 0x4

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 114
    :cond_7
    :goto_7
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitCandidateCnt:I

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitActiveCnt:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_8

    .line 115
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    const-string v5, "NULL"

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotPN:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    const-string v5, "NULL"

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotStrength:Ljava/lang/String;

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 123
    :cond_8
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->NeighborCnt:I

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitNeighborCnt:I

    if-lt v4, v5, :cond_9

    .line 124
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitNeighborCnt:I

    iput v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->NeighborCnt:I

    .line 127
    :cond_9
    :goto_8
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitActiveCnt:I

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitCandidateCnt:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->NeighborCnt:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_a

    .line 128
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v2, v5, v3, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotPN:Ljava/lang/String;

    .line 130
    add-int/lit8 v3, v3, 0x4

    .line 131
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->mCmdToBeParsed:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v2, v5, v3, v6}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotStrength:Ljava/lang/String;

    .line 133
    add-int/lit8 v3, v3, 0x4

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 136
    :cond_a
    :goto_9
    iget v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitActiveCnt:I

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitCandidateCnt:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->limitNeighborCnt:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    const-string v5, "NULL"

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotPN:Ljava/lang/String;

    .line 140
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SETS;->PilotSets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;

    const-string v5, "NULL"

    iput-object v5, v4, Lcom/htc/android/fieldtrial/dmcmd/DM_PILOT_SET_RECORD;->PilotStrength:Ljava/lang/String;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method
