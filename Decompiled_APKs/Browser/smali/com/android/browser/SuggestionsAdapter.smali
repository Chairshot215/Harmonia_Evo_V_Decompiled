.class public Lcom/android/browser/SuggestionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SuggestionsAdapter$SuggestCursor;,
        Lcom/android/browser/SuggestionsAdapter$CombinedCursor;,
        Lcom/android/browser/SuggestionsAdapter$CursorSource;,
        Lcom/android/browser/SuggestionsAdapter$SuggestItem;,
        Lcom/android/browser/SuggestionsAdapter$SuggestionResults;,
        Lcom/android/browser/SuggestionsAdapter$SuggestFilter;,
        Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;,
        Lcom/android/browser/SuggestionsAdapter$CompletionListener;
    }
.end annotation


# static fields
.field private static final COMBINED_PROJECTION:[Ljava/lang/String; = null

.field private static final COMBINED_SELECTION:Ljava/lang/String; = "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?)"

.field public static final TYPE_BOOKMARK:I = 0x0

.field public static final TYPE_HISTORY:I = 0x1

.field public static final TYPE_SEARCH:I = 0x3

.field public static final TYPE_SUGGEST:I = 0x4

.field public static final TYPE_SUGGEST_URL:I = 0x2

.field public static final TYPE_VOICE_SEARCH:I = 0x5


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFilter:Landroid/widget/Filter;

.field mFilterResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/SuggestionsAdapter$SuggestItem;",
            ">;"
        }
    .end annotation
.end field

.field mIncognitoMode:Z

.field mLandscapeMode:Z

.field final mLinesLandscape:I

.field final mLinesPortrait:I

.field final mListener:Lcom/android/browser/SuggestionsAdapter$CompletionListener;

.field mMixedResults:Lcom/android/browser/SuggestionsAdapter$SuggestionResults;

.field final mResultsLock:Ljava/lang/Object;

.field mSettings:Lcom/android/browser/BrowserSettings;

.field mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/SuggestionsAdapter$CursorSource;",
            ">;"
        }
    .end annotation
.end field

.field mSuggestResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/SuggestionsAdapter$SuggestItem;",
            ">;"
        }
    .end annotation
.end field

