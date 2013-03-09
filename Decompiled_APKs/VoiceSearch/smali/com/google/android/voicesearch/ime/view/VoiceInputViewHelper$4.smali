.class Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$4;
.super Ljava/lang/Object;
.source "VoiceInputViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->scheduleWorking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$4;->this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$4;->this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayWorking()V

    .line 259
    return-void
.end method
