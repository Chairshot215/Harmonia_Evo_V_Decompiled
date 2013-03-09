.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FamousWordRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$CWordComparator;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$UCWordComparator;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

.field wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6293
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6342
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v2, "di"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "do"

    aput-object v4, v3, v6

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v2, "dint"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "don\'t"

    aput-object v4, v3, v6

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v2, "ee"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "we"

    aput-object v4, v3, v6

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v3, "foe"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "for"

    aput-object v5, v4, v6

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v3, "id"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "is"

    aput-object v5, v4, v6

    const-string v5, "of"

    aput-object v5, v4, v7

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v3, "mow"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "now"

    aput-object v5, v4, v6

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v3, "np"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "no"

    aput-object v5, v4, v6

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v3, "ti"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "to"

    aput-object v5, v4, v6

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v3, "un"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "in"

    aput-object v5, v4, v6

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v3, "vis"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "via"

    aput-object v5, v4, v6

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    const-string v3, "yo"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "to"

    aput-object v5, v4, v6

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    .line 6294
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->buildWordPairs()V

    .line 6298
    return-void
.end method

.method private getQWSuggestionInner(Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;)I
    .locals 12
    .parameter "mNativeInfo"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 6426
    iget v9, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrLdbID:I

    const/16 v10, 0x409

    if-ne v9, v10, :cond_0

    iget v9, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurr2ndLdbID:I

    if-eqz v9, :cond_2

    .line 6427
    :cond_0
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 6500
    :cond_1
    :goto_0
    return v6

    .line 6429
    :cond_2
    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->sFeature_LessWordAccuracyImprove:Z

    if-nez v9, :cond_3

    .line 6430
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .line 6432
    :cond_3
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandCount()I

    move-result v0

    .line 6435
    .local v0, candCount:I
    const/4 v9, 0x2

    if-ge v0, v9, :cond_4

    .line 6436
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .line 6437
    :cond_4
    iget v9, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    if-eqz v9, :cond_5

    .line 6438
    const-string v8, "XT9IME"

    const-string v9, "[FamousWordRule.getQWSuggestion] Illeagal! Because exact word is not at the first position, skip FamousWordRule."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6439
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .line 6442
    :cond_5
    iget v9, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v9}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetWordSrcType(I)I

    move-result v9

    const/16 v10, 0x81

    if-ne v9, v10, :cond_7

    const/4 v3, 0x1

    .line 6443
    .local v3, isAECase:Z
    :goto_1
    iget v9, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v9}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    .line 6452
    .local v1, exactWord:Ljava/lang/String;
    if-nez v3, :cond_9

    .line 6454
    const/4 v6, 0x1

    .line 6456
    .local v6, secondCandIdx:I
    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v7

    .line 6457
    .local v7, twinWord:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8

    .line 6458
    add-int/lit8 v6, v6, 0x1

    .line 6473
    .end local v7           #twinWord:Ljava/lang/String;
    :cond_6
    if-lt v6, v0, :cond_a

    .line 6474
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .end local v1           #exactWord:Ljava/lang/String;
    .end local v3           #isAECase:Z
    .end local v6           #secondCandIdx:I
    :cond_7
    move v3, v8

    .line 6442
    goto :goto_1

    .line 6459
    .restart local v1       #exactWord:Ljava/lang/String;
    .restart local v3       #isAECase:Z
    .restart local v6       #secondCandIdx:I
    .restart local v7       #twinWord:Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iget v10, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    if-eq v9, v10, :cond_6

    .line 6460
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .line 6464
    .end local v6           #secondCandIdx:I
    .end local v7           #twinWord:Ljava/lang/String;
    :cond_9
    const-string v9, "XT9IME"

    const-string v10, "[getQWSuggestion] AE case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6466
    const/4 v6, 0x2

    .line 6468
    .restart local v6       #secondCandIdx:I
    iget-object v9, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v9, v9, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    iget v10, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    add-int/lit8 v10, v10, 0x1

    if-eq v9, v10, :cond_6

    .line 6469
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .line 6481
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_b

    .line 6482
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto/16 :goto_0

    .line 6485
    :cond_b
    new-instance v2, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v2, p0, v9, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6486
    .local v2, exactWordInPair:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    new-instance v9, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$UCWordComparator;

    invoke-direct {v9, p0, v11}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$UCWordComparator;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Lcom/htc/android/htcime/XT9IME/XT9IME$1;)V

    invoke-static {v8, v2, v9}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 6487
    .local v4, pos:I
    if-gez v4, :cond_c

    .line 6488
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto/16 :goto_0

    .line 6491
    :cond_c
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->getPermission()Z

    move-result v8

    if-nez v8, :cond_d

    .line 6492
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto/16 :goto_0

    .line 6495
    :cond_d
    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v5

    .line 6497
    .local v5, secondCand:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->commonWords:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$CWordComparator;

    invoke-direct {v10, p0, v11}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$CWordComparator;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Lcom/htc/android/htcime/XT9IME/XT9IME$1;)V

    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v8

    if-gez v8, :cond_1

    .line 6498
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v6, v8, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto/16 :goto_0
.end method


