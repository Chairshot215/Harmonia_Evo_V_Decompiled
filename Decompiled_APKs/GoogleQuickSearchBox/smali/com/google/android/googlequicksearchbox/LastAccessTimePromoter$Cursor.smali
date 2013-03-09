.class Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;
.super Ljava/lang/Object;
.source "LastAccessTimePromoter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private mInsertedSuggestions:I

.field private mNext:Lcom/google/android/googlequicksearchbox/Suggestion;

.field private mNextLastAccessTime:J

.field private mNextShortcut:Lcom/google/android/googlequicksearchbox/Suggestion;

.field private mNextSourceSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

.field private final mShortcuts:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private mShortcutsPos:I

.field private final mSource:Lcom/google/android/googlequicksearchbox/Source;

.field private final mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private mSuggestionsPos:I

.field private final mWeight:I

.field private final mZeroQuery:Z

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;Z)V
    .locals 1
    .parameter
    .parameter "source"
    .parameter "suggestions"
    .parameter "shortcuts"
    .parameter "zeroQuery"

    .prologue
    const/4 v0, 0x0

    .line 265
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestionsPos:I

    .line 246
    iput v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcutsPos:I

    .line 266
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 267
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 268
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcuts:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 269
    iput-boolean p5, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mZeroQuery:Z

    .line 270
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-virtual {p1, v0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getPromotionWeight(Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mWeight:I

    .line 273
    return-void
.end method

.method private prepareShortcut()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextShortcut:Lcom/google/android/googlequicksearchbox/Suggestion;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcuts:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcutsPos:I

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcuts:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 301
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcuts:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iget v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcutsPos:I

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    .line 302
    .local v0, shortcut:Lcom/google/android/googlequicksearchbox/Suggestion;
    iget v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcutsPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcutsPos:I

    .line 303
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    if-ne v1, v2, :cond_0

    .line 304
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextShortcut:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 311
    .end local v0           #shortcut:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    return-void
.end method

.method private prepareSourceSuggestion()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextSourceSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_0

    .line 288
    iget v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestionsPos:I

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestionsPos:I

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextSourceSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 290
    iget v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestionsPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestionsPos:I

    .line 295
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;)I
    .locals 12
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    const-wide/16 v10, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->getWeightUsage()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->getWeightUsage()I

    move-result v7

    sub-int v3, v6, v7

    .line 354
    .local v3, weightUsageDiff:I
    iget-wide v6, p1, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextLastAccessTime:J

    iget-wide v8, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextLastAccessTime:J

    sub-long v0, v6, v8

    .line 356
    .local v0, accessTimeDiff:J
    if-eqz v3, :cond_2

    iget-boolean v6, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mZeroQuery:Z

    if-eqz v6, :cond_0

    cmp-long v6, v0, v10

    if-nez v6, :cond_2

    :cond_0
    move v4, v3

    .line 370
    :cond_1
    :goto_0
    return v4

    .line 360
    :cond_2
    cmp-long v6, v0, v10

    if-eqz v6, :cond_3

    .line 362
    cmp-long v6, v0, v10

    if-gtz v6, :cond_1

    move v4, v5

    goto :goto_0

    .line 365
    :cond_3
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    iget-object v7, p1, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    #calls: Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getSourceScore(Lcom/google/android/googlequicksearchbox/Source;)I
    invoke-static {v6, v7}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->access$500(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    #calls: Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getSourceScore(Lcom/google/android/googlequicksearchbox/Source;)I
    invoke-static {v7, v8}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->access$500(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v7

    sub-int v2, v6, v7

    .line 366
    .local v2, scoreDiff:I
    if-eqz v2, :cond_4

    .line 367
    if-gtz v2, :cond_1

    move v4, v5

    goto :goto_0

    .line 370
    :cond_4
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->compareTo(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;)I

    move-result v0

    return v0
.end method

.method getDebugInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " R"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestionsPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " S"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcutsPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcuts:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mShortcuts:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mInsertedSuggestions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, res:Lcom/google/android/googlequicksearchbox/Suggestion;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNext:Lcom/google/android/googlequicksearchbox/Suggestion;

    if-eqz v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNext:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNext:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 280
    iget v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mInsertedSuggestions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mInsertedSuggestions:I

    .line 282
    :cond_0
    return-object v0
.end method

.method getWeightUsage()I
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mInsertedSuggestions:I

    iget v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mWeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method prepareNextSuggestion()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 320
    iget-boolean v5, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mClosed:Z

    if-nez v5, :cond_3

    .line 321
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->prepareSourceSuggestion()V

    .line 322
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->prepareShortcut()V

    .line 324
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextSourceSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    #calls: Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getLastAccessTime(Lcom/google/android/googlequicksearchbox/Suggestion;)J
    invoke-static {v5, v6}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->access$400(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Lcom/google/android/googlequicksearchbox/Suggestion;)J

    move-result-wide v2

    .line 325
    .local v2, suggestionLat:J
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextShortcut:Lcom/google/android/googlequicksearchbox/Suggestion;

    #calls: Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getLastAccessTime(Lcom/google/android/googlequicksearchbox/Suggestion;)J
    invoke-static {v5, v6}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->access$400(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Lcom/google/android/googlequicksearchbox/Suggestion;)J

    move-result-wide v0

    .line 326
    .local v0, shortcutLat:J
    cmp-long v5, v2, v8

    if-gez v5, :cond_0

    cmp-long v5, v0, v8

    if-ltz v5, :cond_2

    .line 329
    :cond_0
    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    .line 330
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextSourceSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    iput-object v5, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNext:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 331
    iput-object v7, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextSourceSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 332
    iput-wide v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextLastAccessTime:J

    .line 344
    .end local v0           #shortcutLat:J
    .end local v2           #suggestionLat:J
    :goto_0
    return v4

    .line 334
    .restart local v0       #shortcutLat:J
    .restart local v2       #suggestionLat:J
    :cond_1
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextShortcut:Lcom/google/android/googlequicksearchbox/Suggestion;

    iput-object v5, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNext:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 335
    iput-object v7, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextShortcut:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 336
    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mNextLastAccessTime:J

    goto :goto_0

    .line 341
    :cond_2
    iput-boolean v4, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->mClosed:Z

    .line 344
    .end local v0           #shortcutLat:J
    .end local v2           #suggestionLat:J
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
