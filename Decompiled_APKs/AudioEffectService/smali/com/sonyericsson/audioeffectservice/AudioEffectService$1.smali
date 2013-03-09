.class Lcom/sonyericsson/audioeffectservice/AudioEffectService$1;
.super Landroid/os/Handler;
.source "AudioEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/audioeffectservice/AudioEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/audioeffectservice/AudioEffectService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/audioeffectservice/AudioEffectService;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService$1;->this$0:Lcom/sonyericsson/audioeffectservice/AudioEffectService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 54
    invoke-static {}, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->access$000()Lcom/sonyericsson/audioeffectservice/XLoudAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService$1;->this$0:Lcom/sonyericsson/audioeffectservice/AudioEffectService;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->recreateObject(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService$1;->this$0:Lcom/sonyericsson/audioeffectservice/AudioEffectService;

    #calls: Lcom/sonyericsson/audioeffectservice/AudioEffectService;->getServiceAndLink()V
    invoke-static {v0}, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->access$100(Lcom/sonyericsson/audioeffectservice/AudioEffectService;)V

    .line 56
    return-void
.end method
