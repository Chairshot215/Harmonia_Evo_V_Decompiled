.class Lcom/google/android/marvin/talkback/SpeechController$7;
.super Landroid/database/ContentObserver;
.source "SpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/SpeechController;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/SpeechController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController$7;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    .line 1212
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$7;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$4(Lcom/google/android/marvin/talkback/SpeechController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1216
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$7;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #calls: Lcom/google/android/marvin/talkback/SpeechController;->updateDefaultRate(Landroid/content/ContentResolver;)V
    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/SpeechController;->access$7(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/ContentResolver;)V

    .line 1217
    return-void
.end method
