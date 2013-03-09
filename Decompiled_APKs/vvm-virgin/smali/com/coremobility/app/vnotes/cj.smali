.class final Lcom/coremobility/app/vnotes/cj;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/cf;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cj;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " number= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cj;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/cf;I)V

    return-void
.end method
