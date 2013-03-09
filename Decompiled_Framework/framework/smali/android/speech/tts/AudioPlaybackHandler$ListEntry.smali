.class final Landroid/speech/tts/AudioPlaybackHandler$ListEntry;
.super Ljava/lang/Object;
.source "AudioPlaybackHandler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/AudioPlaybackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/speech/tts/AudioPlaybackHandler$ListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final mMessage:Landroid/speech/tts/MessageParams;

.field final mPriority:I

.field final mSequenceId:J

.field final mWhat:I

.field final synthetic this$0:Landroid/speech/tts/AudioPlaybackHandler;


# direct methods
.method private constructor <init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;I)V

    return-void
.end method

.method private constructor <init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;I)V
    .locals 2

    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    iput-object p3, p0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    iput p4, p0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mPriority:I

    #getter for: Landroid/speech/tts/AudioPlaybackHandler;->mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {p1}, Landroid/speech/tts/AudioPlaybackHandler;->access$600(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mSequenceId:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;ILandroid/speech/tts/AudioPlaybackHandler$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)I
    .locals 5

    if-ne p1, p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mPriority:I

    iget v2, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mPriority:I

    sub-int v0, v1, v2

    if-nez v0, :cond_2

    iget-wide v1, p0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mSequenceId:J

    iget-wide v3, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mSequenceId:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    invoke-virtual {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->compareTo(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)I

    move-result v0

    return v0
.end method
