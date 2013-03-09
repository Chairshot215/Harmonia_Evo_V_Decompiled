.class Lcom/futuredial/ui/ViewClearData$ViewProcessor;
.super Ljava/lang/Object;
.source "ViewClearData.java"

# interfaces
.implements Lcom/futuredial/ui/UIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewClearData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewClearData;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewClearData;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/futuredial/ui/ViewClearData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewClearData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMsg(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData;->ViewName:Ljava/lang/String;

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

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 87
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewClearData;

    const-string v1, "rmModing"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/ui/ViewClearData;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    new-instance v0, Lcom/futuredial/ui/ViewSelectDataType;

    invoke-direct {v0}, Lcom/futuredial/ui/ViewSelectDataType;-><init>()V

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectDataType;->show()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x19e
        :pswitch_0
    .end packed-switch
.end method
