.class Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater$1;
.super Landroid/os/AsyncTask;
.source "VoiceImeLanguageUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->updateLanguages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;

    #calls: Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->internalUpdateLanguages()V
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;->access$000(Lcom/google/android/voicesearch/ime/VoiceImeLanguageUpdater;)V

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method
