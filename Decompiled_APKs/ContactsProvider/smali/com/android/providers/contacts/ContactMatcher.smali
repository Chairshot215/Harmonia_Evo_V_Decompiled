.class public Lcom/android/providers/contacts/ContactMatcher;
.super Ljava/lang/Object;
.source "ContactMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    }
.end annotation


# static fields
.field public static final APPROXIMATE_MATCH_THRESHOLD:F = 0.82f

.field public static final APPROXIMATE_MATCH_THRESHOLD_FOR_EMAIL:F = 0.95f

.field private static final DEBUG:Z = false

.field private static final EMAIL_MATCH_SCORE:I = 0x47

.field public static final MATCHING_ALGORITHM_APPROXIMATE:I = 0x2

.field public static final MATCHING_ALGORITHM_CONSERVATIVE:I = 0x1

.field public static final MATCHING_ALGORITHM_EXACT:I = 0x0

.field private static final MAX_MATCHED_NAME_LENGTH:I = 0x1e

.field public static final MAX_SCORE:I = 0x64

.field public static final MULTIPLE_MATCHES:J = -0x2L

.field private static final NICKNAME_MATCH_SCORE:I = 0x47

.field private static final NO_DATA_SCORE:I = -0x1

.field private static final PHONE_MATCH_SCORE:I = 0x47

.field private static final SCORE_SCALE:I = 0x3e8

.field public static final SCORE_THRESHOLD_PRIMARY:I = 0x46

.field public static final SCORE_THRESHOLD_SECONDARY:I = 0x32

.field public static final SCORE_THRESHOLD_SUGGEST:I = 0x3c

