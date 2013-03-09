.class public Lcom/google/android/voicesearch/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# instance fields
.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/voicesearch/Vibrator$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/Vibrator$1;-><init>(Lcom/google/android/voicesearch/Vibrator;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/Vibrator;->mVibratorRunnable:Ljava/lang/Runnable;

    .line 38
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/voicesearch/Vibrator;->mVibrator:Landroid/os/Vibrator;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/Vibrator;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/voicesearch/Vibrator;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method


# virtual methods
.method public vibrate(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/voicesearch/Vibrator;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/Vibrator;->mVibratorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    :cond_0
    return-void
.end method
