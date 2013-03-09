.class public final Lcom/coremobility/integration/e/j;
.super Lcom/coremobility/integration/x;


# instance fields
.field d:Lcom/coremobility/f/g;

.field e:Lcom/coremobility/integration/v;

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/coremobility/integration/x;-><init>(I)V

    iput-object v1, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    iput-object v1, p0, Lcom/coremobility/integration/e/j;->e:Lcom/coremobility/integration/v;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/e/j;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "NoSignal"

    return-object v0
.end method

.method public final a(Lcom/coremobility/f/g;)V
    .locals 2

    iput-object p1, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/j;->a(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/coremobility/integration/e/j;->f:Z

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    const-string v0, "Available"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->d(Lcom/coremobility/integration/x;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_3

    :goto_2
    if-nez v0, :cond_0

    const-string v0, "No Signal"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->c(Lcom/coremobility/integration/x;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/coremobility/integration/v;)Z
    .locals 5

    const/16 v4, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object p1, p0, Lcom/coremobility/integration/e/j;->e:Lcom/coremobility/integration/v;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    :cond_0
    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v0}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/coremobility/integration/e/j;->a(Z)V

    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v0}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/coremobility/integration/x;->b:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/e/j;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/integration/e/j;->e:Lcom/coremobility/integration/v;

    iget-object v2, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    invoke-virtual {v2}, Lcom/coremobility/f/g;->h()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/coremobility/integration/v;->a(I)V

    :goto_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/coremobility/integration/e/j;->f:Z

    if-eqz v0, :cond_6

    const-string v0, "block request"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/coremobility/integration/e/j;->a(Z)V

    goto :goto_1

    :cond_6
    const-string v0, "grant it to request for network"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0}, Lcom/coremobility/f/g;->h()I

    move-result v0

    invoke-virtual {p0}, Lcom/coremobility/integration/e/j;->b()I

    move-result v2

    if-ne v0, v2, :cond_7

    iput-boolean v1, p0, Lcom/coremobility/integration/e/j;->f:Z

    iget-object v0, p0, Lcom/coremobility/integration/e/j;->e:Lcom/coremobility/integration/v;

    iget-object v2, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    invoke-virtual {v2}, Lcom/coremobility/f/g;->i()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/coremobility/integration/v;->a(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/coremobility/integration/e/j;->e:Lcom/coremobility/integration/v;

    iget-object v2, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    invoke-virtual {v2}, Lcom/coremobility/f/g;->h()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/coremobility/integration/v;->a(I)V

    goto :goto_3
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/j;->d:Lcom/coremobility/f/g;

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
