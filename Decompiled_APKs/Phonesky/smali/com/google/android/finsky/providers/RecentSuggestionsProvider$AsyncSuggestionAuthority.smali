.class abstract Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AsyncSuggestionAuthority"
.end annotation


# instance fields
.field protected final COLUMNS:[Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mQuery:Ljava/lang/String;

.field private final mResults:Landroid/database/MatrixCursor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "query"
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mQuery:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method


# virtual methods
.method protected addRow(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "icon"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 143
    const-string v5, "android.intent.action.SEARCH"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->addRow(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method protected addRow(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "icon"
    .parameter "name"
    .parameter "description"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 149
    .local v0, row:[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 150
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 151
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 152
    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 153
    const/4 v1, 0x4

    aput-object p3, v0, v1

    .line 154
    const/4 v1, 0x5

    aput-object p5, v0, v1

    .line 155
    const/4 v1, 0x6

    aput-object p6, v0, v1

    .line 156
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public gatherSuggestions()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 119
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 121
    .local v1, sem:Ljava/util/concurrent/Semaphore;
    new-instance v2, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    .line 134
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    :goto_0
    return-object v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    goto :goto_0
.end method

.method protected getCarrierCountry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 170
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 176
    .end local v0           #country:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
.end method
