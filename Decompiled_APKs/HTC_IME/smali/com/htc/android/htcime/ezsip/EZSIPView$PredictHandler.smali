.class public Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;
.super Landroid/os/Handler;
.source "EZSIPView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/EZSIPView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PredictHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/ezsip/EZSIPView;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->removeMessages(I)V

    .line 637
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, -0x1

    .line 626
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 632
    :goto_0
    return-void

    .line 629
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/android/htcime/ezsip/EZSIPView;->sendKeyEvent(III)V

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
