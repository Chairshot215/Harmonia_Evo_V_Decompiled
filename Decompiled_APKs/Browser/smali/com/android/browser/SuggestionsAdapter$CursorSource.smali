.class abstract Lcom/android/browser/SuggestionsAdapter$CursorSource;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CursorSource"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/android/browser/SuggestionsAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/SuggestionsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getItem()Lcom/android/browser/SuggestionsAdapter$SuggestItem;
.end method

.method moveToNext()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public abstract runQuery(Ljava/lang/CharSequence;)V
.end method
