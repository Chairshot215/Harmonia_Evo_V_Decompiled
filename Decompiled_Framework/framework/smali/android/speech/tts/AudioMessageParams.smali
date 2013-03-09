.class Landroid/speech/tts/AudioMessageParams;
.super Landroid/speech/tts/MessageParams;
.source "AudioMessageParams.java"


# instance fields
.field private final mPlayer:Landroid/speech/tts/BlockingMediaPlayer;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;Landroid/speech/tts/BlockingMediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/speech/tts/MessageParams;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;)V

    iput-object p3, p0, Landroid/speech/tts/AudioMessageParams;->mPlayer:Landroid/speech/tts/BlockingMediaPlayer;

    return-void
.end method


# virtual methods
.method getPlayer()Landroid/speech/tts/BlockingMediaPlayer;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioMessageParams;->mPlayer:Landroid/speech/tts/BlockingMediaPlayer;

    return-object v0
.end method

.method getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
