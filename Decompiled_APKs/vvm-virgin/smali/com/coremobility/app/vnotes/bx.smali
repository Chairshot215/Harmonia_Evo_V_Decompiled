.class final Lcom/coremobility/app/vnotes/bx;
.super Lcom/coremobility/app/vnotes/by;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/bw;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bx;->a:Lcom/coremobility/app/vnotes/bw;

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/by;-><init>(Lcom/coremobility/app/vnotes/bw;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "facebook status update completed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/bw;->a(ILcom/coremobility/app/vnotes/cb;)V

    return-void
.end method
