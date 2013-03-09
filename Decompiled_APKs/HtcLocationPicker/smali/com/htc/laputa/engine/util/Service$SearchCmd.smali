.class public abstract Lcom/htc/laputa/engine/util/Service$SearchCmd;
.super Lcom/htc/laputa/engine/util/Service$BasicCmd;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "SearchCmd"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "cmdType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/Service$BasicCmd;-><init>(I)V

    .line 623
    return-void
.end method


# virtual methods
.method public getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;)Ljava/util/List;
    .locals 6
    .parameter "retIndex"
    .parameter "count"
    .parameter "field"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            "Lcom/htc/laputa/engine/util/DataListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getRet()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v3, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 653
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No result found."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 672
    :cond_0
    :goto_0
    return-object v1

    .line 657
    :cond_1
    const/4 v1, 0x0

    .line 659
    .local v1, retList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v3, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    add-int v4, p1, p2

    invoke-interface {v3, p1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 665
    :goto_1
    if-eqz p4, :cond_0

    .line 671
    invoke-interface {p4, v1}, Lcom/htc/laputa/engine/util/DataListener;->notifyDataReady(Ljava/util/List;)V

    move-object v1, v2

    .line 672
    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 3
    .parameter "retIndex"
    .parameter "count"
    .parameter "field"
    .parameter "listener"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            "Lcom/htc/laputa/engine/util/DataListener;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRet()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;)Ljava/util/List;

    move-result-object v0

    .line 692
    .local v0, retList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz p5, :cond_0

    .line 694
    invoke-static {p5, v0}, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->prepareFpData(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 697
    :cond_0
    return-object v0
.end method

.method public getRetCount()I
    .locals 2

    .prologue
    .line 631
    const-class v0, Lcom/htc/laputa/engine/util/Service$BasicCmd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRetCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
