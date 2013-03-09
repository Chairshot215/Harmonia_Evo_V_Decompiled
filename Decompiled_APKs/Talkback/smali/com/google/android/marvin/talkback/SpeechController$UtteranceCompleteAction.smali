.class Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;
.super Ljava/lang/Object;
.source "SpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UtteranceCompleteAction"
.end annotation


# instance fields
.field public runnable:Ljava/lang/Runnable;

.field public utteranceIndex:I


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0
    .parameter "utteranceIndex"
    .parameter "runnable"

    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    iput p1, p0, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;->utteranceIndex:I

    .line 1343
    iput-object p2, p0, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;->runnable:Ljava/lang/Runnable;

    .line 1344
    return-void
.end method
