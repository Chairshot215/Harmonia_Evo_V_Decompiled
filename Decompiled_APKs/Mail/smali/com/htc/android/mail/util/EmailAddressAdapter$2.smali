.class Lcom/htc/android/mail/util/EmailAddressAdapter$2;
.super Ljava/lang/Object;
.source "EmailAddressAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/util/EmailAddressAdapter;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

.field final synthetic val$galFilter:Ljava/lang/String;

.field final synthetic val$matrixColumns:[Ljava/lang/String;

.field final synthetic val$matrixCursor:Landroid/database/MatrixCursor;

.field final synthetic val$mergedResultCursor:Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/util/EmailAddressAdapter;Ljava/lang/String;Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;[Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    iput-object p2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$galFilter:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$mergedResultCursor:Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    iput-object p4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$matrixColumns:[Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$matrixCursor:Landroid/database/MatrixCursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    const/4 v3, 0x0

    #setter for: Lcom/htc/android/mail/util/EmailAddressAdapter;->isGALCompleted:Z
    invoke-static {v2, v3}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$102(Lcom/htc/android/mail/util/EmailAddressAdapter;Z)Z

    .line 509
    sget-object v3, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    iget-object v2, v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$galFilter:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    move-result-object v1

    .line 511
    .local v1, result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    iget-object v2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$mergedResultCursor:Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    invoke-virtual {v2}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    invoke-static {}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    const-string v2, "EmailAddressAdapter"

    const-string v3, "Drop result (cursor closed, bg thread)"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .end local v1           #result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    :cond_0
    :goto_0
    return-void

    .line 521
    .restart local v1       #result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "EmailAddressAdapter"

    const-string v3, "end of query"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    iget-object v2, v2, Lcom/htc/android/mail/util/EmailAddressAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/android/mail/ComposeActivity;

    new-instance v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;

    invoke-direct {v3, p0, v1}, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;-><init>(Lcom/htc/android/mail/util/EmailAddressAdapter$2;Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;)V

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v1           #result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EmailAddressAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchGAL error>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
