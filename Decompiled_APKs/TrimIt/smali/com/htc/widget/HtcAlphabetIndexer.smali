.class public Lcom/htc/widget/HtcAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "HtcAlphabetIndexer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "sortedColumnIndex"

    .prologue
    .line 11
    const v0, 0x1040406

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 20
    return-void
.end method
