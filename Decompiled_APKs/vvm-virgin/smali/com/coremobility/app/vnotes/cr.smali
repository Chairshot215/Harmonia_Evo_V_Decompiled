.class final Lcom/coremobility/app/vnotes/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/hq;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cr;->a:Lcom/coremobility/app/vnotes/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->d()Lcom/coremobility/app/vnotes/hp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coremobility/app/vnotes/hp;->a(I)Lcom/coremobility/app/vnotes/hr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/hr;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/hp;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cr;->a:Lcom/coremobility/app/vnotes/hq;

    invoke-interface {v0, v1}, Lcom/coremobility/app/vnotes/hq;->a(Ljava/lang/String;)V

    return-void
.end method
