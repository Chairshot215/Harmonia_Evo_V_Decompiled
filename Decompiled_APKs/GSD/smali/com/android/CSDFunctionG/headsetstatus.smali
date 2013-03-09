.class public Lcom/android/CSDFunctionG/headsetstatus;
.super Landroid/app/Activity;
.source "headsetstatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;,
        Lcom/android/CSDFunctionG/headsetstatus$myThread;
    }
.end annotation


# static fields
.field public static HST_InstructMsg1:Landroid/widget/TextView; = null

.field public static HST_NextStepMsg:Landroid/widget/TextView; = null

.field static Pickupflow:Z = false

.field static final TAG:Ljava/lang/String; = "hststatustest"

.field public static TXTcaption:Landroid/widget/TextView;

.field static apfname_PA:Ljava/lang/String;

.field public static bIsPlay:Z

.field static bIsRec:Z

.field static bIsSDAudio:Z

.field public static playbtn:Landroid/widget/Button;

.field static playwavfile:Z

.field public static recbtn:Landroid/widget/Button;

.field static stopplay:Z


# instance fields
.field Audiolog:Ljava/lang/String;

.field private Headset_th1:Lcom/android/CSDFunctionG/headsetstatus$myThread;

.field private IsHstPlugin:Z

.field Jpalyaudio:Lcom/android/CSDFunctionG/Playaudio;

.field private Plugin_TestFlag:Z

.field public g_mode:I

.field private mBTBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

.field maudioManager:Landroid/media/AudioManager;

.field private mbuttonHeadset:Landroid/widget/Button;

.field private tvforgap:Landroid/widget/TextView;

