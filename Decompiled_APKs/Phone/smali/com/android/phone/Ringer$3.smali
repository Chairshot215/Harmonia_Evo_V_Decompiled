.class Lcom/android/phone/Ringer$3;
.super Ljava/lang/Object;
.source "Ringer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->requestToneWithRepeatTimes(IILcom/android/phone/CallNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;

.field final synthetic val$callnotifier:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iput-object p2, p0, Lcom/android/phone/Ringer$3;->val$callnotifier:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    invoke-static {v0}, Lcom/android/phone/Ringer;->access$210(Lcom/android/phone/Ringer;)I

    .line 313
    iget-object v0, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRepeatTimes:I
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$200(Lcom/android/phone/Ringer;)I

    move-result v0

    if-lez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 315
    iget-object v0, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 318
    iget-object v0, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/Ringer;->mRequestTone:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/phone/Ringer;->access$102(Lcom/android/phone/Ringer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 319
    iget-object v0, p0, Lcom/android/phone/Ringer$3;->val$callnotifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterNoCall()V

    goto :goto_0
.end method
