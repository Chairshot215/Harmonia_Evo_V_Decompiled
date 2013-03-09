.class public Lcom/google/android/gm/SuggestionsProvider;
.super Lcom/google/android/gm/SearchRecentSuggestionsGmail;
.source "SuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;
    }
.end annotation


# static fields
.field static final CUSTOM_SUGGESTION_COLUMNS:[Ljava/lang/String;

.field static MIN_QUERY_LENGTH:I

.field private static sContract:[Ljava/lang/String;


# instance fields
.field private mFullQueryTerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTermsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_query"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/SuggestionsProvider;->CUSTOM_SUGGESTION_COLUMNS:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gm/SuggestionsProvider;->sContract:[Ljava/lang/String;

    .line 42
    sput v3, Lcom/google/android/gm/SuggestionsProvider;->MIN_QUERY_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/SuggestionsProvider;->mTermsLock:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gm/SuggestionsProvider;->sContract:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/SuggestionsProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gm/SuggestionsProvider;->createQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inMatch"

    .prologue
    .line 137
    const-string v1, ""

    .line 138
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/SuggestionsProvider;->mFullQueryTerms:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 139
    iget-object v3, p0, Lcom/google/android/gm/SuggestionsProvider;->mTermsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/SuggestionsProvider;->mFullQueryTerms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gm/SuggestionsProvider;->mFullQueryTerms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v0           #i:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    return-object v1

    .line 143
    .restart local v0       #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    const-string v0, "com.google.android.gmail.SuggestionProvider"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/SuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 52
    invoke-super {p0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->onCreate()Z

    .line 53
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 59
    const/4 v0, 0x0

    aget-object v9, p4, v0

    .line 60
    .local v9, query:Ljava/lang/String;
    const/4 v8, 0x0

    .line 62
    .local v8, mergeCursor:Landroid/database/MergeCursor;
    iget-object v1, p0, Lcom/google/android/gm/SuggestionsProvider;->mTermsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gm/SuggestionsProvider;->mFullQueryTerms:Ljava/util/ArrayList;

    .line 64
    iget-object v0, p0, Lcom/google/android/gm/SuggestionsProvider;->mFullQueryTerms:Ljava/util/ArrayList;

    invoke-super {p0, v0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->setFullQueryTerms(Ljava/util/ArrayList;)V

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v9, :cond_2

    .line 69
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, tokens:[Ljava/lang/String;
    if-eqz v10, :cond_3

    array-length v0, v10

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 72
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    aget-object v9, v10, v0

    .line 74
    iget-object v1, p0, Lcom/google/android/gm/SuggestionsProvider;->mTermsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/SuggestionsProvider;->mFullQueryTerms:Ljava/util/ArrayList;

    .line 76
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gm/SuggestionsProvider;->mFullQueryTerms:Ljava/util/ArrayList;

    aget-object v2, v10, v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 65
    .end local v7           #i:I
    .end local v10           #tokens:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 79
    .restart local v7       #i:I
    .restart local v10       #tokens:[Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/SuggestionsProvider;->mFullQueryTerms:Ljava/util/ArrayList;

    invoke-super {p0, v0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->setFullQueryTerms(Ljava/util/ArrayList;)V

    .line 80
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .end local v7           #i:I
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v6, cursors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/google/android/gm/SuggestionsProvider;->MIN_QUERY_LENGTH:I

    if-lt v0, v1, :cond_1

    .line 91
    new-instance v0, Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;

    sget-object v1, Lcom/google/android/gm/SuggestionsProvider;->CUSTOM_SUGGESTION_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;-><init>(Lcom/google/android/gm/SuggestionsProvider;[Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;->query(Ljava/lang/String;)Lcom/google/android/gm/SuggestionsProvider$ContactsCursor;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    new-instance v8, Landroid/database/MergeCursor;

    .end local v8           #mergeCursor:Landroid/database/MergeCursor;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {v8, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 95
    .end local v6           #cursors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .end local v10           #tokens:[Ljava/lang/String;
    .restart local v8       #mergeCursor:Landroid/database/MergeCursor;
    :cond_2
    return-object v8

    .line 80
    .restart local v10       #tokens:[Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 83
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method
