.class Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$1;
.super Ljava/lang/Object;
.source "VoiceInputViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->getView(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

.field final synthetic val$callback:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$1;->this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    iput-object p2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$1;->val$callback:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$1;->val$callback:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;

    invoke-interface {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;->onDone()V

    .line 109
    return-void
.end method
