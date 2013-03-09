.class Lcom/android/voicedialer/VoiceDialerTester$WavFile;
.super Ljava/lang/Object;
.source "VoiceDialerTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WavFile"
.end annotation


# instance fields
.field public final mFile:Ljava/io/File;

.field public mMessage:Ljava/lang/String;

.field public mRank:I

.field public mTotal:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerTester$WavFile;->mFile:Ljava/io/File;

    .line 50
    return-void
.end method
