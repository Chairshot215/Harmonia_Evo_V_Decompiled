.class Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;
.super Ljava/lang/Object;
.source "VoiceInputViewHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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
    .line 134
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;->this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    iput-object p2, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;->val$callback:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;->this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    #getter for: Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mPopupEnabled:Z
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->access$000(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;->this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;->val$callback:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;

    #calls: Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayPersonalizationPopup(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->access$100(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$3;->this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->mPopupEnabled:Z
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->access$002(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;Z)Z

    .line 147
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 139
    return-void
.end method
