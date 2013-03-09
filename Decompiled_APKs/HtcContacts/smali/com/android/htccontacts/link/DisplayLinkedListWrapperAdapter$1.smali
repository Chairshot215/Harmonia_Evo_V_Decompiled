.class Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;
.super Ljava/lang/Object;
.source "DisplayLinkedListWrapperAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->queryParentCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 318
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ( "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mRowInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$200(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;

    .line 321
    .local v7, info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    iget v0, v7, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mType:I

    if-nez v0, :cond_0

    .line 322
    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->mContactId:J
    invoke-static {v7}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;->access$300(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    .end local v7           #info:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$RowInfo;
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 327
    const-string v0, " ) "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v10, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$500(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    #setter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;
    invoke-static {v10, v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$402(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 332
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$400(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$400(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 334
    .local v8, mIdxDisplayName:I
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    new-instance v1, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$400(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mAlphabet:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$700(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v8, v3}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    #setter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mIndexer:Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;
    invoke-static {v0, v1}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$602(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;)Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;

    .line 335
    const-string v0, "DisplayLinkedListWrapperAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------mParentCursor count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->mParentCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;->access$400(Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v8           #mIdxDisplayName:I
    :goto_1
    return-void

    .line 337
    :cond_2
    const-string v0, "DisplayLinkedListWrapperAdapter"

    const-string v1, "--------mParentCursor IS NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
