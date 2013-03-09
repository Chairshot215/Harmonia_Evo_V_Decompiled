.class public Lcom/htc/widget/HtcAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "HtcAlphabetIndexer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1

    const v0, 0x1040419

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    return-void
.end method
