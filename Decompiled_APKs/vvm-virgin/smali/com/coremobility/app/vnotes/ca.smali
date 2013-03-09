.class final Lcom/coremobility/app/vnotes/ca;
.super Lcom/coremobility/app/vnotes/by;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/bz;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/bz;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ca;->a:Lcom/coremobility/app/vnotes/bz;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/bz;->a:Lcom/coremobility/app/vnotes/bw;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/by;-><init>(Lcom/coremobility/app/vnotes/bw;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ca;->a:Lcom/coremobility/app/vnotes/bz;

    iget-object v2, v2, Lcom/coremobility/app/vnotes/bz;->a:Lcom/coremobility/app/vnotes/bw;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/bw;->a(Lcom/coremobility/app/vnotes/bw;)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/ca;->a:Lcom/coremobility/app/vnotes/bz;

    iget-object v3, v3, Lcom/coremobility/app/vnotes/bz;->a:Lcom/coremobility/app/vnotes/bw;

    invoke-virtual {v3, v0, v1, v2}, Lcom/coremobility/app/vnotes/bw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->g()V

    return-void
.end method