.field mVoiceResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/SuggestionsAdapter;->COMBINED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/SuggestionsAdapter$CompletionListener;)V
    .locals 2
    .parameter "ctx"
    .parameter "listener"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mResultsLock:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcom/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 92
    iput-object p2, p0, Lcom/android/browser/SuggestionsAdapter;->mListener:Lcom/android/browser/SuggestionsAdapter$CompletionListener;

    .line 93
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/SuggestionsAdapter;->mLinesPortrait:I

    .line 95
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/SuggestionsAdapter;->mLinesLandscape:I

    .line 98
    new-instance v0, Lcom/android/browser/SuggestionsAdapter$SuggestFilter;

    invoke-direct {v0, p0}, Lcom/android/browser/SuggestionsAdapter$SuggestFilter;-><init>(Lcom/android/browser/SuggestionsAdapter;)V

    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mFilter:Landroid/widget/Filter;

    .line 99
    new-instance v0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;

    invoke-direct {v0, p0}, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;-><init>(Lcom/android/browser/SuggestionsAdapter;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/SuggestionsAdapter;->addSource(Lcom/android/browser/SuggestionsAdapter$CursorSource;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/SuggestionsAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/browser/SuggestionsAdapter;->getMaxLines()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/browser/SuggestionsAdapter;->COMBINED_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Lcom/android/browser/SuggestionsAdapter$SuggestItem;)V
    .locals 10
    .parameter "view"
    .parameter "item"

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 178
    .local v4, tv1:Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 179
    .local v5, tv2:Landroid/widget/TextView;
    const v8, 0x7f0d0046

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 180
    .local v1, ic1:Landroid/widget/ImageView;
    const v8, 0x7f0d006a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, ic2:Landroid/view/View;
    const v8, 0x7f0d001e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, div:Landroid/view/View;
    iget-object v8, p2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v8, p2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 184
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 191
    :goto_0
    const/4 v3, -0x1

    .line 192
    .local v3, id:I
    iget v8, p2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    packed-switch v8, :pswitch_data_0

    .line 208
    const/4 v3, -0x1

    .line 210
    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 211
    iget-object v8, p0, Lcom/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_0
    const/4 v8, 0x4

    iget v9, p2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    if-eq v8, v9, :cond_1

    const/4 v8, 0x3

    iget v9, p2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    if-eq v8, v9, :cond_1

    const/4 v8, 0x5

    iget v9, p2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    if-ne v8, v9, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v6, 0x7f0d0069

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void

    .line 187
    .end local v3           #id:I
    :cond_3
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v8, p2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 196
    .restart local v3       #id:I
    :pswitch_0
    const v3, 0x7f020040

    .line 197
    goto :goto_1

    .line 199
    :pswitch_1
    const v3, 0x7f02003d

    .line 200
    goto :goto_1

    .line 202
    :pswitch_2
    const v3, 0x7f02003f

    .line 203
    goto :goto_1

    .line 205
    :pswitch_3
    const v3, 0x7f02003e

    .line 206
    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMaxLines()I
    .locals 5

    .prologue
    .line 346
    iget-boolean v1, p0, Lcom/android/browser/SuggestionsAdapter;->mLandscapeMode:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/browser/SuggestionsAdapter;->mLinesLandscape:I

    .line 347
    .local v0, maxLines:I
    :goto_0
    int-to-double v1, v0

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 348
    return v0

    .line 346
    .end local v0           #maxLines:I
    :cond_0
    iget v0, p0, Lcom/android/browser/SuggestionsAdapter;->mLinesPortrait:I

    goto :goto_0
.end method

.method static getSuggestionTitle(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSuggestionUrl(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;
    .locals 2
    .parameter "item"

    .prologue
    .line 589
    invoke-static {p0}, Lcom/android/browser/SuggestionsAdapter;->getSuggestionTitle(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    .end local v0           #title:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #title:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method private useInstant()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useInstantSearch()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addSource(Lcom/android/browser/SuggestionsAdapter$CursorSource;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method buildSuggestionResults()Lcom/android/browser/SuggestionsAdapter$SuggestionResults;
    .locals 7

    .prologue
    .line 247
    new-instance v3, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;

    invoke-direct {v3, p0}, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;-><init>(Lcom/android/browser/SuggestionsAdapter;)V

    .line 249
    .local v3, mixed:Lcom/android/browser/SuggestionsAdapter$SuggestionResults;
    iget-object v6, p0, Lcom/android/browser/SuggestionsAdapter;->mResultsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mFilterResults:Ljava/util/List;

    .line 251
    .local v0, filter:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SuggestionsAdapter$SuggestItem;>;"
    iget-object v4, p0, Lcom/android/browser/SuggestionsAdapter;->mSuggestResults:Ljava/util/List;

    .line 252
    .local v4, suggest:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SuggestionsAdapter$SuggestItem;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    .line 255
    .local v2, item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    invoke-virtual {v3, v2}, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->addResult(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)V

    goto :goto_0

    .line 252
    .end local v0           #filter:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SuggestionsAdapter$SuggestItem;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    .end local v4           #suggest:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SuggestionsAdapter$SuggestItem;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 258
    .restart local v0       #filter:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SuggestionsAdapter$SuggestItem;>;"
    .restart local v4       #suggest:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SuggestionsAdapter$SuggestItem;>;"
    :cond_0
    if-eqz v4, :cond_1

    .line 259
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    .line 260
    .restart local v2       #item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    invoke-virtual {v3, v2}, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->addResult(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)V

    goto :goto_1

    .line 263
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    :cond_1
    return-object v3
.end method

.method public clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mFilterResults:Ljava/util/List;

    .line 572
    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mSuggestResults:Ljava/util/List;

    .line 573
    invoke-virtual {p0}, Lcom/android/browser/SuggestionsAdapter;->notifyDataSetInvalidated()V

    .line 574
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mVoiceResults:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mVoiceResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mMixedResults:Lcom/android/browser/SuggestionsAdapter$SuggestionResults;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mMixedResults:Lcom/android/browser/SuggestionsAdapter$SuggestionResults;

    invoke-virtual {v0}, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->getLineCount()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter;->mVoiceResults:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter;->mVoiceResults:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x5

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/browser/SuggestionsAdapter$SuggestItem;-><init>(Lcom/android/browser/SuggestionsAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    .local v0, item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->extra:Ljava/lang/String;

    .line 155
    .end local v0           #item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter;->mMixedResults:Lcom/android/browser/SuggestionsAdapter$SuggestionResults;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter;->mMixedResults:Lcom/android/browser/SuggestionsAdapter$SuggestionResults;

    iget-object v1, v1, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/browser/SuggestionsAdapter;->getItem(I)Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 166
    .local v0, inflater:Landroid/view/LayoutInflater;
    move-object v1, p2

    .line 167
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 168
    const v2, 0x7f04002d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/SuggestionsAdapter;->getItem(I)Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/browser/SuggestionsAdapter;->bindView(Landroid/view/View;Lcom/android/browser/SuggestionsAdapter$SuggestItem;)V

    .line 171
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    .line 123
    .local v0, item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    const v1, 0x7f0d006a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter;->mListener:Lcom/android/browser/SuggestionsAdapter$CompletionListener;

    invoke-static {v0}, Lcom/android/browser/SuggestionsAdapter;->getSuggestionUrl(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/browser/SuggestionsAdapter$CompletionListener;->onSearch(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter;->mListener:Lcom/android/browser/SuggestionsAdapter$CompletionListener;

    invoke-static {v0}, Lcom/android/browser/SuggestionsAdapter;->getSuggestionUrl(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    iget-object v4, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->extra:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/browser/SuggestionsAdapter$CompletionListener;->onSelect(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setIncognitoMode(Z)V
    .locals 0
    .parameter "incognito"

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/android/browser/SuggestionsAdapter;->mIncognitoMode:Z

    .line 578
    invoke-virtual {p0}, Lcom/android/browser/SuggestionsAdapter;->clearCache()V

    .line 579
    return-void
.end method

.method public setLandscapeMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/browser/SuggestionsAdapter;->mLandscapeMode:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/browser/SuggestionsAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method setVoiceResults(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, voiceResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/browser/SuggestionsAdapter;->mVoiceResults:Ljava/util/List;

    .line 104
    invoke-virtual {p0}, Lcom/android/browser/SuggestionsAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method
