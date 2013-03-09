.class Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$6;
.super Ljava/lang/Object;
.source "VoiceInputViewHelper.java"

# interfaces
.implements Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayPersonalizationPopup(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)V
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
    .line 293
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$6;->this$0:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 303
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 298
    return-void
.end method
