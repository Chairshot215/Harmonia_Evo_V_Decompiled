.class Lcom/android/phone/ADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    .line 341
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 342
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$300(Lcom/android/phone/ADNList;)V

    .line 408
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$300(Lcom/android/phone/ADNList;)V

    .line 396
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    if-nez p3, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v2, v5}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;Z)V

    .line 352
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #getter for: Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e023d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 389
    .end local p2
    :goto_0
    return-void

    .line 360
    .restart local p2
    :cond_0
    if-eqz p2, :cond_2

    check-cast p2, Landroid/net/Uri;

    .end local p2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://icc/fdn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 363
    const/4 v2, -0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 364
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/phone/ADNList$FdnData;

    iput-object v3, v2, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, i:I
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 367
    const-string v2, "ADNList onQueryComplete"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v0, Lcom/android/phone/ADNList$FdnData;

    invoke-direct {v0}, Lcom/android/phone/ADNList$FdnData;-><init>()V

    .line 369
    .local v0, data:Lcom/android/phone/ADNList$FdnData;
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    .line 370
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/ADNList$FdnData;->sNumber:Ljava/lang/String;

    .line 371
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iget-object v2, v2, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aput-object v0, v2, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    .line 373
    goto :goto_1

    .line 376
    .end local v0           #data:Lcom/android/phone/ADNList$FdnData;
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 379
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iget-object v3, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iget-object v3, v3, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/ADNList;->sortFdnByName([Lcom/android/phone/ADNList$FdnData;Z)V

    .line 381
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const/4 v3, 0x2

    #calls: Lcom/android/phone/ADNList;->setAdapter(I)V
    invoke-static {v2, v3}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;I)V

    .line 382
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v2, v5}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;Z)V

    goto :goto_0

    .line 385
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iput-object p3, v2, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 386
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->setAdapter(I)V
    invoke-static {v2, v6}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;I)V

    .line 387
    iget-object v2, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v2, v5}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;Z)V

    goto/16 :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$300(Lcom/android/phone/ADNList;)V

    .line 402
    return-void
.end method
