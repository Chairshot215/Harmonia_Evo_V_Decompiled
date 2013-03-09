.class Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;
.super Ljava/lang/Object;
.source "ViewAppFinish.java"

# interfaces
.implements Lcom/futuredial/ui/UIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewAppFinish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewAppFinish;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewAppFinish;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewAppFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMsg(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewAppFinish;

    iget-object v0, v0, Lcom/futuredial/ui/ViewAppFinish;->ViewName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coming msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewAppFinish;

    iget-object v0, v0, Lcom/futuredial/ui/ViewAppFinish;->m_pdWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewAppFinish;

    iget-object v0, v0, Lcom/futuredial/ui/ViewAppFinish;->m_pdWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 47
    iget-object v0, p0, Lcom/futuredial/ui/ViewAppFinish$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewAppFinish;

    iget-object v0, v0, Lcom/futuredial/ui/ViewAppFinish;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMIUI;->finish()V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
