.class public Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;
.super Ljava/lang/Object;
.source "NowPlayingScorer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;
    }
.end annotation


# static fields
.field private static final ALWAYS_INCLUDE_MOST_RECENT:Z

.field private static final HAS_CONTENT_SCORE_MAP:Landroid/util/SparseIntArray;

.field private static final IMPORTANT_CONTRIBUTION_FRACTION:F

.field private static final INTERACTION_CLUSTER_MS:J

.field private static final MIDTERM_INTERACTION_MS:J

.field private static final MIDTERM_INTERACTION_SCORE_MAP:Landroid/util/SparseIntArray;

.field private static final SHORTTERM_DECAY:F

.field private static final SHORTTERM_INTERACTION_MS:J

.field private static final SHORTTERM_INTERACTION_SCORE_MAP:Landroid/util/SparseIntArray;

.field private static final UPDATE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgetInteractionClusterMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->INTERACTION_CLUSTER_MS:J

    .line 27
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgetShorttermDurationMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->SHORTTERM_INTERACTION_MS:J

    .line 29
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgetMidtermDurationMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->MIDTERM_INTERACTION_MS:J

    .line 32
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgetShorttermScores:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->SHORTTERM_INTERACTION_SCORE_MAP:Landroid/util/SparseIntArray;

    .line 35
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgeMidtermScores:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->MIDTERM_INTERACTION_SCORE_MAP:Landroid/util/SparseIntArray;

    .line 46
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgetShorttermDecay:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->SHORTTERM_DECAY:F

    .line 49
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgetHasContentScoreMap:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->HAS_CONTENT_SCORE_MAP:Landroid/util/SparseIntArray;

    .line 53
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgetImportantContributionFraction:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->IMPORTANT_CONTRIBUTION_FRACTION:F

    .line 57
    sget-object v0, Lcom/google/android/finsky/config/G;->myLibraryWidgetAlwaysIncludeMostRecentBackend:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->ALWAYS_INCLUDE_MOST_RECENT:Z

    .line 60
    new-instance v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$1;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->UPDATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method private static computeCorpusScore(Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;J)Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;
    .locals 31
    .parameter "consumptionAppDocList"
    .parameter "nowMs"

    .prologue
    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v2

    .line 184
    .local v2, backend:I
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v25, sortedDocs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    sget-object v26, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->UPDATE_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v25 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    const-wide/16 v17, 0x0

    .line 189
    .local v17, previousDocInteractionMs:J
    const-wide/16 v9, 0x0

    .line 191
    .local v9, latestInteractionMs:J
    const/16 v21, 0x0

    .line 192
    .local v21, shorttermInteractions:I
    const/16 v22, 0x0

    .line 193
    .local v22, shorttermScoreSum:F
    sget-object v26, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->SHORTTERM_INTERACTION_SCORE_MAP:Landroid/util/SparseIntArray;

    sget-object v27, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->SHORTTERM_INTERACTION_SCORE_MAP:Landroid/util/SparseIntArray;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/util/SparseIntArray;->get(I)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v16, v0

    .line 196
    .local v16, nextShorttermScore:F
    const/4 v11, 0x0

    .line 197
    .local v11, midtermInteractions:I
    sget-wide v26, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->SHORTTERM_INTERACTION_MS:J

    sub-long v23, p1, v26

    .line 198
    .local v23, shorttermStartMs:J
    sget-wide v26, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->MIDTERM_INTERACTION_MS:J

    sub-long v14, p1, v26

    .line 200
    .local v14, midtermStartMs:J
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    .line 201
    .local v4, doc:Lcom/google/android/finsky/services/ConsumptionAppDoc;
    invoke-virtual {v4}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getLastUpdateTimeMs()J

    move-result-wide v7

    .line 202
    .local v7, lastUpdateTimeMs:J
    const/16 v20, 0x1

    .line 203
    .local v20, scoreInteraction:Z
    sub-long v26, v7, v17

    sget-wide v28, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->INTERACTION_CLUSTER_MS:J

    cmp-long v26, v26, v28

    if-gez v26, :cond_1

    .line 205
    sget-boolean v26, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v26, :cond_0

    .line 206
    const-string v26, "Not scoring doc %s, since it\'s within %d ms of previous interaction"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getDocId()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-wide v29, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->INTERACTION_CLUSTER_MS:J

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :cond_0
    :goto_1
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 219
    move-wide/from16 v17, v7

    .line 220
    goto :goto_0

    .line 210
    :cond_1
    cmp-long v26, v7, v23

    if-lez v26, :cond_2

    .line 211
    add-int/lit8 v21, v21, 0x1

    .line 212
    add-float v22, v22, v16

    .line 213
    sget v26, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->SHORTTERM_DECAY:F

    mul-float v16, v16, v26

    goto :goto_1

    .line 214
    :cond_2
    cmp-long v26, v7, v14

    if-lez v26, :cond_0

    .line 215
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 222
    .end local v4           #doc:Lcom/google/android/finsky/services/ConsumptionAppDoc;
    .end local v7           #lastUpdateTimeMs:J
    .end local v20           #scoreInteraction:Z
    :cond_3
    sget-object v26, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->MIDTERM_INTERACTION_SCORE_MAP:Landroid/util/SparseIntArray;

    sget-object v27, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->MIDTERM_INTERACTION_SCORE_MAP:Landroid/util/SparseIntArray;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/util/SparseIntArray;->get(I)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 224
    .local v13, midtermScorePerDoc:I
    const/4 v5, 0x0

    .line 225
    .local v5, hasContentScore:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v26

    if-lez v26, :cond_4

    .line 226
    sget-object v26, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->HAS_CONTENT_SCORE_MAP:Landroid/util/SparseIntArray;

    sget-object v27, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->HAS_CONTENT_SCORE_MAP:Landroid/util/SparseIntArray;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/util/SparseIntArray;->get(I)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 229
    :cond_4
    mul-int v12, v11, v13

    .line 230
    .local v12, midtermScore:I
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v26, v26, v12

    add-int v19, v26, v5

    .line 231
    .local v19, score:I
    sget-boolean v26, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v26, :cond_5

    .line 232
    const-string v26, "Score for backend %d: %d (shorttermscore=%.3g,midtermscore=%d,hascontentscore=%d,shorttermcount=%d,midtermcount=%d,totalcount=%d)"

    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_5
    new-instance v3, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$1;)V

    .line 238
    .local v3, corpusScore:Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;
    move/from16 v0, v19

    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->score:I
    invoke-static {v3, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->access$002(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;I)I

    .line 239
    #setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->lastInteractionMs:J
    invoke-static {v3, v9, v10}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->access$102(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;J)J

    .line 240
    return-object v3
.end method

.method private static computeScoresAndReturnMostRecent(Ljava/util/List;JLjava/util/Map;)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .locals 8
    .parameter
    .parameter "nowMs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, docLists:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    .local p3, scores:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 112
    .local v3, mostRecentDocList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    const-wide/16 v4, 0x0

    .line 113
    .local v4, mostRecentInteractionMs:J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .line 114
    .local v1, docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->computeCorpusScore(Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;J)Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;

    move-result-object v0

    .line 115
    .local v0, corpusScore:Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->score:I
    invoke-static {v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->access$000(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->lastInteractionMs:J
    invoke-static {v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    .line 117
    move-object v3, v1

    .line 118
    #getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->lastInteractionMs:J
    invoke-static {v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;)J

    move-result-wide v4

    goto :goto_0

    .line 121
    .end local v0           #corpusScore:Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;
    .end local v1           #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    :cond_1
    return-object v3
.end method

.method private static getImportantBackends(Ljava/util/List;ILjava/util/Map;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter "maxCorpora"
    .parameter
    .parameter "mostRecentDocList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, sortedDocLists:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    .local p2, scores:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 137
    invoke-static {p1}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 138
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    const/4 v6, 0x0

    .line 139
    .local v6, scoreSum:I
    const/4 v1, 0x0

    .line 140
    .local v1, hasMostRecentBackend:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 141
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .line 142
    .local v0, docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 143
    .local v5, score:I
    add-int v3, v6, v5

    .line 145
    .local v3, newScoreSum:I
    if-nez v3, :cond_3

    .line 163
    .end local v0           #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .end local v3           #newScoreSum:I
    .end local v5           #score:I
    :cond_0
    :goto_1
    sget-boolean v7, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->ALWAYS_INCLUDE_MOST_RECENT:Z

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 164
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, p1, :cond_1

    .line 165
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    :cond_1
    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_2
    return-object v4

    .line 151
    .restart local v0       #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .restart local v3       #newScoreSum:I
    .restart local v5       #score:I
    :cond_3
    if-le v2, v8, :cond_4

    int-to-float v7, v5

    int-to-float v10, v3

    div-float/2addr v7, v10

    sget v10, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->IMPORTANT_CONTRIBUTION_FRACTION:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    .line 153
    sget-boolean v7, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 154
    const-string v7, "Dropping backend=%d and after."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    :cond_4
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    move v6, v3

    .line 160
    if-ne v0, p3, :cond_5

    move v7, v8

    :goto_2
    or-int/2addr v1, v7

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v7, v9

    .line 160
    goto :goto_2
.end method

.method public static score(Ljava/util/List;IJ)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "maxBackends"
    .parameter "nowMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, docLists:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 87
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 88
    .local v2, scores:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Ljava/lang/Integer;>;"
    invoke-static {p0, p2, p3, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->computeScoresAndReturnMostRecent(Ljava/util/List;JLjava/util/Map;)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v0

    .line 92
    .local v0, mostRecentDocList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    new-instance v3, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$2;

    invoke-direct {v3, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$2;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-static {v1, p1, v2, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->getImportantBackends(Ljava/util/List;ILjava/util/Map;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
