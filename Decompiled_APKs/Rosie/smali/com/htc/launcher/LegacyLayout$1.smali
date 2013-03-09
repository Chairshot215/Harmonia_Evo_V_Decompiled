.class final Lcom/htc/launcher/LegacyLayout$1;
.super Landroid/os/Handler;
.source "LegacyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LegacyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 618
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 622
    :goto_0
    return-void

    .line 620
    :pswitch_0
    #calls: Lcom/htc/launcher/LegacyLayout;->flushPendingDraw()V
    invoke-static {}, Lcom/htc/launcher/LegacyLayout;->access$1500()V

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x10000000
        :pswitch_0
    .end packed-switch
.end method
