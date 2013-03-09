.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Lcom/android/voicedialer/RecognizerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandRecognizerClient"
.end annotation


# static fields
.field static final MIN_VOLUME_TO_SKIP:I = 0x2

.field private static final NUM_PERIODS_BLOCK:I = 0xa

.field private static final RISING:I = 0x1

.field private static final SINE_FREQ:I = 0x190

.field private static final START:I = 0x0

.field private static final START_WINDOW_MS:I = 0x1f4

.field private static final THRESHOLD:I = 0x8

.field private static final TOP:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method private constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;Lcom/android/voicedialer/VoiceDialerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    return-void
.end method


# virtual methods
.method public onMicrophoneStart(Ljava/io/InputStream;)V
    .locals 6
    .parameter "mic"

    .prologue
    const/4 v5, 0x2

    .line 662
    const-string v2, "VoiceDialerActivity"

    const-string v3, "onMicrophoneStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/16 v3, 0x18

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$600(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 667
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1800(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 669
    .local v1, ringVolume:I
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringVolume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-lt v1, v5, :cond_1

    .line 676
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->skipBeep(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v1           #ringVolume:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;

    invoke-direct {v3, p0}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    return-void

    .line 677
    .restart local v1       #ringVolume:I
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Ljava/io/IOException;
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 681
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const-string v2, "VoiceDialerActivity"

    const-string v3, "no tone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRecognitionError(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 799
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecognitionError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v3, 0x7f04000a

    invoke-direct {v1, v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 802
    return-void
.end method

.method public onRecognitionFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 790
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecognitionFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->askToTryAgain()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 793
    return-void
.end method

.method public onRecognitionSuccess([Landroid/content/Intent;)V
    .locals 3
    .parameter "intents"

    .prologue
    .line 812
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommandRecognizerClient onRecognitionSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 816
    const-string v0, "VoiceDialerActivity"

    const-string v1, "not waiting for command, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2602(Lcom/android/voicedialer/VoiceDialerActivity;[Landroid/content/Intent;)[Landroid/content/Intent;

    .line 824
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    invoke-direct {v1, p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;[Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method skipBeep(Ljava/io/InputStream;)V
    .locals 27
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I
    invoke-static/range {v23 .. v23}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2400(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v23

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0x190

    move/from16 v23, v0

    mul-int/lit8 v15, v23, 0xa

    .line 709
    .local v15, sampleCount:I
    mul-int/lit8 v3, v15, 0x2

    .line 711
    .local v3, blockSize:I
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    new-array v4, v3, [B

    .line 716
    .local v4, buf:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I
    invoke-static/range {v23 .. v23}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2400(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x1f4

    move/from16 v23, v0

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    mul-int/lit8 v9, v23, 0x2

    .line 717
    .local v9, maxBytes:I
    add-int/lit8 v23, v9, -0x1

    div-int v23, v23, v3

    add-int/lit8 v23, v23, 0x1

    mul-int v9, v23, v3

    .line 719
    const/4 v6, 0x0

    .line 720
    .local v6, count:I
    const/16 v17, 0x0

    .line 721
    .local v17, state:I
    const-wide/16 v13, 0x0

    .line 722
    .local v13, prevE:J
    const-wide/16 v11, 0x0

    .line 723
    .local v11, peak:J
    mul-int/lit8 v22, v15, 0x8

    .line 724
    .local v22, threshold:I
    const-string v23, "VoiceDialerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "blockSize "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_1
    if-ge v6, v9, :cond_a

    .line 727
    const/4 v5, 0x0

    .line 728
    .local v5, cnt:I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 729
    sub-int v23, v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v4, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 730
    .local v10, n:I
    if-gez v10, :cond_2

    .line 731
    new-instance v23, Ljava/io/IOException;

    invoke-direct/range {v23 .. v23}, Ljava/io/IOException;-><init>()V

    throw v23

    .line 733
    :cond_2
    add-int/2addr v5, v10

    .line 734
    goto :goto_2

    .line 737
    .end local v10           #n:I
    :cond_3
    move v5, v3

    .line 738
    const-wide/16 v18, 0x0

    .line 739
    .local v18, sumx:J
    const-wide/16 v20, 0x0

    .line 740
    .local v20, sumxx:J
    :goto_3
    const/16 v23, 0x2

    move/from16 v0, v23

    if-lt v5, v0, :cond_4

    .line 741
    add-int/lit8 v23, v5, -0x1

    aget-byte v23, v4, v23

    shl-int/lit8 v23, v23, 0x8

    add-int/lit8 v24, v5, -0x2

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v16, v0

    .line 742
    .local v16, smp:S
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v18, v18, v23

    .line 743
    mul-int v23, v16, v16

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v20, v20, v23

    .line 744
    add-int/lit8 v5, v5, -0x2

    .line 745
    goto :goto_3

    .line 746
    .end local v16           #smp:S
    :cond_4
    int-to-long v0, v15

    move-wide/from16 v23, v0

    mul-long v23, v23, v20

    mul-long v25, v18, v18

    sub-long v23, v23, v25

    mul-int v25, v15, v15

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    div-long v7, v23, v25

    .line 747
    .local v7, energy:J
    const-string v23, "VoiceDialerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sumx "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " sumxx "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ee "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    packed-switch v17, :pswitch_data_0

    .line 780
    :cond_5
    :goto_4
    move-wide v13, v7

    .line 781
    add-int/2addr v6, v3

    .line 782
    goto/16 :goto_1

    .line 751
    :pswitch_0
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v23, v7, v23

    if-lez v23, :cond_5

    const-wide/16 v23, 0x2

    mul-long v23, v23, v13

    cmp-long v23, v7, v23

    if-lez v23, :cond_5

    const-wide/16 v23, 0x0

    cmp-long v23, v13, v23

    if-eqz v23, :cond_5

    .line 753
    const/16 v17, 0x1

    .line 754
    const-string v23, "VoiceDialerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "start RISING: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " time: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I
    invoke-static/range {v26 .. v26}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2400(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v26

    div-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 758
    :pswitch_1
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v23, v7, v23

    if-ltz v23, :cond_6

    const-wide/16 v23, 0x2

    div-long v23, v13, v23

    cmp-long v23, v7, v23

    if-gez v23, :cond_7

    .line 760
    :cond_6
    const-string v23, "VoiceDialerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "back to START: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " time: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I
    invoke-static/range {v26 .. v26}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2400(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v26

    div-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-wide/16 v11, 0x0

    .line 762
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 763
    :cond_7
    const-wide/16 v23, 0x2

    div-long v23, v13, v23

    cmp-long v23, v7, v23

    if-lez v23, :cond_5

    const-wide/16 v23, 0x2

    mul-long v23, v23, v13

    cmp-long v23, v7, v23

    if-gez v23, :cond_5

    .line 765
    const-string v23, "VoiceDialerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "start TOP: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " time: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I
    invoke-static/range {v26 .. v26}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2400(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v26

    div-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    cmp-long v23, v11, v7

    if-gez v23, :cond_8

    .line 767
    move-wide v11, v7

    .line 769
    :cond_8
    const/16 v17, 0x2

    goto/16 :goto_4

    .line 773
    :pswitch_2
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v23, v7, v23

    if-ltz v23, :cond_9

    const-wide/16 v23, 0x2

    div-long v23, v11, v23

    cmp-long v23, v7, v23

    if-gez v23, :cond_5

    .line 775
    :cond_9
    const-string v23, "VoiceDialerActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "end TOP: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " time: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I
    invoke-static/range {v26 .. v26}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2400(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v26

    div-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 783
    .end local v5           #cnt:I
    .end local v7           #energy:J
    .end local v18           #sumx:J
    .end local v20           #sumxx:J
    :cond_a
    const-string v23, "VoiceDialerActivity"

    const-string v24, "no beep detected, timed out"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 749
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
