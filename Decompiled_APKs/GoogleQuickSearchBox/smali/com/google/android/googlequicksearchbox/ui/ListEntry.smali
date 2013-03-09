.class public Lcom/google/android/googlequicksearchbox/ui/ListEntry;
.super Ljava/lang/Object;
.source "ListEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
    }
.end annotation


# static fields
.field public static final DUMMY:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

.field public static final SEP_FIRST:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

.field public static final SEP_START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

.field public static final SEP_SUMMONS:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

.field public static final SEP_WEB:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

.field public static final SEP_WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;


# instance fields
.field private final mGrouping:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

.field private final mPlaceholderSpan:I

.field private final mPlaceholderSpinner:Z

.field private final mPosition:I

.field private final mSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_WEB:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 31
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_SUMMONS:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 32
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 33
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 34
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_FIRST:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 40
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->DUMMY:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 63
    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPosition:I

    .line 64
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->NONE:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mGrouping:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    .line 65
    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpan:I

    .line 66
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpinner:Z

    .line 67
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .parameter "placeholderSpan"
    .parameter "showSpinner"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 73
    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPosition:I

    .line 74
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->NONE:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mGrouping:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    .line 75
    iput p1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpan:I

    .line 76
    iput-boolean p2, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpinner:Z

    .line 77
    return-void

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionList;ILcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;)V
    .locals 1
    .parameter "suggestionList"
    .parameter "position"
    .parameter "grouping"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 81
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPosition:I

    .line 82
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mGrouping:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    .line 83
    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpan:I

    .line 84
    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpinner:Z

    .line 85
    return-void
.end method


# virtual methods
.method public getGrouping()Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mGrouping:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    return-object v0
.end method

.method public getPlaceholderSpan()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpan:I

    return v0
.end method

.method public getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPosition:I

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    return-object v0
.end method

.method public getSuggestionPosition()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPosition:I

    return v0
.end method

.method public isPlaceholder()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpan:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaceholderSpinner()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mPlaceholderSpinner:Z

    return v0
.end method

.method public isSuggestion()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->mSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
