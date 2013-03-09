.class public Lcom/htc/laputa/engine/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getR66MaxMem()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v5, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 81
    .local v5, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v3, param:Landroid/os/Bundle;
    const-string v6, "DebugCommandType"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v4, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v5, v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v1

    .line 97
    .local v1, errCode:I
    const/4 v2, 0x0

    .line 101
    .local v2, mem:I
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "4"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 109
    :goto_0
    return v2

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    const-class v6, Lcom/htc/laputa/engine/util/Debug;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getR66MaxMem failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getR66Mem()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 47
    new-instance v5, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 48
    .local v5, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v3, param:Landroid/os/Bundle;
    const-string v6, "DebugCommandType"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v4, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v5, v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v1

    .line 64
    .local v1, errCode:I
    const/4 v2, 0x0

    .line 68
    .local v2, mem:I
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "4"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 76
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-class v6, Lcom/htc/laputa/engine/util/Debug;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getR66Mem failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v5, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 14
    .local v5, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    .local v2, param:Landroid/os/Bundle;
    const-string v6, "DebugCommandType"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v3, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v5, v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v1

    .line 30
    .local v1, errCode:I
    const/4 v4, 0x0

    .line 34
    .local v4, sdkversion:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "4"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 42
    :goto_0
    return-object v4

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    const-class v6, Lcom/htc/laputa/engine/util/Debug;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getSDKVersion failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    const-string v4, ""

    goto :goto_0
.end method

.method public static resetR66MaxMem()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v2, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 115
    .local v2, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "DebugCommandType"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v0

    .line 120
    .local v0, errCode:I
    return-void
.end method
