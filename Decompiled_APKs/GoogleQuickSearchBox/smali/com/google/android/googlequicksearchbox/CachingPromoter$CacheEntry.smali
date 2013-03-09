.class final Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;
.super Landroid/database/DataSetObserver;
.source "CachingPromoter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/CachingPromoter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CacheEntry"
.end annotation


# instance fields
.field mHaveFinalResults:Z

.field mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field final mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter
    .parameter "suggestions"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 131
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p2, p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 134
    :cond_0
    return-void
.end method

.method private haveFinalResults()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    sget-object v2, Lcom/google/android/googlequicksearchbox/CachingPromoter$1;->$SwitchMap$com$google$android$googlequicksearchbox$CachingPromoter$CacheType:[I

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    #getter for: Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCacheType:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;
    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->access$200(Lcom/google/android/googlequicksearchbox/CachingPromoter;)Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->areWebResultsDone()Z

    move-result v0

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mayHaveShortcuts()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mayHaveShortcuts()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mayHaveShortcuts()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areShortcutsDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v0

    .line 189
    .local v0, list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 191
    .end local v0           #list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :cond_0
    :goto_0
    return v1

    .line 189
    .restart local v0       #list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getPromoted(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 3
    .parameter "currentlyDisplayed"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    #calls: Lcom/google/android/googlequicksearchbox/CachingPromoter;->buildPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-static {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->access$000(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 139
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    #calls: Lcom/google/android/googlequicksearchbox/CachingPromoter;->refreshShortcuts(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->access$100(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->haveFinalResults()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mHaveFinalResults:Z

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mHaveFinalResults:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 151
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mHaveFinalResults:Z

    .line 157
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->notifyDataSetChanged()V

    .line 160
    :cond_0
    return-void
.end method
