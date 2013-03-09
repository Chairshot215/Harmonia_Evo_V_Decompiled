.class final Lcom/coremobility/app/vnotes/bz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/bw;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/app/vnotes/bw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/bz;-><init>(Lcom/coremobility/app/vnotes/bw;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/app/vnotes/bw;B)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bz;->a:Lcom/coremobility/app/vnotes/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x6

    const-string v1, " FacebookAuthListener:: onCancel "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x6

    const-string v1, " FacebookAuthListener:: onComplete "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/a/a/a;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bz;->a:Lcom/coremobility/app/vnotes/bw;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/bw;->a(Lcom/coremobility/app/vnotes/bw;)Lcom/a/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a;-><init>(Lcom/a/a/e;)V

    const-string v1, "/me"

    new-instance v2, Lcom/coremobility/app/vnotes/ca;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/ca;-><init>(Lcom/coremobility/app/vnotes/bz;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "GET"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/a/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/a/a/c;)V

    return-void
.end method

.method public final a(Lcom/a/a/d;)V
    .locals 3

    const/4 v0, 0x6

    const-string v1, " FacebookAuthListener:: onError "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/a/a/d;->printStackTrace()V

    invoke-virtual {p1}, Lcom/a/a/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/bw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/a/a/h;)V
    .locals 3

    const/4 v0, 0x6

    const-string v1, " FacebookAuthListener:: onFacebookError "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/a/a/h;->printStackTrace()V

    return-void
.end method
