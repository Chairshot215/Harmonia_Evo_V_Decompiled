.class Lcom/android/settings/tts/TextToSpeechSettings$4;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TextToSpeechSettings;->displayDataAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    #getter for: Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$100(Lcom/android/settings/tts/TextToSpeechSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->setCurrentKey(Ljava/lang/String;)V

    .line 390
    return-void
.end method
