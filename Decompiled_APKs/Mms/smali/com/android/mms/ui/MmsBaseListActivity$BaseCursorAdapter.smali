.class public Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "MmsBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsBaseListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsBaseListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 337
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/MmsBaseListActivity;->bindListItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 383
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsQuerying:Z

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 363
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 364
    if-eqz p1, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 367
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mRowIDColumn:I

    .line 368
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mDataValid:Z

    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iput-boolean v3, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mValid:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 373
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mRowIDColumn:I

    .line 374
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->mDataValid:Z

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mValid:Z

    .line 377
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/MmsBaseListActivity;->newListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyContentChange()V
    .locals 0

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->onContentChanged()V

    .line 391
    return-void
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 342
    const-string v0, "MmsBaseListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentChanged> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-boolean v2, v2, Lcom/android/mms/ui/MmsBaseListActivity;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-boolean v2, v2, Lcom/android/mms/ui/MmsBaseListActivity;->mRequery:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mRequery:Z

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsForeground:Z

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/MmsBaseListActivity;->mValid:Z

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity;->startQuery()V

    goto :goto_0
.end method
