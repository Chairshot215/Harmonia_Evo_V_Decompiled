.class public Lcom/google/android/googlequicksearchbox/Suggestion;
.super Ljava/lang/Object;
.source "Suggestion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/googlequicksearchbox/Suggestion;",
        ">;"
    }
.end annotation


# static fields
.field private static final STRING_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TO_STRING_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

.field private final mHashCode:I

.field private final mIcon1:Ljava/lang/String;

.field private final mIcon2:Ljava/lang/String;

.field private final mIntentAction:Ljava/lang/String;

.field private final mIntentComponent:Landroid/content/ComponentName;

.field private final mIntentData:Ljava/lang/String;

.field private final mIntentExtraData:Ljava/lang/String;

.field private final mInternalIntent:Landroid/content/Intent;

.field private final mIsHistory:Z

.field private final mIsShortcut:Z

.field private final mLastAccessTime:J

.field private final mLogType:Ljava/lang/String;

.field private final mPrefetch:Z

.field private final mShortcutId:Ljava/lang/String;

.field private final mSource:Lcom/google/android/googlequicksearchbox/Source;

.field private final mSpinnerWhileRefreshing:Z

.field private mSuggestionKey:Ljava/lang/String;

.field private final mSuggestionQuery:Ljava/lang/String;

.field private final mText1:Ljava/lang/CharSequence;

.field private final mText2:Ljava/lang/CharSequence;

.field private final mText2Url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsFirst()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    .line 42
    invoke-static {}, Lcom/google/common/collect/Ordering;->usingToString()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsFirst()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/Suggestion;->TO_STRING_ORDERING:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 87
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText1:Ljava/lang/CharSequence;

    .line 88
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2:Ljava/lang/CharSequence;

    .line 89
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2Url:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon1:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon2:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mShortcutId:Ljava/lang/String;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLastAccessTime:J

    .line 94
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSpinnerWhileRefreshing:Z

    .line 95
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentAction:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentData:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentExtraData:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentComponent:Landroid/content/ComponentName;

    .line 99
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mInternalIntent:Landroid/content/Intent;

    .line 100
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionQuery:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLogType:Ljava/lang/String;

    .line 102
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIsShortcut:Z

    .line 103
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIsHistory:Z

    .line 104
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    .line 105
    iput v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mHashCode:I

    .line 106
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mPrefetch:Z

    .line 107
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/googlequicksearchbox/SuggestionExtras;Z)V
    .locals 2
    .parameter "source"
    .parameter "text1"
    .parameter "text2"
    .parameter "text2Url"
    .parameter "icon1"
    .parameter "icon2"
    .parameter "shortcutId"
    .parameter "lastAccessTime"
    .parameter "spinnerWhileRefreshing"
    .parameter "intentAction"
    .parameter "intentData"
    .parameter "intentExtraData"
    .parameter "intentComponent"
    .parameter "internalIntent"
    .parameter "suggestionQuery"
    .parameter "logType"
    .parameter "isShortcut"
    .parameter "isHistory"
    .parameter "extras"
    .parameter "prefetch"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 122
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText1:Ljava/lang/CharSequence;

    .line 123
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2:Ljava/lang/CharSequence;

    .line 124
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2Url:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon1:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon2:Ljava/lang/String;

    .line 127
    iput-object p7, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mShortcutId:Ljava/lang/String;

    .line 128
    iput-wide p8, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLastAccessTime:J

    .line 129
    iput-boolean p10, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSpinnerWhileRefreshing:Z

    .line 130
    iput-object p11, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentAction:Ljava/lang/String;

    .line 131
    iput-object p12, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentData:Ljava/lang/String;

    .line 132
    iput-object p13, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentExtraData:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentComponent:Landroid/content/ComponentName;

    .line 134
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mInternalIntent:Landroid/content/Intent;

    .line 135
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionQuery:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLogType:Ljava/lang/String;

    .line 137
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIsShortcut:Z

    .line 138
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIsHistory:Z

    .line 139
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    .line 140
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mPrefetch:Z

    .line 141
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->calculateHashCode()I

    move-result v1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mHashCode:I

    .line 142
    return-void
.end method

.method public static builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 1

    .prologue
    .line 456
    new-instance v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;-><init>()V

    return-object v0
.end method

