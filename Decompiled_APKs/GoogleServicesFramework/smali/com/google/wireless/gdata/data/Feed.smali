.class public Lcom/google/wireless/gdata/data/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# instance fields
.field private category:Ljava/lang/String;

.field private categoryScheme:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private itemsPerPage:I

.field private lastUpdated:Ljava/lang/String;

.field private startIndex:I

.field private title:Ljava/lang/String;

.field private totalResults:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/wireless/gdata/data/Feed;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Feed;->category:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCategoryScheme(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryScheme"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Feed;->categoryScheme:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Feed;->id:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setItemsPerPage(I)V
    .locals 0
    .parameter "itemsPerPage"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/wireless/gdata/data/Feed;->itemsPerPage:I

    .line 50
    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "lastUpdated"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Feed;->lastUpdated:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .parameter "startIndex"

    .prologue
    .line 41
    iput p1, p0, Lcom/google/wireless/gdata/data/Feed;->startIndex:I

    .line 42
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/wireless/gdata/data/Feed;->title:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setTotalResults(I)V
    .locals 0
    .parameter "totalResults"

    .prologue
    .line 33
    iput p1, p0, Lcom/google/wireless/gdata/data/Feed;->totalResults:I

    .line 34
    return-void
.end method
