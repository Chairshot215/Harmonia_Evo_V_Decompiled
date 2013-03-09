.class Lcom/google/android/voicesearch/ime/DictationResultHandler$1;
.super Landroid/os/Handler;
.source "DictationResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/DictationResultHandler;->createHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ime/DictationResultHandler;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/DictationResultHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler$1;->this$0:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationResultHandler$1;->this$0:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->commitNewText()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
