.class Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;
.super Landroid/os/Handler;
.source "CommonContactAttributePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    .line 306
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 307
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 311
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$SelfHandler;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->handleShowPickContactOption()V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0xf002
        :pswitch_0
    .end packed-switch
.end method