.field private wearHeadset_flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    sput-object v1, Lcom/android/CSDFunctionG/headsetstatus;->TXTcaption:Landroid/widget/TextView;

    .line 42
    sput-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    .line 43
    sput-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    .line 46
    sput-object v1, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    .line 47
    sput-object v1, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    .line 50
    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->stopplay:Z

    .line 51
    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->bIsPlay:Z

    .line 53
    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->bIsRec:Z

    .line 54
    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    .line 61
    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->bIsSDAudio:Z

    .line 64
    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/CSDFunctionG/headsetstatus$MediaButtonBroadcastReceiver;-><init>(Lcom/android/CSDFunctionG/headsetstatus;Lcom/android/CSDFunctionG/headsetstatus$1;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object v2, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    .line 48
    iput-object v2, p0, Lcom/android/CSDFunctionG/headsetstatus;->tvforgap:Landroid/widget/TextView;

    .line 52
    iput-boolean v1, p0, Lcom/android/CSDFunctionG/headsetstatus;->IsHstPlugin:Z

    .line 59
    const-string v0, "\r\nHeadset test:\r\n"

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Audiolog:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/android/CSDFunctionG/headsetstatus;->g_mode:I

    .line 65
    iput-boolean v1, p0, Lcom/android/CSDFunctionG/headsetstatus;->Plugin_TestFlag:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/CSDFunctionG/headsetstatus;->wearHeadset_flag:Z

    .line 184
    new-instance v0, Lcom/android/CSDFunctionG/headsetstatus$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/headsetstatus$3;-><init>(Lcom/android/CSDFunctionG/headsetstatus;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    .line 512
    new-instance v0, Lcom/android/CSDFunctionG/headsetstatus$5;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/headsetstatus$5;-><init>(Lcom/android/CSDFunctionG/headsetstatus;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mBTBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 538
    return-void
.end method

.method public static CheckWhichOneFileExist()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    const-string v3, "/sdcard/rcvtest.wav"

    sput-object v3, Lcom/android/CSDFunctionG/headsetstatus;->apfname_PA:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/CSDFunctionG/headsetstatus;->apfname_PA:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    const-string v2, "hststatustest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "....WAV file is found("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->apfname_PA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sput-boolean v1, Lcom/android/CSDFunctionG/headsetstatus;->bIsSDAudio:Z

    .line 273
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v1

    .line 278
    :cond_0
    const-string v1, "hststatustest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "....WAV file is not found("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->apfname_PA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sput-boolean v2, Lcom/android/CSDFunctionG/headsetstatus;->bIsSDAudio:Z

    .line 280
    const/4 v0, 0x0

    move v1, v2

    .line 281
    goto :goto_0
.end method

.method static synthetic access$102(Lcom/android/CSDFunctionG/headsetstatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/CSDFunctionG/headsetstatus;->wearHeadset_flag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/CSDFunctionG/headsetstatus;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/CSDFunctionG/headsetstatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/CSDFunctionG/headsetstatus;->IsHstPlugin:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/CSDFunctionG/headsetstatus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Plugin_TestFlag:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/CSDFunctionG/headsetstatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/CSDFunctionG/headsetstatus;->Plugin_TestFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/CSDFunctionG/headsetstatus;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private starttest()V
    .locals 2

    .prologue
    .line 648
    new-instance v0, Lcom/android/CSDFunctionG/Playaudio;

    invoke-direct {v0}, Lcom/android/CSDFunctionG/Playaudio;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Jpalyaudio:Lcom/android/CSDFunctionG/Playaudio;

    .line 649
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Jpalyaudio:Lcom/android/CSDFunctionG/Playaudio;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/Playaudio;->start()V

    .line 650
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Jpalyaudio:Lcom/android/CSDFunctionG/Playaudio;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/Playaudio;->setPriority(I)V

    .line 651
    return-void
.end method


# virtual methods
.method public EndandQuit()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->stopplay:Z

    .line 261
    return-void
.end method

.method public PassorFail(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/CSDFunctionG/headsetstatus;->g_mode:I

    .line 128
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 133
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/headsetstatus$1;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/headsetstatus$1;-><init>(Lcom/android/CSDFunctionG/headsetstatus;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    const v2, 0x7f06000a

    new-instance v3, Lcom/android/CSDFunctionG/headsetstatus$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/headsetstatus$2;-><init>(Lcom/android/CSDFunctionG/headsetstatus;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 183
    return-void
.end method

.method public PlayWave2()V
    .locals 3

    .prologue
    const/high16 v2, 0x4316

    .line 317
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 319
    .local v0, my_player:Landroid/media/MediaPlayer;
    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 321
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 325
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 330
    const/4 v0, 0x0

    .line 331
    const-string v1, "hststatustest"

    const-string v2, "reset phone state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/headsetstatus;->dorouting(I)V

    .line 333
    return-void

    .line 327
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public RequestPluginHst()V
    .locals 4

    .prologue
    .line 243
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Please insert Headset"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 248
    const-string v2, "YES"

    new-instance v3, Lcom/android/CSDFunctionG/headsetstatus$4;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/headsetstatus$4;-><init>(Lcom/android/CSDFunctionG/headsetstatus;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 256
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 257
    return-void
.end method

.method public dorouting(I)V
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 227
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    const-string v1, "hststatustest"

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

    .line 232
    if-nez p1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus;->maudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 239
    :cond_0
    :goto_1
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus;->maudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    .line 236
    :cond_2
    if-ne p1, v5, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus;->maudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "viewObject"

    .prologue
    const-wide/16 v7, 0x32

    const-wide/16 v5, 0x1388

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 389
    const-string v0, "hststatustest"

    const-string v1, "mbuttonHeadset state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->IsHstPlugin:Z

    if-eqz v0, :cond_5

    .line 392
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 393
    sput-boolean v4, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    .line 394
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 396
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 398
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    :cond_0
    const-string v0, "hststatustest"

    const-string v1, "mbuttonHeadset playtest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/headsetstatus;->playtest(I)V

    .line 409
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 412
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->IsHstPlugin:Z

    if-eqz v0, :cond_7

    .line 414
    sget-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->bIsRec:Z

    if-eqz v0, :cond_6

    .line 416
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->stoprec()V

    .line 417
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 437
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 440
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->IsHstPlugin:Z

    if-eqz v0, :cond_9

    .line 442
    sget-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->bIsPlay:Z

    if-eqz v0, :cond_8

    .line 444
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->stopplayrec()V

    .line 445
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 447
    :cond_3
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_4
    :goto_2
    return-void

    .line 405
    :cond_5
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->RequestPluginHst()V

    goto :goto_0

    .line 422
    :cond_6
    sput-boolean v4, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    .line 423
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->recfromHst()V

    .line 424
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 425
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v1, 0x7f020016

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 427
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 433
    :cond_7
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->RequestPluginHst()V

    goto :goto_1

    .line 451
    :cond_8
    sput-boolean v4, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    .line 452
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->playrec()V

    .line 453
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 454
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 455
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 462
    :cond_9
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->RequestPluginHst()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 72
    .local v3, win:Landroid/view/Window;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    invoke-virtual {p0, v8}, Lcom/android/CSDFunctionG/headsetstatus;->requestWindowFeature(I)Z

    .line 75
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->maudioManager:Landroid/media/AudioManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 80
    .local v0, audioManager:Landroid/media/AudioManager;
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/headsetstatus;->setContentView(I)V

    .line 82
    const v4, 0x7f080014

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/headsetstatus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    .line 83
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    const v4, 0x7f080018

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/headsetstatus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    .line 87
    const v4, 0x7f080015

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/headsetstatus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    .line 88
    iget-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    const-string v5, "Headset Test"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v4, 0x7f080016

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/headsetstatus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sput-object v4, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    .line 92
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const-string v5, "Rec"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v4, 0x7f080017

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/headsetstatus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sput-object v4, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    .line 95
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    const-string v5, "Play"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v5, 0x7f020024

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 103
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v5, 0x7f06004d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 104
    sput-boolean v6, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    .line 107
    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 109
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f030008

    invoke-virtual {v4, v8, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 111
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/headsetstatus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/android/CSDFunctionG/headsetstatus;->TXTcaption:Landroid/widget/TextView;

    .line 112
    sget-object v4, Lcom/android/CSDFunctionG/headsetstatus;->TXTcaption:Landroid/widget/TextView;

    const v5, 0x7f06004a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 114
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mIntentFilter:Landroid/content/IntentFilter;

    .line 115
    iget-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mBTBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/CSDFunctionG/headsetstatus;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v4, v5}, Lcom/android/CSDFunctionG/headsetstatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    const/16 v4, 0x3ea

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 122
    iget-object v4, p0, Lcom/android/CSDFunctionG/headsetstatus;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/CSDFunctionG/headsetstatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 682
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 684
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/headsetstatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 685
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 621
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 623
    sget-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    if-ne v0, v3, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v3

    .line 625
    :cond_1
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->wearHeadset_flag:Z

    if-ne v0, v3, :cond_2

    .line 627
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mbuttonHeadset:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 628
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 629
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 631
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/headsetstatus;->wearHeadset_flag:Z

    .line 632
    sput-boolean v3, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    .line 634
    :cond_2
    sget-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Plugin_TestFlag:Z

    if-ne v0, v3, :cond_0

    .line 636
    const-string v0, "hststatustest"

    const-string v1, "Headset btn is Pickupflow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sput-boolean v3, Lcom/android/CSDFunctionG/headsetstatus;->Pickupflow:Z

    .line 638
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v1, 0x7f020018

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 639
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 640
    iput-boolean v3, p0, Lcom/android/CSDFunctionG/headsetstatus;->wearHeadset_flag:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 655
    sput-boolean v2, Lcom/android/CSDFunctionG/headsetstatus;->bIsPlay:Z

    .line 656
    sput-boolean v2, Lcom/android/CSDFunctionG/headsetstatus;->playwavfile:Z

    .line 657
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 665
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mHandler:Landroid/os/Handler;

    .line 673
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus;->Audiolog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 674
    const-string v0, "Audio test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/headsetstatus;->dorouting(I)V

    .line 677
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->finish()V

    .line 678
    return-void
.end method

.method public playrec()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    const-string v0, "hststatustest"

    const-string v1, "play..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->bIsPlay:Z

    .line 364
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    const v1, 0x7f020020

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 366
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 368
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020028

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 371
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    const-string v1, "Stop"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->startPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playtest(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 286
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->stopplay:Z

    .line 287
    invoke-static {}, Lcom/android/CSDFunctionG/headsetstatus;->CheckWhichOneFileExist()Z

    .line 289
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Audiolog:Ljava/lang/String;

    const-string v1, "Play Headset;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Audiolog:Ljava/lang/String;

    .line 290
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/headsetstatus;->dorouting(I)V

    .line 292
    sget-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->bIsSDAudio:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/CSDFunctionG/headsetstatus;->starttest()V

    .line 302
    :goto_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/headsetstatus;->EndandQuit()V

    .line 304
    return-void

    .line 298
    :cond_0
    new-instance v0, Lcom/android/CSDFunctionG/headsetstatus$myThread;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/headsetstatus$myThread;-><init>(Lcom/android/CSDFunctionG/headsetstatus;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Headset_th1:Lcom/android/CSDFunctionG/headsetstatus$myThread;

    .line 299
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Headset_th1:Lcom/android/CSDFunctionG/headsetstatus$myThread;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/headsetstatus$myThread;->start()V

    goto :goto_0
.end method

.method public recfromHst()V
    .locals 5

    .prologue
    const v4, 0x7f020020

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 467
    const-string v0, "hststatustest"

    const-string v1, "rec..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/CSDFunctionG/headsetstatus;->bIsRec:Z

    .line 470
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 472
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const-string v1, "Stop"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 474
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 475
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 477
    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/headsetstatus;->dorouting(I)V

    .line 479
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Audiolog:Ljava/lang/String;

    const-string v1, "Rec_Ext;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->Audiolog:Ljava/lang/String;

    .line 481
    new-instance v0, Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-direct {v0}, Lcom/android/CSDFunctionG/AudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->startRecordingheadset()V

    .line 487
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/headsetstatus;->dorouting(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopplayrec()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 495
    const-string v0, "hststatustest"

    const-string v1, "play..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sput-boolean v2, Lcom/android/CSDFunctionG/headsetstatus;->bIsPlay:Z

    .line 497
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    const v1, 0x7f020022

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 499
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 500
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 501
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const-string v1, "Rec..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 503
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    const-string v1, "Play"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stoprec()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    const-string v0, "hststatustest"

    const-string v1, "stop rec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sput-boolean v2, Lcom/android/CSDFunctionG/headsetstatus;->bIsRec:Z

    .line 338
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 339
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const-string v1, "Rec"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 341
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 343
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->playbtn:Landroid/widget/Button;

    const v1, 0x7f020022

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 344
    sget-object v0, Lcom/android/CSDFunctionG/headsetstatus;->recbtn:Landroid/widget/Button;

    const-string v1, "Rec"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus;->mRecorder:Lcom/android/CSDFunctionG/AudioRecorder;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/AudioRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method
