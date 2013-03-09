.class Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter$1;
.super Ljava/lang/Object;
.source "WidgetConfigurationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;

.field final synthetic val$backend:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter$1;->this$0:Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;

    iput p2, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter$1;->val$backend:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v0, result:Landroid/content/Intent;
    const-string v1, "backend"

    iget v2, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter$1;->val$backend:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter$1;->this$0:Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;

    #getter for: Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->access$000(Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter$1;->this$0:Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;

    #getter for: Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->access$000(Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 167
    return-void
.end method