.field private static sMaxScore:[I

.field private static sMinScore:[I


# instance fields
.field private final mNameDistanceApproximate:Lcom/android/providers/contacts/NameDistance;

.field private final mNameDistanceConservative:Lcom/android/providers/contacts/NameDistance;

.field private mScoreCount:I

.field private final mScoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation
.end field

.field private final mScores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x5a

    const/16 v1, 0x51

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-array v0, v1, [I

    sput-object v0, Lcom/android/providers/contacts/ContactMatcher;->sMinScore:[I

    .line 96
    new-array v0, v1, [I

    sput-object v0, Lcom/android/providers/contacts/ContactMatcher;->sMaxScore:[I

    .line 108
    const/16 v0, 0x63

    const/16 v1, 0x63

    invoke-static {v2, v2, v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 110
    invoke-static {v3, v3, v5, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 112
    const/16 v0, 0x32

    const/16 v1, 0x50

    invoke-static {v4, v4, v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScores:Ljava/util/HashMap;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    .line 320
    new-instance v0, Lcom/android/providers/contacts/NameDistance;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameDistance;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/NameDistance;

    .line 321
    new-instance v0, Lcom/android/providers/contacts/NameDistance;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/NameDistance;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/NameDistance;

    return-void
.end method

.method private getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    .locals 3
    .parameter "contactId"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 325
    .local v0, matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    if-nez v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-le v1, v2, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 328
    .restart local v0       #matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->reset(J)V

    .line 333
    :goto_0
    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    .line 334
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    return-object v0

    .line 330
    :cond_1
    new-instance v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .end local v0           #matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-direct {v0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;-><init>(J)V

    .line 331
    .restart local v0       #matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getMaxScore(II)I
    .locals 2
    .parameter "candidateNameType"
    .parameter "nameType"

    .prologue
    .line 161
    mul-int/lit8 v1, p1, 0x9

    add-int v0, v1, p0

    .line 162
    .local v0, index:I
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->sMaxScore:[I

    aget v1, v1, v0

    return v1
.end method

.method private static getMinScore(II)I
    .locals 2
    .parameter "candidateNameType"
    .parameter "nameType"

    .prologue
    .line 152
    mul-int/lit8 v1, p1, 0x9

    add-int v0, v1, p0

    .line 153
    .local v0, index:I
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->sMinScore:[I

    aget v1, v1, v0

    return v1
.end method

.method private static setScoreRange(IIII)V
    .locals 2
    .parameter "candidateNameType"
    .parameter "nameType"
    .parameter "scoreFrom"
    .parameter "scoreTo"

    .prologue
    .line 142
    mul-int/lit8 v1, p1, 0x9

    add-int v0, v1, p0

    .line 143
    .local v0, index:I
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->sMinScore:[I

    aput p2, v1, v0

    .line 144
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->sMaxScore:[I

    aput p3, v1, v0

    .line 145
    return-void
.end method

.method private updatePrimaryScore(JJILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "contactId"
    .parameter "raw_id"
    .parameter "score"
    .parameter "dataFrom"
    .parameter "dataTo"

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    move v1, p5

    move-wide v2, p3

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->updatePrimaryScore(IJLjava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method private updateSecondaryScore(JJILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "contactId"
    .parameter "raw_id"
    .parameter "score"
    .parameter "dataFrom"
    .parameter "dataTo"

    .prologue
    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    move v1, p5

    move-wide v2, p3

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->updateSecondaryScore(IJLjava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    .line 431
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    return-void
.end method

.method public keepIn(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->keepIn()V

    .line 421
    return-void
.end method

.method public keepOut(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 424
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->keepOut()V

    .line 425
    return-void
.end method

.method public matchIdentity(JJ)V
    .locals 8
    .parameter "contactId"
    .parameter "raw_id"

    .prologue
    .line 345
    const/16 v5, 0x64

    const-string v6, "indentity"

    const-string v7, "indentity"

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->updatePrimaryScore(JJILjava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public matchName(JJILjava/lang/String;ILjava/lang/String;I)V
    .locals 24
    .parameter "contactId"
    .parameter "raw_id"
    .parameter "candidateNameType"
    .parameter "candidateName"
    .parameter "nameType"
    .parameter "name"
    .parameter "algorithm"

    .prologue
    .line 357
    move/from16 v0, p5

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->getMaxScore(II)I

    move-result v8

    .line 358
    .local v8, maxScore:I
    if-nez v8, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    move-object/from16 v0, p6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p8

    move-object/from16 v10, p6

    .line 363
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/contacts/ContactMatcher;->updatePrimaryScore(JJILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    if-eqz p9, :cond_0

    .line 371
    move/from16 v0, p5

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->getMinScore(II)I

    move-result v21

    .line 372
    .local v21, minScore:I
    move/from16 v0, v21

    if-eq v0, v8, :cond_0

    .line 376
    invoke-static/range {p6 .. p6}, Lcom/android/providers/contacts/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v17

    .line 377
    .local v17, decodedCandidateName:[B
    invoke-static/range {p8 .. p8}, Lcom/android/providers/contacts/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v18

    .line 379
    .local v18, decodedName:[B
    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/NameDistance;

    move-object/from16 v22, v0

    .line 383
    .local v22, nameDistance:Lcom/android/providers/contacts/NameDistance;
    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/NameDistance;->getDistance([B[B)F

    move-result v19

    .line 384
    .local v19, distance:F
    const/4 v3, 0x4

    move/from16 v0, p5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    move/from16 v0, p7

    if-ne v0, v3, :cond_5

    :cond_3
    const/16 v20, 0x1

    .line 386
    .local v20, emailBased:Z
    :goto_2
    if-eqz v20, :cond_6

    const v23, 0x3f733333

    .line 389
    .local v23, threshold:F
    :goto_3
    cmpl-float v3, v19, v23

    if-lez v3, :cond_7

    .line 390
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v4, v8, v21

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    sub-float v5, v5, v19

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v14, v3

    .local v14, score:I
    :goto_4
    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object/from16 v15, p8

    move-object/from16 v16, p6

    .line 395
    invoke-direct/range {v9 .. v16}, Lcom/android/providers/contacts/ContactMatcher;->updatePrimaryScore(JJILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    .end local v14           #score:I
    .end local v19           #distance:F
    .end local v20           #emailBased:Z
    .end local v22           #nameDistance:Lcom/android/providers/contacts/NameDistance;
    .end local v23           #threshold:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/NameDistance;

    move-object/from16 v22, v0

    goto :goto_1

    .line 384
    .restart local v19       #distance:F
    .restart local v22       #nameDistance:Lcom/android/providers/contacts/NameDistance;
    :cond_5
    const/16 v20, 0x0

    goto :goto_2

    .line 386
    .restart local v20       #emailBased:Z
    :cond_6
    const v23, 0x3f51eb85

    goto :goto_3

    .line 392
    .restart local v23       #threshold:F
    :cond_7
    const/4 v14, 0x0

    .restart local v14       #score:I
    goto :goto_4
.end method

.method public needSplit()Z
    .locals 3

    .prologue
    .line 580
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v0, v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 582
    .local v1, score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z
    invoke-static {v1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    const/4 v2, 0x1

    .line 586
    .end local v1           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :goto_1
    return v2

    .line 580
    .restart local v1       #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    .end local v1           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public pickBestMatch(IZ)J
    .locals 9
    .parameter "threshold"
    .parameter "allowMultipleMatches"

    .prologue
    .line 470
    const-wide/16 v0, -0x1

    .line 471
    .local v0, contactId:J
    const/4 v4, 0x0

    .line 472
    .local v4, maxScore:I
    const/4 v3, -0x1

    .line 473
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v2, v7, :cond_6

    .line 474
    iget-object v7, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 475
    .local v6, score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 473
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_1
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepIn:Z
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$300(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 481
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v0

    .line 508
    .end local v0           #contactId:J
    .end local v6           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_2
    :goto_2
    return-wide v0

    .line 484
    .restart local v0       #contactId:J
    .restart local v6       #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_3
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$400(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v5

    .line 485
    .local v5, s:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    .line 486
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$100(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v5

    .line 489
    :cond_4
    if-lt v5, p1, :cond_0

    .line 490
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_5

    if-nez p2, :cond_5

    .line 491
    const-wide/16 v0, -0x2

    goto :goto_2

    .line 493
    :cond_5
    if-le v5, v4, :cond_0

    .line 494
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v0

    .line 495
    move v4, v5

    .line 496
    move v3, v2

    goto :goto_1

    .line 502
    .end local v5           #s:I
    .end local v6           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_6
    if-ltz v3, :cond_2

    goto :goto_2
.end method

.method public pickBestMatchAndIgnoreMy(IZ)J
    .locals 11
    .parameter "threshold"
    .parameter "allowMultipleMatches"

    .prologue
    .line 514
    const-wide/16 v0, -0x1

    .line 515
    .local v0, contactId:J
    const/4 v4, 0x0

    .line 516
    .local v4, maxScore:I
    const/4 v3, -0x1

    .line 517
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v2, v7, :cond_6

    .line 518
    iget-object v7, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 519
    .local v6, score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 517
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    :cond_1
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepIn:Z
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$300(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 525
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v0

    .line 554
    .end local v0           #contactId:J
    .end local v6           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_2
    :goto_2
    return-wide v0

    .line 528
    .restart local v0       #contactId:J
    .restart local v6       #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_3
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$400(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v5

    .line 529
    .local v5, s:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    .line 530
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$100(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v5

    .line 533
    :cond_4
    if-lt v5, p1, :cond_0

    .line 534
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v7

    invoke-static {}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->getMyContactCardId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 537
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_5

    if-nez p2, :cond_5

    .line 538
    const-wide/16 v0, -0x2

    goto :goto_2

    .line 540
    :cond_5
    if-le v5, v4, :cond_0

    .line 541
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v6}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v0

    .line 542
    move v4, v5

    .line 543
    move v3, v2

    goto :goto_1

    .line 549
    .end local v5           #s:I
    .end local v6           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_6
    if-ltz v3, :cond_2

    goto :goto_2
.end method

.method public pickBestMatches()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v1, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v0, v3, :cond_2

    .line 616
    iget-object v3, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 617
    .local v2, score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z
    invoke-static {v2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_1
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepIn:Z
    invoke-static {v2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$300(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 623
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 627
    .end local v2           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_2
    return-object v1
.end method

.method public pickBestMatches(I)Ljava/util/List;
    .locals 8
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 594
    mul-int/lit16 v4, p1, 0x3e8

    .line 595
    .local v4, scaledThreshold:I
    iget-object v5, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 596
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v1, v5, :cond_0

    .line 599
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 600
    .local v2, matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getScore()I

    move-result v5

    if-lt v5, v4, :cond_0

    .line 601
    add-int/lit8 v0, v0, 0x1

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v2           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_0
    invoke-interface {v3, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public pickMyContactImportId(I)Z
    .locals 8
    .parameter "threshold"

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, isMyContactMatched:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v0, v4, :cond_1

    .line 560
    iget-object v4, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 562
    .local v3, score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$400(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v2

    .line 563
    .local v2, s:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 564
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$100(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v2

    .line 567
    :cond_0
    if-lt v2, p1, :cond_2

    .line 568
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v4

    invoke-static {}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->getMyContactCardId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 569
    const/4 v1, 0x1

    .line 574
    .end local v2           #s:I
    .end local v3           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_1
    return v1

    .line 559
    .restart local v2       #s:I
    .restart local v3       #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public prepareSecondaryMatchCandidates(I)Ljava/util/List;
    .locals 6
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 445
    .local v0, contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v1, v4, :cond_3

    .line 446
    iget-object v4, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 447
    .local v3, score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_1
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$100(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v2

    .line 452
    .local v2, s:I
    if-lt v2, p1, :cond_0

    .line 453
    if-nez v0, :cond_2

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .restart local v0       #contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 462
    .end local v2           #s:I
    .end local v3           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateScoreWithEmailMatch(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "contactId"
    .parameter "raw_id"
    .parameter "dataFrom"
    .parameter "dataTo"

    .prologue
    .line 403
    const/16 v5, 0x47

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->updateSecondaryScore(JJILjava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public updateScoreWithNicknameMatch(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "contactId"
    .parameter "raw_id"
    .parameter "dataFrom"
    .parameter "dataTo"

    .prologue
    .line 407
    const/16 v5, 0x47

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->updateSecondaryScore(JJILjava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public updateScoreWithPhoneNumberMatch(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "contactId"
    .parameter "raw_id"
    .parameter "dataFrom"
    .parameter "dataTo"

    .prologue
    .line 399
    const/16 v5, 0x47

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->updateSecondaryScore(JJILjava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method
