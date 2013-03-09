.class public Lcom/android/CSDFunctionG/audiotest;
.super Landroid/app/Activity;
.source "audiotest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/CSDFunctionG/audiotest$myThread;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "CSD_audiotest"

.field public static TXTcaption:Landroid/widget/TextView;

.field static apfname_PA:Ljava/lang/String;

.field public static bIsPlay:Z

.field static bIsRec:Z

.field static bIsSDAudio:Z

.field static brecheadset:Z

.field static brecspk:Z

.field static isplayrec:Z

.field public static playbtn:Landroid/widget/Button;

.field static playwavfile:Z

.field public static recbtn:Landroid/widget/Button;

.field static stopplay:Z

.field public static tv_Instruct:Landroid/widget/TextView;

.field public static tv_NextStep:Landroid/widget/TextView;


# instance fields
.field Audiolog:Ljava/lang/String;

.field private IsHstPlugin:Z

.field Jpalyaudio:Lcom/android/CSDFunctionG/Playaudio;

.field private final LFP:I

.field private final LWC:I

.field private final WC:I

.field public g_mode:I

.field private i_volume:I

.field lblink:I

.field lledcolor:I

.field private mHSTBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

.field maudioManager:Landroid/media/AudioManager;

.field private run1btn:Landroid/widget/Button;

.field private run2btn:Landroid/widget/Button;

