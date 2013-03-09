.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;
.super Landroid/os/AsyncTask;
.source "GNOperations.java"

# interfaces
.implements Lcom/gracenote/mmid/MobileSDK/FPXCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationsAsyncWebservicesLogin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/gracenote/mmid/MobileSDK/FPXCallback;"
    }
.end annotation


# instance fields
.field protected handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1603
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1604
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "unused"

    .prologue
    .line 1618
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    invoke-virtual {v1}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v0

    .line 1622
    .local v0, queryXML:Ljava/lang/String;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->doPost(Ljava/lang/String;)V

    .line 1623
    const/4 v1, 0x0

    return-object v1
.end method

.method public fpxDebugMsg(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1671
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "fpxDebugMsg msg is null"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 1672
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "DEBUG"

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->publishProgress([Ljava/lang/Object;)V

    .line 1673
    return-void

    :cond_0
    move v0, v2

    .line 1671
    goto :goto_0
.end method

.method public fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V
    .locals 2
    .parameter "statusEnum"
    .parameter "status"
    .parameter "percentDone"

    .prologue
    .line 1667
    const/4 v0, 0x0

    const-string v1, "fpxStatusUpdate() can\'t be invoked on login"

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 1668
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "unused"

    .prologue
    const/4 v6, 0x0

    .line 1632
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    invoke-virtual {v4}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->getResult()Lcom/gracenote/mmid/MobileSDK/GNResult;

    move-result-object v3

    .line 1633
    .local v3, result:Lcom/gracenote/mmid/MobileSDK/GNResult;
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    invoke-virtual {v4}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->getConfig()Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object v0

    .line 1634
    .local v0, config:Lcom/gracenote/mmid/MobileSDK/GNConfig;
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v2

    .line 1636
    .local v2, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    invoke-virtual {v3}, Lcom/gracenote/mmid/MobileSDK/GNResult;->isFailure()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1643
    invoke-virtual {v3}, Lcom/gracenote/mmid/MobileSDK/GNResult;->getErrCode()I

    move-result v4

    const/16 v5, 0x138b

    if-ne v4, v5, :cond_0

    .line 1644
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->setRegisterInvalidClientIdFailure(Z)V

    .line 1653
    :cond_0
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    invoke-virtual {v4}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 1654
    .local v1, loginResultXML:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->appendToDebugLog(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v0, v6}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->setRegisterResultPending(Z)V

    .line 1658
    invoke-virtual {v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->webservicesLoginFailed(Lcom/gracenote/mmid/MobileSDK/GNResult;)V

    .line 1664
    .end local v1           #loginResultXML:Ljava/lang/String;
    :goto_0
    return-void

    .line 1660
    :cond_1
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    invoke-virtual {v4}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->saveUserId()V

    .line 1661
    invoke-virtual {v0, v6}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->setRegisterResultPending(Z)V

    .line 1662
    invoke-virtual {v2}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->webservicesLoginWorked()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 5
    .parameter "objects"

    .prologue
    .line 1678
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    invoke-virtual {v3}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->getConfig()Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object v0

    .line 1679
    .local v0, config:Lcom/gracenote/mmid/MobileSDK/GNConfig;
    const/4 v3, 0x0

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/String;

    .line 1680
    .local v2, type:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    .line 1681
    .local v1, msg:Ljava/lang/String;
    const-string v3, "DEBUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "DEBUG is only supported option"

    invoke-static {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 1682
    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->appendToDebugLog(Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method setHandler(Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;)V
    .locals 0
    .parameter "inHandler"

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    .line 1608
    return-void
.end method
