.class Lcom/futuredial/ui/ViewClearData$CDelStartListener;
.super Ljava/lang/Object;
.source "ViewClearData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewClearData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CDelStartListener"
.end annotation


# instance fields
.field private bClick:Z

.field final synthetic this$0:Lcom/futuredial/ui/ViewClearData;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewClearData;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->bClick:Z

    return-void
.end method

.method static synthetic access$002(Lcom/futuredial/ui/ViewClearData$CDelStartListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->bClick:Z

    return p1
.end method

.method private declared-synchronized cancelClick()V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->bClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->bClick:Z

    .line 104
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData;->m_delModSelector:Lcom/futuredial/ui/CMultiCheckHandle;

    iget-object v0, v0, Lcom/futuredial/ui/CMultiCheckHandle;->m_selectedItems:Lcom/futuredial/ui/ListData;

    iget-object v0, v0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->bClick:Z

    .line 107
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData;->ViewName:Ljava/lang/String;

    const-string v1, "nothing to delete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/futuredial/ui/ViewSelectDataType;

    invoke-direct {v0}, Lcom/futuredial/ui/ViewSelectDataType;-><init>()V

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectDataType;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_1
    :try_start_2
    new-instance v0, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v1, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v1, v1, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0601a2

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DialogManager$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06019a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060189

    new-instance v2, Lcom/futuredial/ui/ViewClearData$CDelStartListener$2;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewClearData$CDelStartListener$2;-><init>(Lcom/futuredial/ui/ViewClearData$CDelStartListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06018b

    new-instance v2, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;

    invoke-direct {v2, p0}, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;-><init>(Lcom/futuredial/ui/ViewClearData$CDelStartListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->cancelClick()V

    .line 164
    return-void
.end method
