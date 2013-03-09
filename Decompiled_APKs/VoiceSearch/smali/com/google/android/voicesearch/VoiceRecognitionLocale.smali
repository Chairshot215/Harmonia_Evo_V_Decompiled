.class public Lcom/google/android/voicesearch/VoiceRecognitionLocale;
.super Ljava/lang/Object;
.source "VoiceRecognitionLocale.java"


# instance fields
.field private mBcp47Locale:Ljava/lang/String;

.field private mHumanReadable:Ljava/lang/String;

.field private mJavaLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "javaLocale"
    .parameter "bcp47Locale"
    .parameter "humanReadable"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->mJavaLocale:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->mBcp47Locale:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->mHumanReadable:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toBcp47Format()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->mBcp47Locale:Ljava/lang/String;

    return-object v0
.end method

.method public toHumanReadable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->mHumanReadable:Ljava/lang/String;

    return-object v0
.end method