.method private calculateHashCode()I
    .locals 4

    .prologue
    .line 465
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 466
    .local v0, sourceName:Ljava/lang/String;
    :goto_0
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon1:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon2:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText1:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentAction:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentData:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentExtraData:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLogType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mShortcutId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSpinnerWhileRefreshing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 465
    .end local v0           #sourceName:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createSuggestionKey()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x23

    .line 285
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v5

    if-nez v5, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/googlequicksearchbox/Suggestion;->makeKeyComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentData:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/googlequicksearchbox/Suggestion;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/googlequicksearchbox/Suggestion;->makeKeyComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, data:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/googlequicksearchbox/Suggestion;->makeKeyComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, query:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int v4, v5, v6

    .line 296
    .local v4, size:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    .local v2, keyBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 308
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #keyBuilder:Ljava/lang/StringBuilder;
    .end local v3           #query:Ljava/lang/String;
    .end local v4           #size:I
    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText1:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2Url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static makeKeyComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "str"

    .prologue
    .line 534
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method static normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 546
    if-eqz p0, :cond_1

    .line 548
    const-string v4, "://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 549
    .local v2, schemePos:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, normalized:Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 557
    .local v3, start:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 558
    .local v0, end:I
    const/16 v4, 0x2f

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_0

    .line 559
    add-int/lit8 v0, v0, -0x1

    .line 561
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 563
    .end local v0           #end:I
    .end local v1           #normalized:Ljava/lang/String;
    .end local v2           #schemePos:I
    .end local v3           #start:I
    .end local p0
    :cond_1
    return-object p0

    .line 554
    .restart local v2       #schemePos:I
    .restart local p0
    :cond_2
    move-object v1, p0

    .line 555
    .restart local v1       #normalized:Ljava/lang/String;
    const-string v4, "://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v3, v2, v4

    .restart local v3       #start:I
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/googlequicksearchbox/Suggestion;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 478
    if-ne p0, p1, :cond_0

    .line 479
    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0

    .line 481
    :cond_0
    if-nez p1, :cond_1

    .line 482
    const/4 v0, -0x1

    goto :goto_0

    .line 485
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText1:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mText1:Ljava/lang/CharSequence;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->TO_STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2:Ljava/lang/CharSequence;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->TO_STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon1:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon1:Ljava/lang/String;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon2:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon2:Ljava/lang/String;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentAction:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentAction:Ljava/lang/String;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentData:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentData:Ljava/lang/String;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentExtraData:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentExtraData:Ljava/lang/String;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mInternalIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mInternalIntent:Landroid/content/Intent;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->TO_STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLogType:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mLogType:Ljava/lang/String;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mShortcutId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mShortcutId:Ljava/lang/String;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSourceName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionQuery:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionQuery:Ljava/lang/String;

    sget-object v3, Lcom/google/android/googlequicksearchbox/Suggestion;->STRING_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSpinnerWhileRefreshing:Z

    iget-boolean v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;->mSpinnerWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->compareTo(Lcom/google/android/googlequicksearchbox/Suggestion;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 504
    if-ne p0, p1, :cond_1

    .line 511
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 508
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/google/android/googlequicksearchbox/Suggestion;

    if-nez v2, :cond_2

    move v0, v1

    .line 509
    goto :goto_0

    .line 511
    :cond_2
    check-cast p1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->compareTo(Lcom/google/android/googlequicksearchbox/Suggestion;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    return-object v0
.end method

.method public getInternalIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mInternalIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLastAccessTime()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLastAccessTime:J

    return-wide v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon1:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIcon2:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentAction:Ljava/lang/String;

    .line 200
    :goto_0
    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getDefaultIntentAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentComponent:Landroid/content/ComponentName;

    .line 210
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionIntentDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntentExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSuggestionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->createSuggestionKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionKey:Ljava/lang/String;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLogType:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    return-object v0
.end method

.method public getSuggestionText1()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText1:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSuggestionText2()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSuggestionText2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2Url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mHashCode:I

    return v0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIsHistory:Z

    return v0
.end method

.method public isShortcuttable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 268
    const-string v1, "_-1"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->shouldShortcutResults()Z

    move-result v0

    goto :goto_0

    .line 280
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSpinnerWhileRefreshing()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSpinnerWhileRefreshing:Z

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIsShortcut:Z

    return v0
.end method

.method public isWebSearchSuggestion()Z
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getInternalIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldPrefetch()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mPrefetch:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 520
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v1

    const-string v2, "source"

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "text1"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "text2"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mText2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "intentAction"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "intentData"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mIntentData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSuggestionQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "shortcutId"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "logtype"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLogType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "lastAccesstTime"

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mLastAccessTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
