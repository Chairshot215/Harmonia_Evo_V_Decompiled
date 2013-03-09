.class Lcom/htc/fm/HtcCursorFilter;
.super Landroid/widget/Filter;
.source "HtcCursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/htc/fm/HtcCursorFilter;->mClient:Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;

    .line 30
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resultValue"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/fm/HtcCursorFilter;->mClient:Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;

    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-interface {v0, p1}, Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 39
    iget-object v2, p0, Lcom/htc/fm/HtcCursorFilter;->mClient:Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;

    invoke-interface {v2, p1}, Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 42
    .local v1, results:Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 44
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 49
    :goto_0
    return-object v1

    .line 46
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 47
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/htc/fm/HtcCursorFilter;->mClient:Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;

    invoke-interface {v1}, Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 56
    .local v0, oldCursor:Landroid/database/Cursor;
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    .line 57
    iget-object v2, p0, Lcom/htc/fm/HtcCursorFilter;->mClient:Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    invoke-interface {v2, v1}, Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    .line 59
    :cond_0
    return-void
.end method
