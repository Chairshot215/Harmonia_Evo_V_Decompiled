.class Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$1;
.super Ljava/lang/Object;
.source "EndpointerInputStream.java"

# interfaces
.implements Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->createDummyListener()Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$1;->this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "buf"

    .prologue
    .line 235
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onReadyForSpeech(FF)V
    .locals 0
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 225
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .parameter "rmsdB"

    .prologue
    .line 220
    return-void
.end method
