.class Lcom/google/android/gm/AccountRecentLabelSpinner$1;
.super Landroid/database/DataSetObserver;
.source "AccountRecentLabelSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/AccountRecentLabelSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AccountRecentLabelSpinner;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$1;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$1;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;
    invoke-static {v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$100(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/android/mailcommon/MergedAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mailcommon/MergedAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 121
    .local v1, enabled:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$1;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$200(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 125
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$1;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorViewEnabledBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$300(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    .local v0, background:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$1;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$200(Lcom/google/android/gm/AccountRecentLabelSpinner;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void

    .line 120
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #enabled:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    .restart local v1       #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
