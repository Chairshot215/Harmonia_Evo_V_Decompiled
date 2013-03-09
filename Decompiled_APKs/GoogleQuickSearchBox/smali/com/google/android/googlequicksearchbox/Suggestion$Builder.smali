.class public Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
.super Ljava/lang/Object;
.source "Suggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

.field private mIcon1:Ljava/lang/String;

.field private mIcon2:Ljava/lang/String;

.field private mIntentAction:Ljava/lang/String;

.field private mIntentComponent:Landroid/content/ComponentName;

.field private mIntentData:Ljava/lang/String;

.field private mIntentExtraData:Ljava/lang/String;

.field private mInternalIntent:Landroid/content/Intent;

.field private mIsHistory:Z

.field private mIsShortcut:Z

.field private mLastAccessTime:J

.field private mLogType:Ljava/lang/String;

.field private mPrefetch:Z

.field private mShortcutId:Ljava/lang/String;

.field private mSource:Lcom/google/android/googlequicksearchbox/Source;

.field private mSpinnerWhileRefreshing:Z

.field private mSuggestionQuery:Ljava/lang/String;

.field private mText1:Ljava/lang/CharSequence;

.field private mText2:Ljava/lang/CharSequence;

.field private mText2Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 23

    .prologue
    .line 447
    new-instance v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText1:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2Url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mShortcutId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mLastAccessTime:J

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSpinnerWhileRefreshing:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentAction:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentExtraData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mInternalIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSuggestionQuery:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mLogType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsShortcut:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsHistory:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mPrefetch:Z

    move/from16 v22, v0

    invoke-direct/range {v1 .. v22}, Lcom/google/android/googlequicksearchbox/Suggestion;-><init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/googlequicksearchbox/SuggestionExtras;Z)V

    return-object v1
.end method

.method public extras(Lcom/google/android/googlequicksearchbox/SuggestionExtras;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "extras"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    .line 414
    return-object p0
.end method

.method public fromSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 1
    .parameter "orig"

    .prologue
    .line 423
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 424
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText1:Ljava/lang/CharSequence;

    .line 425
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2:Ljava/lang/CharSequence;

    .line 426
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2Url:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon1:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon2:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mShortcutId:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSpinnerWhileRefreshing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSpinnerWhileRefreshing:Z

    .line 431
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentAction:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentData:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentExtraData:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentComponent:Landroid/content/ComponentName;

    .line 435
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getInternalIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mInternalIntent:Landroid/content/Intent;

    .line 436
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSuggestionQuery:Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mLogType:Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsShortcut:Z

    .line 439
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsHistory:Z

    .line 440
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    .line 441
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->shouldPrefetch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mPrefetch:Z

    .line 443
    return-object p0
.end method

.method public icon1(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "icon1"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon1:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public icon2(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "icon2"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon2:Ljava/lang/String;

    .line 362
    return-object p0
.end method

.method public intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "intentAction"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentAction:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public intentComponent(Landroid/content/ComponentName;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "intentComponent"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentComponent:Landroid/content/ComponentName;

    .line 390
    return-object p0
.end method

.method public intentData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "intentData"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentData:Ljava/lang/String;

    .line 382
    return-object p0
.end method

.method public intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "intentExtraData"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentExtraData:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public internalIntent(Landroid/content/Intent;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "internalIntent"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mInternalIntent:Landroid/content/Intent;

    .line 394
    return-object p0
.end method

.method public isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "history"

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsHistory:Z

    .line 410
    return-object p0
.end method

.method public isShortcut(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "shortcut"

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsShortcut:Z

    .line 406
    return-object p0
.end method

.method public lastAccessTime(J)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "lastAccessTime"

    .prologue
    .line 369
    iput-wide p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mLastAccessTime:J

    .line 370
    return-object p0
.end method

.method public logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "logType"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mLogType:Ljava/lang/String;

    .line 402
    return-object p0
.end method

.method public shortcutId(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "shortcutId"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mShortcutId:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public shouldPrefetch(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "prefetch"

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mPrefetch:Z

    .line 418
    return-object p0
.end method

.method public source(Lcom/google/android/googlequicksearchbox/Source;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "source"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 342
    return-object p0
.end method

.method public spinnerWhileRefreshing(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "spinnerWhileRefreshing"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSpinnerWhileRefreshing:Z

    .line 374
    return-object p0
.end method

.method public suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "suggestionQuery"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSuggestionQuery:Ljava/lang/String;

    .line 398
    return-object p0
.end method

.method public text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "text1"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText1:Ljava/lang/CharSequence;

    .line 346
    return-object p0
.end method

.method public text2(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "text2"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2:Ljava/lang/CharSequence;

    .line 350
    return-object p0
.end method

.method public text2Url(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "text2Url"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2Url:Ljava/lang/String;

    .line 354
    return-object p0
.end method
