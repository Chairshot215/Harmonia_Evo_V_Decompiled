.class public Lcom/google/speech/synthesizer/flint/api/android/AndroidSpeechSynthesizer;
.super Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;
.source "AndroidSpeechSynthesizer.java"


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter "assets"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/speech/synthesizer/flint/api/android/AndroidSpeechSynthesizer;->assetManager:Landroid/content/res/AssetManager;

    .line 21
    return-void
.end method


# virtual methods
.method protected getAssetContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/speech/synthesizer/flint/api/android/AndroidSpeechSynthesizer;->assetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method protected loadJni()Z
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/speech/synthesizer/flint/api/android/StaticJniLoader;->loadJni()Z

    move-result v0

    return v0
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "where"
    .parameter "msg"

    .prologue
    .line 36
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
