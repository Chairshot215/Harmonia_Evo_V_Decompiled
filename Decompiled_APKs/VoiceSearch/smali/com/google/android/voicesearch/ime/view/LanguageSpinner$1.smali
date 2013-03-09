.class Lcom/google/android/voicesearch/ime/view/LanguageSpinner$1;
.super Ljava/lang/Object;
.source "LanguageSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$1;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$1;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    #getter for: Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCallback:Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->access$000(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$1;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    #getter for: Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCallback:Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->access$000(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$1;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    #getter for: Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCurrentLocale:Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->access$100(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;->onUpdateLanguage(Lcom/google/android/voicesearch/VoiceRecognitionLocale;)V

    .line 145
    :cond_0
    return-void
.end method
