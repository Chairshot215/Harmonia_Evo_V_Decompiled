.class public Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;
    }
.end annotation


# static fields
.field private static mIsGoogleTV:Ljava/lang/Boolean;

.field private static sCurrentBackendId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->mIsGoogleTV:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 486
    const-string v0, "com.google.android.finsky.RecentSuggestionsProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 487
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->mIsGoogleTV:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->mIsGoogleTV:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static setCurrentBackendId(I)V
    .locals 0
    .parameter "backendId"

    .prologue
    .line 61
    sput p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    .line 62
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v6, 0x0

    .line 500
    if-eqz p4, :cond_0

    array-length v3, p4

    if-nez v3, :cond_1

    .line 501
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SelectionArgs must be provided for the Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 505
    :cond_1
    aget-object v3, p4, v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, query:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;

    invoke-super/range {p0 .. p5}, Landroid/content/SearchRecentSuggestionsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;-><init>(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/Context;)V

    .line 512
    .local v0, historySuggestor:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
    sget v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    packed-switch v3, :pswitch_data_0

    .line 523
    new-instance v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 527
    .local v1, networkSuggestor:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
    :goto_0
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->gatherSuggestions()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->gatherSuggestions()Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v3

    .line 515
    .end local v1           #networkSuggestor:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
    :pswitch_0
    new-instance v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;

    sget v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 517
    .restart local v1       #networkSuggestor:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
