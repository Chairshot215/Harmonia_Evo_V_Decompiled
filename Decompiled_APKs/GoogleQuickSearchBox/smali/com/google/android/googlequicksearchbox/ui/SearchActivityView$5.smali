.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->initGlobalDebugInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

.field final synthetic val$debugText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->val$debugText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->val$debugText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    #getter for: Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$700(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getGlobalDebugInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method
