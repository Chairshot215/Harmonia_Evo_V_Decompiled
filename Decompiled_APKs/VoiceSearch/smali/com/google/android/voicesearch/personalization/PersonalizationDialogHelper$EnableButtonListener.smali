.class Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;
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
    name = "EnableButtonListener"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mSource:I

.field final synthetic this$0:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x2

    .line 193
    iput-object p1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->this$0:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 195
    check-cast p2, Landroid/app/Activity;

    .end local p2
    iput-object p2, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->mActivity:Landroid/app/Activity;

    .line 199
    :goto_0
    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->mSource:I

    .line 202
    return-void

    .line 197
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->this$0:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    #getter for: Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->access$000(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;)Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->mSource:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->setEnabled(ZI)V

    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->this$0:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    #getter for: Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;
    invoke-static {v0}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->access$100(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;)Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->promptForPermissions(Landroid/app/Activity;)V

    .line 212
    :cond_0
    return-void
.end method
