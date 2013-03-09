.class Lcom/android/CSDFunctionG/declare$2;
.super Landroid/os/Handler;
.source "declare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/declare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/declare;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/declare;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    iget-object v1, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    const v2, 0x7f060007

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    .line 245
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    iget-object v0, v0, Lcom/android/CSDFunctionG/declare;->textToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    iget-object v1, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    const v2, 0x7f060075

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/CSDFunctionG/declare;->GpsToast:Landroid/widget/Toast;

    .line 249
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    iget-object v0, v0, Lcom/android/CSDFunctionG/declare;->GpsToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 252
    :pswitch_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    iget-object v1, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    const v2, 0x7f060006

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/CSDFunctionG/declare;->textToast1:Landroid/widget/Toast;

    .line 253
    iget-object v0, p0, Lcom/android/CSDFunctionG/declare$2;->this$0:Lcom/android/CSDFunctionG/declare;

    iget-object v0, v0, Lcom/android/CSDFunctionG/declare;->textToast1:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
