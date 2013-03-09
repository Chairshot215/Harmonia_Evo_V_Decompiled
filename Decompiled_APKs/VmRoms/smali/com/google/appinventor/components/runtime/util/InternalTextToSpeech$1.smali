.class Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V
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

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    const/4 v1, 0x1

    #setter for: Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->access$002(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Z)Z

    :cond_0
    return-void
.end method
