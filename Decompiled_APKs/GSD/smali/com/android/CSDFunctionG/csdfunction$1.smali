.class Lcom/android/CSDFunctionG/csdfunction$1;
.super Landroid/os/Handler;
.source "csdfunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/csdfunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/csdfunction;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/csdfunction;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/CSDFunctionG/csdfunction$1;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction$1;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    #calls: Lcom/android/CSDFunctionG/csdfunction;->ShowDialog()V
    invoke-static {v0}, Lcom/android/CSDFunctionG/csdfunction;->access$000(Lcom/android/CSDFunctionG/csdfunction;)V

    .line 97
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction$1;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    #getter for: Lcom/android/CSDFunctionG/csdfunction;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/csdfunction;->access$100(Lcom/android/CSDFunctionG/csdfunction;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction$1;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    #getter for: Lcom/android/CSDFunctionG/csdfunction;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/CSDFunctionG/csdfunction;->access$100(Lcom/android/CSDFunctionG/csdfunction;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction$1;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
