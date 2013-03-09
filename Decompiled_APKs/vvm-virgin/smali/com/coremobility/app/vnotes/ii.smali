.class final Lcom/coremobility/app/vnotes/ii;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ii;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ii;->a:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->finish()V

    return-void
.end method
