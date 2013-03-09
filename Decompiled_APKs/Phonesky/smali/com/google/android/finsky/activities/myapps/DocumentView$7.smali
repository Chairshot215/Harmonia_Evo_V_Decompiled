.class Lcom/google/android/finsky/activities/myapps/DocumentView$7;
.super Ljava/lang/Object;
.source "DocumentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/DocumentView;->bindHeader()V
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
    .line 218
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$7;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView$7;->this$0:Lcom/google/android/finsky/activities/myapps/DocumentView;

    #getter for: Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->access$100(Lcom/google/android/finsky/activities/myapps/DocumentView;)Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;->viewDetails()V

    .line 223
    return-void
.end method
