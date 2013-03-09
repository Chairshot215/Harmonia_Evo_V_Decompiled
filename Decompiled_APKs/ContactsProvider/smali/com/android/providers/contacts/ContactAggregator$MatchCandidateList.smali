.class Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchCandidateList"
.end annotation


# instance fields
.field private mCount:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 250
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactAggregator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "nameLookupType"

    .prologue
    .line 258
    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    invoke-direct {v2, p1, p2}, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :goto_0
    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    .line 266
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 262
    .local v0, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    iput-object p1, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 263
    iput p2, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mLookupType:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    .line 270
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
