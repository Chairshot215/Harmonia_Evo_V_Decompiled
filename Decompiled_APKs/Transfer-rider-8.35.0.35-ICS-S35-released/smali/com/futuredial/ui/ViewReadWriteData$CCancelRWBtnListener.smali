.class Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;
.super Lcom/futuredial/ui/CBtnListener;
.source "ViewReadWriteData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewReadWriteData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCancelRWBtnListener"
.end annotation


# instance fields
.field public bClick:Z

.field final synthetic this$0:Lcom/futuredial/ui/ViewReadWriteData;


# direct methods
.method public constructor <init>(Lcom/futuredial/ui/ViewReadWriteData;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "targetWindowClassName"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    .line 299
    invoke-direct {p0, p2}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->bClick:Z

    .line 300
    return-void
.end method

.method private declared-synchronized cancelClick()V
    .locals 6

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->bClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->bClick:Z

    .line 304
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v1, "cancel pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewReadWriteData;->m_worker:Lcom/futuredial/DmiHandler;

    invoke-virtual {v0}, Lcom/futuredial/DmiHandler;->SetCancelPopupDialog()V

    .line 308
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v1, v1, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    const v2, 0x7f060198

    invoke-virtual {v1, v2}, Lcom/futuredial/ui/ViewReadWriteData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v4, v4, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v5, p0, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget v5, v5, Lcom/futuredial/ui/ViewReadWriteData;->m_curmoduleID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06020e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$3;-><init>(Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018f

    new-instance v2, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$2;-><init>(Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018a

    new-instance v2, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener$1;-><init>(Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->cancelClick()V

    .line 357
    return-void
.end method
