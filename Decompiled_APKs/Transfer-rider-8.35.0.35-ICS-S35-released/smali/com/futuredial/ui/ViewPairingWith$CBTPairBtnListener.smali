.class Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;
.super Lcom/futuredial/ui/CBtnListener;
.source "ViewPairingWith.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewPairingWith;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CBTPairBtnListener"
.end annotation


# instance fields
.field private bClick:Z

.field final synthetic this$0:Lcom/futuredial/ui/ViewPairingWith;


# direct methods
.method public constructor <init>(Lcom/futuredial/ui/ViewPairingWith;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "targetWindowClassName"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    .line 325
    invoke-direct {p0, p2}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->bClick:Z

    .line 326
    return-void
.end method

.method static synthetic access$002(Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->bClick:Z

    return p1
.end method

.method private declared-synchronized cancelClick()V
    .locals 3

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->bClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->bClick:Z

    .line 332
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v1, v1, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06020e

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v2, 0x7f060197

    invoke-virtual {v1, v2}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener$3;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener$3;-><init>(Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v2, 0x7f06018f

    invoke-virtual {v1, v2}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener$2;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener$2;-><init>(Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018a

    new-instance v2, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener$1;-><init>(Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
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
    .line 372
    invoke-direct {p0}, Lcom/futuredial/ui/ViewPairingWith$CBTPairBtnListener;->cancelClick()V

    .line 373
    return-void
.end method
