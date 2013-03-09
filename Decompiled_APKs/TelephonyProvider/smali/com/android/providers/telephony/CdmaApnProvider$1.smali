.class Lcom/android/providers/telephony/CdmaApnProvider$1;
.super Landroid/os/Handler;
.source "CdmaApnProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/CdmaApnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/CdmaApnProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/CdmaApnProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/providers/telephony/CdmaApnProvider$1;->this$0:Lcom/android/providers/telephony/CdmaApnProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/telephony/CdmaApnProvider$1;->this$0:Lcom/android/providers/telephony/CdmaApnProvider;

    #calls: Lcom/android/providers/telephony/CdmaApnProvider;->createCarriersCache()V
    invoke-static {v0}, Lcom/android/providers/telephony/CdmaApnProvider;->access$000(Lcom/android/providers/telephony/CdmaApnProvider;)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
