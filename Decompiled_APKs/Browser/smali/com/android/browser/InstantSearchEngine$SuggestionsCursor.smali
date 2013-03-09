.class Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "InstantSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/InstantSearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsCursor"
.end annotation


# instance fields
.field private final mSuggestions:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;)V
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
    .line 364
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->mSuggestions:Ljava/util/List;

    .line 366
    return-void
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string p1, ""

    .line 382
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/android/browser/InstantSearchEngine;->access$300()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    iget v0, p0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->mPos:I

    return v0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 1
    .parameter "column"

    .prologue
    .line 417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 422
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 387
    iget v0, p0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->mPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->mPos:I

    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 388
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->mSuggestions:Ljava/util/List;

    iget v1, p0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 390
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 391
    const v0, 0x7f02004b

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 427
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
