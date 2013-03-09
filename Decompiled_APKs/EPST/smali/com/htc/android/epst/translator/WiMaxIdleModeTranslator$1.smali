.class Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$1;
.super Landroid/os/Handler;
.source "WiMaxIdleModeTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$1;->this$0:Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$1;->this$0:Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;

    #getter for: Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->access$100(Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "WiMaxIdleModeTranslator"

    const-string v1, "MSG_READ_WIMAX_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$1;->this$0:Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;

    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$1;->this$0:Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;

    #getter for: Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mItem:I
    invoke-static {v1}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->access$200(Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->sendReadRequest(I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "WiMaxIdleModeTranslator"

    const-string v1, "No this message handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
