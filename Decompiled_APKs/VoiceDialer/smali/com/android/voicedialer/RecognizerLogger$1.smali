.class Lcom/android/voicedialer/RecognizerLogger$1;
.super Ljava/lang/Object;
.source "RecognizerLogger.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/RecognizerLogger;->deleteOldest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/RecognizerLogger;

.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/RecognizerLogger;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/voicedialer/RecognizerLogger$1;->this$0:Lcom/android/voicedialer/RecognizerLogger;

    iput-object p2, p0, Lcom/android/voicedialer/RecognizerLogger$1;->val$suffix:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, name:Ljava/lang/String;
    const-string v1, "log_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/voicedialer/RecognizerLogger$1;->val$suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
