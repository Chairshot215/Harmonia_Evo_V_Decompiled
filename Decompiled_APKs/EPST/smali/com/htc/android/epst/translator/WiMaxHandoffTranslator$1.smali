.class Lcom/htc/android/epst/translator/WiMaxHandoffTranslator$1;
.super Landroid/os/Handler;
.source "WiMaxHandoffTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/android/epst/translator/WiMaxHandoffTranslator$1;->this$0:Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxHandoffTranslator$1;->this$0:Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;

    #getter for: Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;->access$100(Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "WiMaxHandoffTranslator"

    const-string v1, "MSG_READ_WIMAX_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxHandoffTranslator$1;->this$0:Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;

    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxHandoffTranslator$1;->this$0:Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;

    #getter for: Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;->mItem:I
    invoke-static {v1}, Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;->access$200(Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/translator/WiMaxHandoffTranslator;->sendReadRequest(I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "WiMaxHandoffTranslator"

    const-string v1, "No this message handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
