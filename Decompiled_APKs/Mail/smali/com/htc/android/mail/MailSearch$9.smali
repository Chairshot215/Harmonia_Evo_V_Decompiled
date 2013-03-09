.class Lcom/htc/android/mail/MailSearch$9;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailSearch;->performSearchMailOnServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;

.field final synthetic val$searchElement2:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch;Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    iput-object p2, p0, Lcom/htc/android/mail/MailSearch$9;->val$searchElement2:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 1229
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #calls: Lcom/htc/android/mail/MailSearch;->isNeedToDeleteGlobalMail()Z
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$1300(Lcom/htc/android/mail/MailSearch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #calls: Lcom/htc/android/mail/MailSearch;->deleteGlobalMail()V
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$1400(Lcom/htc/android/mail/MailSearch;)V

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mQueryHandler:Lcom/htc/android/mail/MailSearch$QueryHandler;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$1900(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MailSearch$QueryHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mServerSearchUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/android/mail/MailSearch;->access$1500(Lcom/htc/android/mail/MailSearch;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mProjection:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/MailSearch;->access$1600(Lcom/htc/android/mail/MailSearch;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mWhere:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/MailSearch;->access$1700(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->MAIL_SORT_RULE:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/mail/MailSearch;->access$1800(Lcom/htc/android/mail/MailSearch;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailSearch$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const/4 v9, 0x1

    .line 1236
    .local v9, mSearchAll:Z
    new-instance v11, Lcom/htc/android/mail/server/ExchangeServer;

    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$1200(Lcom/htc/android/mail/MailSearch;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcom/htc/android/mail/server/ExchangeServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 1237
    .local v11, server:Lcom/htc/android/mail/server/ExchangeServer;
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$2000(Lcom/htc/android/mail/MailSearch;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$9;->val$searchElement2:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/htc/android/mail/eassvc/pim/IEASService;->searchGlobalMail(JLcom/htc/android/mail/eassvc/pim/EASMailSearchElement;Z)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;

    move-result-object v10

    .line 1238
    .local v10, result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    if-eqz v10, :cond_4

    iget v0, v10, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->searchStatus:I

    if-ne v0, v12, :cond_4

    iget v0, v10, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    if-eq v0, v12, :cond_1

    iget v0, v10, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 1240
    :cond_1
    const-string v0, "MailSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search result successful,result.total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    new-instance v1, Lcom/htc/android/mail/MailSearch$9$1;

    invoke-direct {v1, p0, v10}, Lcom/htc/android/mail/MailSearch$9$1;-><init>(Lcom/htc/android/mail/MailSearch$9;Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailSearch;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1268
    iget v0, v10, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    if-gtz v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailSearch;->access$2202(Lcom/htc/android/mail/MailSearch;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    new-instance v1, Lcom/htc/android/mail/MailSearch$9$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailSearch$9$3;-><init>(Lcom/htc/android/mail/MailSearch$9;)V

    .end local v9           #mSearchAll:Z
    .end local v10           #result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .end local v11           #server:Lcom/htc/android/mail/server/ExchangeServer;
    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailSearch;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1311
    return-void

    .line 1270
    .restart local v9       #mSearchAll:Z
    .restart local v10       #result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .restart local v11       #server:Lcom/htc/android/mail/server/ExchangeServer;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$2200(Lcom/htc/android/mail/MailSearch;)I

    move-result v0

    if-lt v0, v13, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    const/4 v1, 0x2

    #setter for: Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailSearch;->access$2202(Lcom/htc/android/mail/MailSearch;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1295
    .end local v9           #mSearchAll:Z
    .end local v10           #result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .end local v11           #server:Lcom/htc/android/mail/server/ExchangeServer;
    :catch_0
    move-exception v8

    .line 1296
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1298
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    new-instance v1, Lcom/htc/android/mail/MailSearch$9$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailSearch$9$3;-><init>(Lcom/htc/android/mail/MailSearch$9;)V

    goto :goto_1

    .line 1273
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #mSearchAll:Z
    .restart local v10       #result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .restart local v11       #server:Lcom/htc/android/mail/server/ExchangeServer;
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailSearch;->access$2212(Lcom/htc/android/mail/MailSearch;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1298
    .end local v9           #mSearchAll:Z
    .end local v10           #result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .end local v11           #server:Lcom/htc/android/mail/server/ExchangeServer;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    new-instance v2, Lcom/htc/android/mail/MailSearch$9$3;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailSearch$9$3;-><init>(Lcom/htc/android/mail/MailSearch$9;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailSearch;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v0

    .line 1276
    .restart local v9       #mSearchAll:Z
    .restart local v10       #result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .restart local v11       #server:Lcom/htc/android/mail/server/ExchangeServer;
    :cond_4
    if-eqz v10, :cond_5

    .line 1277
    :try_start_4
    const-string v0, "MailSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search result failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->searchStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->storeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :goto_2
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/MailSearch;->mSearchServerStatus:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailSearch;->access$2202(Lcom/htc/android/mail/MailSearch;I)I

    .line 1282
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    new-instance v1, Lcom/htc/android/mail/MailSearch$9$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailSearch$9$2;-><init>(Lcom/htc/android/mail/MailSearch$9;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailSearch;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1279
    :cond_5
    const-string v0, "MailSearch"

    const-string v1, "search result failed"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method
