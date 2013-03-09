.class public Lcom/googlecode/eyesfree/utils/FeedbackController;
.super Ljava/lang/Object;
.source "FeedbackController.java"


# static fields
.field private static final DEFAULT_RATE:F = 1.0f

.field private static final DEFAULT_STREAM:I = 0x3

.field private static final DEFAULT_VOLUME:F = 1.0f

.field private static final NUMBER_OF_CHANNELS:I = 0xa


# instance fields
.field private mAuditoryEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mHapticEnabled:Z

.field private final mResourceIdToSoundMap:Landroid/util/SparseIntArray;

.field private final mResourceIdToVibrationPatternMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[J>;"
        }
    .end annotation
.end field

.field private final mSoundPool:Landroid/media/SoundPool;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToVibrationPatternMap:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToSoundMap:Landroid/util/SparseIntArray;

    .line 68
    iput-boolean v3, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mHapticEnabled:Z

    .line 71
    iput-boolean v3, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mAuditoryEnabled:Z

    .line 74
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mVolume:F

    .line 80
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mVibrator:Landroid/os/Vibrator;

    .line 82
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mSoundPool:Landroid/media/SoundPool;

    .line 84
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToSoundMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 85
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToVibrationPatternMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 86
    return-void
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 123
    return-void
.end method

.method public playSound(I)Z
    .locals 1
    .parameter "resId"

    .prologue
    const/high16 v0, 0x3f80

    .line 155
    invoke-virtual {p0, p1, v0, v0}, Lcom/googlecode/eyesfree/utils/FeedbackController;->playSound(IFF)Z

    move-result v0

    return v0
.end method

.method public playSound(IFF)Z
    .locals 8
    .parameter "resId"
    .parameter "rate"
    .parameter "volume"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 168
    iget-boolean v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mAuditoryEnabled:Z

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v5

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToSoundMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 174
    .local v1, soundId:I
    if-nez v1, :cond_2

    .line 178
    invoke-virtual {p0, p1}, Lcom/googlecode/eyesfree/utils/FeedbackController;->preloadSound(I)V

    move v5, v4

    .line 182
    goto :goto_0

    .line 185
    :cond_2
    iget v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mVolume:F

    mul-float v2, v0, p3

    .line 186
    .local v2, relativeVolume:F
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mSoundPool:Landroid/media/SoundPool;

    move v3, v2

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 188
    .local v7, stream:I
    if-eqz v7, :cond_0

    move v5, v4

    goto :goto_0
.end method

.method public playVibration(I)Z
    .locals 6
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-boolean v5, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mHapticEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mVibrator:Landroid/os/Vibrator;

    if-nez v5, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v4

    .line 202
    :cond_1
    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToVibrationPatternMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 204
    .local v2, pattern:[J
    if-nez v2, :cond_2

    .line 205
    iget-object v5, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 206
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 208
    .local v1, intPattern:[I
    if-eqz v1, :cond_0

    .line 212
    array-length v4, v1

    new-array v2, v4, [J

    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_3

    .line 218
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToVibrationPatternMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    .end local v0           #i:I
    .end local v1           #intPattern:[I
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_2
    iget-object v4, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mVibrator:Landroid/os/Vibrator;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 223
    const/4 v4, 0x1

    goto :goto_0

    .line 215
    .restart local v0       #i:I
    .restart local v1       #intPattern:[I
    .restart local v3       #resources:Landroid/content/res/Resources;
    :cond_3
    aget v4, v1, v0

    int-to-long v4, v4

    aput-wide v4, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public preloadSound(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToSoundMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mResourceIdToSoundMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    :cond_0
    return-void
.end method

.method public setAuditoryEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mAuditoryEnabled:Z

    .line 116
    return-void
.end method

.method public setHapticEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mHapticEnabled:Z

    .line 109
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 101
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mVolume:F

    .line 102
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 131
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/FeedbackController;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 132
    return-void
.end method
