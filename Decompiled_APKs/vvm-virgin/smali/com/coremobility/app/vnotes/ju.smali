.class final Lcom/coremobility/app/vnotes/ju;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ju;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ju;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V

    :cond_0
    return-void
.end method
