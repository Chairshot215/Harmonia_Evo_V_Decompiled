.class public Lcom/qualcomm/privinit/BootReciever;
.super Landroid/content/BroadcastReceiver;
.source "BootReciever.java"


# static fields
.field private static final tag:Ljava/lang/String; = "qcom_priv_settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setprop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "val"

    .prologue
    .line 26
    :try_start_0
    const-string v1, "qcom_priv_settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setprop("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "qcom_priv_settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    const-string v0, "net.http.threads"

    const-string v1, "10"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "net.http.idle_cache.size"

    const-string v1, "40"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "net.dns.cache_size"

    const-string v1, "512"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "net.dns.cache_ttl"

    const-string v1, "600"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "net.http.idle_cache.shutdown"

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "net.webkit.cache.size"

    const-string v1, "12582912"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "net.webkit.cache.mindeadsize"

    const-string v1, "4194304"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "net.webkit.cache.maxdeadsize"

    const-string v1, "4194304"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "net.nw.cache.prioadvstep"

    const-string v1, "86400000"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "net.nw.cache.weightadvstep"

    const-string v1, "3600000"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "net.nw.cache.orderby"

    const-string v1, "weight"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/privinit/BootReciever;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
