.class Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    #getter for: Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->access$200(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
