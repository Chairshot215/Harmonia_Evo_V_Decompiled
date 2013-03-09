.class Lcom/htc/sdm/activity/SoundSetDetail$4;
.super Landroid/os/Handler;
.source "SoundSetDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetDetail;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$4;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1180
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1188
    :goto_0
    return-void

    .line 1183
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1184
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail$4;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/sdm/activity/SoundSetDetail;->setResult(ILandroid/content/Intent;)V

    .line 1185
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail$4;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetDetail;->finish()V

    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
