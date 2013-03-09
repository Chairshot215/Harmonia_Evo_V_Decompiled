.class final Lcom/coremobility/app/vnotes/jw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jw;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jw;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->finish()V

    return-void
.end method
