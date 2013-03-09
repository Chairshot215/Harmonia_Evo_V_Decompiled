.class Lcom/android/voicedialer/VoiceDialerTester$1;
.super Ljava/lang/Object;
.source "VoiceDialerTester.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerTester;->reportSummaryForEachFileName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerTester;

.field final synthetic val$fn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerTester;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerTester$1;->this$0:Lcom/android/voicedialer/VoiceDialerTester;

    iput-object p2, p0, Lcom/android/voicedialer/VoiceDialerTester$1;->val$fn:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerTester$1;->val$fn:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
