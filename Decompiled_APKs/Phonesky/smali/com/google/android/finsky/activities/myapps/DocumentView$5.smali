.class Lcom/google/android/finsky/activities/myapps/DocumentView$5;
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
    .line 194
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$5;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$5;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$5;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$100(Lcom/google/android/finsky/activities/myapps/DocumentView;)Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$5;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v1, v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;->refund(Ljava/lang/String;)V

    .line 198
    return-void
.end method