# virtual methods
.method buildWordPairs()V
    .locals 0

    .prologue
    .line 6359
    return-void
.end method

.method dump_wordPairs()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 6363
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 6364
    .local v2, line:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 6366
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->unCommonWord:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->commonWords:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 6367
    const/4 v1, 0x1

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->commonWords:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 6368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->wordPairs:[Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->commonWords:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6367
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6369
    :cond_0
    const-string v3, "Eric_debug"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6371
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method getQWSuggestion(Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;)I
    .locals 9
    .parameter "mNativeInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 6375
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->getQWSuggestionInner(Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;)I

    move-result v2

    .line 6378
    .local v2, suggIDX:I
    iget v4, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    if-eq v2, v4, :cond_0

    .line 6380
    iget v4, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    .line 6381
    .local v1, exactWord:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 6383
    .local v0, candidate:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsSCWord(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6385
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v4, v0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isCandidateNice_SC(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6387
    iget v2, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    .line 6388
    const-string v4, "XT9IME"

    const-string v5, "[FamousWordRule.getQWSuggestion()] 1st cand is a bad spelling correction, suggest the exact word (pos=%d) instead"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6417
    .end local v0           #candidate:Ljava/lang/String;
    .end local v1           #exactWord:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 6391
    .restart local v0       #candidate:Ljava/lang/String;
    .restart local v1       #exactWord:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v4, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isAutoCompleted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6393
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #calls: Lcom/htc/android/htcime/XT9IME/XT9IME;->apply_9_Char_Rule(I)I
    invoke-static {v4, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$400(Lcom/htc/android/htcime/XT9IME/XT9IME;I)I

    move-result v3

    .line 6394
    .local v3, tmpIdx:I
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #getter for: Lcom/htc/android/htcime/XT9IME/XT9IME;->is9CharRule:Z
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$500(Lcom/htc/android/htcime/XT9IME/XT9IME;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6396
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    #setter for: Lcom/htc/android/htcime/XT9IME/XT9IME;->is9CharRule:Z
    invoke-static {v4, v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$502(Lcom/htc/android/htcime/XT9IME/XT9IME;Z)Z

    .line 6397
    move v2, v3

    .line 6398
    const-string v4, "XT9IME"

    const-string v5, "[FamousWordRule.getQWSuggestion()] 1st cand is word-completed and 9-char rule is applied, suggest pos=%d ."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6401
    :cond_2
    iget v2, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    .line 6402
    const-string v4, "XT9IME"

    const-string v5, "[FamousWordRule.getQWSuggestion()] 1st cand is word-completed, suggest the exact word (pos=%d) instead."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6405
    .end local v3           #tmpIdx:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {v1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6411
    iget v2, p1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    goto :goto_0
.end method
