.class public final Lcom/coremobility/integration/e/l;
.super Lcom/coremobility/integration/x;


# instance fields
.field d:Lcom/coremobility/f/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/coremobility/integration/x;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "PhoneCall"

    return-object v0
.end method

.method public final a(Lcom/coremobility/f/g;)V
    .locals 2

    iput-object p1, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/l;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/e/l;->a(Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    const-string v0, "Off"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->e(Lcom/coremobility/integration/x;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v3, :cond_3

    :goto_2
    if-nez v0, :cond_0

    const-string v0, "On"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->b(Lcom/coremobility/integration/x;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/l;->d:Lcom/coremobility/f/g;

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
