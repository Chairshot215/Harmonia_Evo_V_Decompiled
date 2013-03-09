.class Lcom/futuredial/ui/ViewClearData$CDelStartListener$2;
.super Ljava/lang/Object;
.source "ViewClearData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewClearData$CDelStartListener;->cancelClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewClearData$CDelStartListener;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$2;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$2;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 120
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$2;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/ui/ViewClearData$CDelStartListener;->bClick:Z
    invoke-static {v0, v1}, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->access$002(Lcom/futuredial/ui/ViewClearData$CDelStartListener;Z)Z

    .line 121
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$2;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData;->ViewName:Ljava/lang/String;

    const-string v1, "[cancel] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-direct {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;-><init>()V

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->show()V

    .line 123
    return-void
.end method
