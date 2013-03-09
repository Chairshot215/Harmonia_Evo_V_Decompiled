.class final Lcom/coremobility/app/vnotes/ik;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ik;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ik;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
