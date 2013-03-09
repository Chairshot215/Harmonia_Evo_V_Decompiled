.class Lcom/google/android/finsky/activities/myapps/DocumentView$2;
.super Ljava/lang/Object;
.source "DocumentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/DocumentView;->bindButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

.field final synthetic val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$2;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$2;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$2;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$2;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$100(Lcom/google/android/finsky/activities/myapps/DocumentView;)Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;->enable()V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$2;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$100(Lcom/google/android/finsky/activities/myapps/DocumentView;)Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;->launch()V

    goto :goto_0
.end method
