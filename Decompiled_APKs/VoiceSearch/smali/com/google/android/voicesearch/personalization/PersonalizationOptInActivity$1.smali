.class Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity$1;
.super Ljava/lang/Object;
.source "PersonalizationOptInActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity$1;->this$0:Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "ignored"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity$1;->this$0:Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;->setResult(I)V

    .line 70
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "ignored"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity$1;->this$0:Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;->finish()V

    .line 62
    return-void
.end method
