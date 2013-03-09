.class Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorRunnable"
.end annotation


# instance fields
.field private mErrorMsg:I

.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method public constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;I)V
    .locals 0
    .parameter
    .parameter "errorMsg"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->mErrorMsg:I

    .line 276
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v2, 0x7f050002

    .line 280
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$300(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->mErrorMsg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 283
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f04000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/16 v1, 0x1a

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$600(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 292
    :cond_0
    return-void
.end method
