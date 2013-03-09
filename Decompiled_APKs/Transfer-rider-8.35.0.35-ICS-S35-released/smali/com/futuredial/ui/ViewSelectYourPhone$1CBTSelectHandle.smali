.class Lcom/futuredial/ui/ViewSelectYourPhone$1CBTSelectHandle;
.super Lcom/futuredial/ui/CSingleSelectHandle;
.source "ViewSelectYourPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewSelectYourPhone;->set_view()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CBTSelectHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectYourPhone;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CBTSelectHandle;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-direct {p0}, Lcom/futuredial/ui/CSingleSelectHandle;-><init>()V

    return-void
.end method


# virtual methods
.method additional_op()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 310
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CBTSelectHandle;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 311
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$1CBTSelectHandle;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 312
    return-void
.end method
