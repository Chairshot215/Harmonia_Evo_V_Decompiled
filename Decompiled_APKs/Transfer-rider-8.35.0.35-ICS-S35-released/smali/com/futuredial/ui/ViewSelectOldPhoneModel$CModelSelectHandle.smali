.class Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;
.super Lcom/futuredial/ui/CSingleSelectHandle;
.source "ViewSelectOldPhoneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewSelectOldPhoneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CModelSelectHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectOldPhoneModel;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectOldPhoneModel;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;->this$0:Lcom/futuredial/ui/ViewSelectOldPhoneModel;

    invoke-direct {p0}, Lcom/futuredial/ui/CSingleSelectHandle;-><init>()V

    return-void
.end method


# virtual methods
.method additional_op()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneModel$CModelSelectHandle;->this$0:Lcom/futuredial/ui/ViewSelectOldPhoneModel;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneModel;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 43
    return-void
.end method