.field private th1:Lcom/android/CSDFunctionG/audiotest$myThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    sput-object v1, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    .line 44
    sput-object v1, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    .line 51
    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->brecspk:Z

    .line 52
    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->brecheadset:Z

    .line 65
    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsSDAudio:Z

    .line 66
    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsRec:Z

    .line 67
    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsPlay:Z

    .line 69
    sput-object v1, Lcom/android/CSDFunctionG/audiotest;->TXTcaption:Landroid/widget/TextView;

    .line 70
    sput-object v1, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    .line 71
    sput-object v1, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    .line 76
    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->stopplay:Z

    .line 78
    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput v0, p0, Lcom/android/CSDFunctionG/audiotest;->WC:I

    .line 38
    iput v0, p0, Lcom/android/CSDFunctionG/audiotest;->LWC:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/audiotest;->LFP:I

    .line 41
    iput-object v2, p0, Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;

    .line 42
    iput-object v2, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    .line 59
    iput v1, p0, Lcom/android/CSDFunctionG/audiotest;->lledcolor:I

    iput v1, p0, Lcom/android/CSDFunctionG/audiotest;->lblink:I

    .line 63
    const-string v0, "\r\nAudio test:\r\n"

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/android/CSDFunctionG/audiotest;->IsHstPlugin:Z

    .line 79
    iput v1, p0, Lcom/android/CSDFunctionG/audiotest;->g_mode:I

    .line 270
    new-instance v0, Lcom/android/CSDFunctionG/audiotest$1;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/audiotest$1;-><init>(Lcom/android/CSDFunctionG/audiotest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHSTBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/android/CSDFunctionG/audiotest$4;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/audiotest$4;-><init>(Lcom/android/CSDFunctionG/audiotest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    .line 675
    return-void
.end method

.method public static CheckWhichOneFileExist()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 742
    const-string v3, "/sdcard/rcvtest.wav"

    sput-object v3, Lcom/android/CSDFunctionG/audiotest;->apfname_PA:Ljava/lang/String;

    .line 745
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->apfname_PA:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    const-string v2, "CSD_audiotest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "....WAV file is found("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/CSDFunctionG/audiotest;->apfname_PA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    sput-boolean v1, Lcom/android/CSDFunctionG/audiotest;->bIsSDAudio:Z

    .line 751
    const/4 v0, 0x0

    .line 759
    :goto_0
    return v1

    .line 756
    :cond_0
    const-string v1, "CSD_audiotest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "....WAV file is not found("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/CSDFunctionG/audiotest;->apfname_PA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->bIsSDAudio:Z

    .line 758
    const/4 v0, 0x0

    move v1, v2

    .line 759
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/CSDFunctionG/audiotest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/CSDFunctionG/audiotest;->IsHstPlugin:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/CSDFunctionG/audiotest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/CSDFunctionG/audiotest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    return-object v0
.end method

.method private starttest()V
    .locals 2

    .prologue
    .line 764
    new-instance v0, Lcom/android/CSDFunctionG/Playaudio;

    invoke-direct {v0}, Lcom/android/CSDFunctionG/Playaudio;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Jpalyaudio:Lcom/android/CSDFunctionG/Playaudio;

    .line 765
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Jpalyaudio:Lcom/android/CSDFunctionG/Playaudio;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/Playaudio;->start()V

    .line 766
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Jpalyaudio:Lcom/android/CSDFunctionG/Playaudio;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/Playaudio;->setPriority(I)V

    .line 767
    return-void
.end method


# virtual methods
.method public EndandQuit()V
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->stopplay:Z

    .line 772
    return-void
.end method

.method public PassorFail(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 342
    iput p1, p0, Lcom/android/CSDFunctionG/audiotest;->g_mode:I

    .line 343
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 346
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 348
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/audiotest$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/audiotest$2;-><init>(Lcom/android/CSDFunctionG/audiotest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    const v2, 0x7f06000a

    new-instance v3, Lcom/android/CSDFunctionG/audiotest$3;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/audiotest$3;-><init>(Lcom/android/CSDFunctionG/audiotest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 398
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 400
    return-void
.end method

.method public PlayWave2()V
    .locals 4

    .prologue
    const/high16 v3, 0x4316

    .line 686
    sget-boolean v1, Lcom/android/CSDFunctionG/audiotest;->isplayrec:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 687
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 691
    .local v0, my_player:Landroid/media/MediaPlayer;
    :goto_0
    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 693
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 697
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 702
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 703
    const/4 v0, 0x0

    .line 704
    sget-boolean v1, Lcom/android/CSDFunctionG/audiotest;->isplayrec:Z

    if-eqz v1, :cond_0

    .line 705
    const-string v1, "CSD_audiotest"

    const-string v2, "reset phone state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V

    .line 708
    :cond_0
    return-void

    .line 689
    .end local v0           #my_player:Landroid/media/MediaPlayer;
    :cond_1
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .restart local v0       #my_player:Landroid/media/MediaPlayer;
    goto :goto_0

    .line 699
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public RequestPluginHst()V
    .locals 4

    .prologue
    .line 777
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 779
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Please insert Headset"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 780
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 782
    const-string v2, "YES"

    new-instance v3, Lcom/android/CSDFunctionG/audiotest$5;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/audiotest$5;-><init>(Lcom/android/CSDFunctionG/audiotest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 789
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 790
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 791
    return-void
.end method

.method public RequestPlugoutHst()V
    .locals 4

    .prologue
    .line 795
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 797
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Please remove Headset"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 798
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 800
    const-string v2, "YES"

    new-instance v3, Lcom/android/CSDFunctionG/audiotest$6;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/audiotest$6;-><init>(Lcom/android/CSDFunctionG/audiotest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 807
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 809
    return-void
.end method

.method public dorouting(I)V
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 294
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    const-string v1, "CSD_audiotest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dorouting ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-nez p1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/CSDFunctionG/audiotest;->maudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 306
    :cond_0
    :goto_1
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/android/CSDFunctionG/audiotest;->maudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    .line 303
    :cond_2
    if-ne p1, v5, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/CSDFunctionG/audiotest;->maudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 714
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 716
    sput-boolean v3, Lcom/android/CSDFunctionG/audiotest;->brecspk:Z

    .line 717
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->brecheadset:Z

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 721
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->brecspk:Z

    .line 722
    sput-boolean v3, Lcom/android/CSDFunctionG/audiotest;->brecheadset:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "viewObject"

    .prologue
    const/4 v2, 0x2

    const-wide/16 v6, 0x1388

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 448
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/audiotest;->IsHstPlugin:Z

    if-eqz v0, :cond_5

    .line 449
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->RequestPlugoutHst()V

    .line 463
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 465
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/audiotest;->IsHstPlugin:Z

    if-eqz v0, :cond_6

    .line 466
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->RequestPlugoutHst()V

    .line 479
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 482
    sget-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsRec:Z

    if-eqz v0, :cond_7

    .line 484
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->stoprec()V

    .line 485
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 500
    :cond_2
    :goto_2
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 503
    sget-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsPlay:Z

    if-eqz v0, :cond_8

    .line 505
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->stopplayrec()V

    .line 506
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 508
    :cond_3
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :cond_4
    :goto_3
    return-void

    .line 452
    :cond_5
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 453
    sput-boolean v4, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    .line 454
    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/audiotest;->playtest(I)V

    .line 455
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 469
    :cond_6
    sput-boolean v4, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    .line 470
    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->playtest(I)V

    .line 471
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 473
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 490
    :cond_7
    sput-boolean v4, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    .line 491
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->rec()V

    .line 492
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const v1, 0x7f020003

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 493
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 494
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 512
    :cond_8
    sput-boolean v4, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    .line 513
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->playrec()V

    .line 514
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 517
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 518
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 519
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 87
    .local v2, win:Landroid/view/Window;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    invoke-virtual {p0, v8}, Lcom/android/CSDFunctionG/audiotest;->requestWindowFeature(I)Z

    .line 92
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->maudioManager:Landroid/media/AudioManager;

    .line 95
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 98
    .local v0, audioManager:Landroid/media/AudioManager;
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->setContentView(I)V

    .line 101
    const/high16 v3, 0x7f08

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    .line 102
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    const v3, 0x7f080005

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    .line 105
    const v3, 0x7f080001

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;

    .line 106
    iget-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;

    const-string v4, "Receiver test"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v3, 0x7f080002

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    .line 110
    iget-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    const-string v4, "Speaker test"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sput-object v3, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    .line 114
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const-string v4, "Rec"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sput-object v3, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    .line 117
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const-string v4, "Play"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v2, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 241
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f030008

    invoke-virtual {v3, v8, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 243
    const v3, 0x7f080023

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/CSDFunctionG/audiotest;->TXTcaption:Landroid/widget/TextView;

    .line 244
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f06003d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 246
    sput-boolean v5, Lcom/android/CSDFunctionG/audiotest;->isplayrec:Z

    .line 248
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->mIntentFilter:Landroid/content/IntentFilter;

    .line 249
    iget-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->mHSTBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/CSDFunctionG/audiotest;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/CSDFunctionG/audiotest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const v4, 0x7f06003e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v3, p0, Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    sget-object v3, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const v4, 0x7f02001e

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 259
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 260
    invoke-virtual {v0, v5, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 261
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/CSDFunctionG/audiotest;->i_volume:I

    .line 262
    iget v3, p0, Lcom/android/CSDFunctionG/audiotest;->i_volume:I

    invoke-virtual {v0, v6, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 268
    invoke-virtual {p0, v6}, Lcom/android/CSDFunctionG/audiotest;->setVolumeControlStream(I)V

    .line 269
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 728
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 730
    sget-boolean v0, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    if-ne v0, v2, :cond_1

    .line 737
    :cond_0
    :goto_0
    return v2

    .line 732
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 733
    const-string v0, "Audio test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 734
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V

    .line 735
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->finish()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 312
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->bIsRec:Z

    .line 313
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->bIsPlay:Z

    .line 315
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->brecspk:Z

    .line 316
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->brecheadset:Z

    .line 317
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->playwavfile:Z

    .line 318
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHandler:Landroid/os/Handler;

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mHSTBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/audiotest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->finish()V

    .line 339
    return-void
.end method

.method public playrec()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    const-string v0, "CSD_audiotest"

    const-string v1, "play..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsPlay:Z

    .line 610
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const v1, 0x7f020020

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 612
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 613
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020028

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 615
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const-string v1, "Stop"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->startPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playtest(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->stopplay:Z

    .line 647
    invoke-static {}, Lcom/android/CSDFunctionG/audiotest;->CheckWhichOneFileExist()Z

    .line 648
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 650
    sput-boolean v3, Lcom/android/CSDFunctionG/audiotest;->isplayrec:Z

    .line 651
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    const-string v1, "Play receiver;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    .line 652
    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V

    .line 654
    :cond_0
    if-nez p1, :cond_1

    .line 656
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->isplayrec:Z

    .line 657
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    const-string v1, "Play Speaker;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    .line 658
    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V

    .line 661
    :cond_1
    sget-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsSDAudio:Z

    if-eqz v0, :cond_2

    .line 663
    invoke-direct {p0}, Lcom/android/CSDFunctionG/audiotest;->starttest()V

    .line 671
    :goto_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/audiotest;->EndandQuit()V

    .line 673
    return-void

    .line 667
    :cond_2
    new-instance v0, Lcom/android/CSDFunctionG/audiotest$myThread;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/audiotest$myThread;-><init>(Lcom/android/CSDFunctionG/audiotest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->th1:Lcom/android/CSDFunctionG/audiotest$myThread;

    .line 668
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->th1:Lcom/android/CSDFunctionG/audiotest$myThread;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/audiotest$myThread;->start()V

    goto :goto_0
.end method

.method public rec()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    const-string v0, "CSD_audiotest"

    const-string v1, "rec..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsRec:Z

    .line 530
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 531
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const v1, 0x7f020023

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 533
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020020

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 534
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const-string v1, "Stop"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V

    .line 538
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    const-string v1, "Rec_Int;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    .line 540
    new-instance v0, Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-direct {v0}, Lcom/android/CSDFunctionG/AudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->startRecording()V

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public recfromHst()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 556
    const-string v0, "CSD_audiotest"

    const-string v1, "rec..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/CSDFunctionG/audiotest;->bIsRec:Z

    .line 561
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 562
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const v1, 0x7f020023

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 564
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const-string v1, "Rec..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 565
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020020

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 567
    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V

    .line 569
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    const-string v1, "Rec_Ext;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->Audiolog:Ljava/lang/String;

    .line 571
    new-instance v0, Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-direct {v0}, Lcom/android/CSDFunctionG/AudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->startRecordingheadset()V

    .line 577
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/audiotest;->dorouting(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopplayrec()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 629
    const-string v0, "CSD_audiotest"

    const-string v1, "play..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->bIsPlay:Z

    .line 631
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const v1, 0x7f020022

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 632
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 633
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 635
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const-string v1, "Play"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stoprec()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    const-string v0, "CSD_audiotest"

    const-string v1, "stop rec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    sput-boolean v2, Lcom/android/CSDFunctionG/audiotest;->bIsRec:Z

    .line 588
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 590
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 591
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->playbtn:Landroid/widget/Button;

    const v1, 0x7f020022

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 593
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const-string v1, "Rec"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    goto :goto_0
.end method
