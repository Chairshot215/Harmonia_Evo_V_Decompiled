.class final Lcom/coremobility/app/vnotes/iz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/iz;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iz;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iz;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    return-void
.end method
