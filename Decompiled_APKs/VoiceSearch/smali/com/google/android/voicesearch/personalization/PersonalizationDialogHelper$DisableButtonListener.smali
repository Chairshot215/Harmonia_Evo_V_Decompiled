.class Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;
.super Ljava/lang/Object;
.source "PersonalizationDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableButtonListener"
.end annotation


# instance fields
.field private mSource:I

.field final synthetic this$0:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;I)V
    .locals 1
    .parameter
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x2

    .line 217
    iput-object p1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;->this$0:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;->mSource:I

    .line 221
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;->this$0:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    #getter for: Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->access$000(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;)Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;->mSource:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->setEnabled(ZI)V

    .line 225
    return-void
.end method
