.class Lcom/google/android/finsky/activities/myapps/DocumentView$6;
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


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$6;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$6;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$100(Lcom/google/android/finsky/activities/myapps/DocumentView;)Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$6;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z
    invoke-static {v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$200(Lcom/google/android/finsky/activities/myapps/DocumentView;)Z

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$6;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z
    invoke-static {v3}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$300(Lcom/google/android/finsky/activities/myapps/DocumentView;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;->uninstall(ZZZ)V

    .line 205
    return-void
.end method
