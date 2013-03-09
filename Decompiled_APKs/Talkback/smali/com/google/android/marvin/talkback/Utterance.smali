.class public Lcom/google/android/marvin/talkback/Utterance;
.super Ljava/lang/Object;
.source "Utterance.java"


# static fields
.field public static final KEY_METADATA_EARCON_RATE:Ljava/lang/String; = "earcon_rate"

.field public static final KEY_METADATA_EARCON_VOLUME:Ljava/lang/String; = "earcon_volume"

.field public static final KEY_METADATA_QUEUING:Ljava/lang/String; = "queuing"

.field public static final KEY_METADATA_SPEECH_PARAMS:Ljava/lang/String; = "speech_params"

.field private static final MAX_POOL_SIZE:I = 0x3

.field private static sPool:Lcom/google/android/marvin/talkback/Utterance;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field private final mCustomEarcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomVibrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEarcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInPool:Z

.field private final mMetadata:Landroid/os/Bundle;

.field private mNext:Lcom/google/android/marvin/talkback/Utterance;

.field private final mText:Ljava/lang/StringBuilder;

.field private final mVibrationPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/marvin/talkback/Utterance;->sPoolLock:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mText:Ljava/lang/StringBuilder;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mMetadata:Landroid/os/Bundle;

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mEarcons:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mVibrationPatterns:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mCustomEarcons:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mCustomVibrations:Ljava/util/List;

    .line 119
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/marvin/talkback/Utterance;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 229
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 230
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mEarcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mVibrationPatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mCustomEarcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mCustomVibrations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    return-void
.end method

.method public static obtain()Lcom/google/android/marvin/talkback/Utterance;
    .locals 1

    .prologue
    .line 128
    const-string v0, ""

    invoke-static {v0}, Lcom/google/android/marvin/talkback/Utterance;->obtain(Ljava/lang/String;)Lcom/google/android/marvin/talkback/Utterance;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;)Lcom/google/android/marvin/talkback/Utterance;
    .locals 3
    .parameter "text"

    .prologue
    .line 139
    sget-object v2, Lcom/google/android/marvin/talkback/Utterance;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_0
    sget-object v1, Lcom/google/android/marvin/talkback/Utterance;->sPool:Lcom/google/android/marvin/talkback/Utterance;

    if-eqz v1, :cond_0

    .line 141
    sget-object v0, Lcom/google/android/marvin/talkback/Utterance;->sPool:Lcom/google/android/marvin/talkback/Utterance;

    .line 142
    .local v0, utterance:Lcom/google/android/marvin/talkback/Utterance;
    sget-object v1, Lcom/google/android/marvin/talkback/Utterance;->sPool:Lcom/google/android/marvin/talkback/Utterance;

    iget-object v1, v1, Lcom/google/android/marvin/talkback/Utterance;->mNext:Lcom/google/android/marvin/talkback/Utterance;

    sput-object v1, Lcom/google/android/marvin/talkback/Utterance;->sPool:Lcom/google/android/marvin/talkback/Utterance;

    .line 143
    sget v1, Lcom/google/android/marvin/talkback/Utterance;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/google/android/marvin/talkback/Utterance;->sPoolSize:I

    .line 144
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/marvin/talkback/Utterance;->mNext:Lcom/google/android/marvin/talkback/Utterance;

    .line 145
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/marvin/talkback/Utterance;->mIsInPool:Z

    .line 146
    monitor-exit v2

    .line 148
    .end local v0           #utterance:Lcom/google/android/marvin/talkback/Utterance;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/marvin/talkback/Utterance;

    invoke-direct {v0}, Lcom/google/android/marvin/talkback/Utterance;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCustomEarcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mCustomEarcons:Ljava/util/List;

    return-object v0
.end method

.method public getCustomVibrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mCustomVibrations:Ljava/util/List;

    return-object v0
.end method

.method public getEarcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mEarcons:Ljava/util/List;

    return-object v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public getText()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mText:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getVibrationPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mVibrationPatterns:Ljava/util/List;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mIsInPool:Z

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/Utterance;->clear()V

    .line 214
    sget-object v1, Lcom/google/android/marvin/talkback/Utterance;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    sget v0, Lcom/google/android/marvin/talkback/Utterance;->sPoolSize:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 216
    sget-object v0, Lcom/google/android/marvin/talkback/Utterance;->sPool:Lcom/google/android/marvin/talkback/Utterance;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mNext:Lcom/google/android/marvin/talkback/Utterance;

    .line 217
    sput-object p0, Lcom/google/android/marvin/talkback/Utterance;->sPool:Lcom/google/android/marvin/talkback/Utterance;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/Utterance;->mIsInPool:Z

    .line 219
    sget v0, Lcom/google/android/marvin/talkback/Utterance;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/marvin/talkback/Utterance;->sPoolSize:I

    .line 214
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Text:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/google/android/marvin/talkback/Utterance;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, "}, Metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lcom/google/android/marvin/talkback/Utterance;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
