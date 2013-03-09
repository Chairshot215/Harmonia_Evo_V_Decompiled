.class Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;
.super Ljava/lang/Object;
.source "LanguageSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 125
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    #getter for: Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCallback:Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->access$000(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    #getter for: Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->access$200(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    #getter for: Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mCallback:Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->access$000(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    #getter for: Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->mLocales:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->access$200(Lcom/google/android/voicesearch/ime/view/LanguageSpinner;)[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$Callback;->onUpdateLanguage(Lcom/google/android/voicesearch/VoiceRecognitionLocale;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/view/LanguageSpinner$2;->this$0:Lcom/google/android/voicesearch/ime/view/LanguageSpinner;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/LanguageSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/ime/ImeUtils;->showImeSubtypeSetting(Landroid/content/Context;)V

    goto :goto_0
.end method
