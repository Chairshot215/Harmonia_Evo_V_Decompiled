.class Lcom/google/android/marvin/talkback/SpeechController$1;
.super Ljava/lang/Object;
.source "SpeechController.java"

# interfaces
.implements Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;


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
.method constructor <init>(Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController$1;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProximityChanged(Z)V
    .locals 1
    .parameter "close"

    .prologue
    .line 1153
    if-eqz p1, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$1;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/SpeechController;->stopAll()V

    .line 1156
    :cond_0
    return-void
.end method
