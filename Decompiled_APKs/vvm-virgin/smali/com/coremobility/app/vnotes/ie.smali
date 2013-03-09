.class final Lcom/coremobility/app/vnotes/ie;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ie;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ie;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ie;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ie;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->b(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    return-void
.end method
