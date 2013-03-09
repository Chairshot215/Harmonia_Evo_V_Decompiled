.class Lcom/google/android/voicesearch/EditorLayout$1;
.super Ljava/lang/Object;
.source "EditorLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/EditorLayout;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/EditorLayout;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/EditorLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorLayout$1;->this$0:Lcom/google/android/voicesearch/EditorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorLayout$1;->this$0:Lcom/google/android/voicesearch/EditorLayout;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorLayout;->invalidate()V

    .line 63
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorLayout$1;->this$0:Lcom/google/android/voicesearch/EditorLayout;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorLayout;->requestLayout()V

    .line 64
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorLayout$1;->this$0:Lcom/google/android/voicesearch/EditorLayout;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 65
    return-void
.end method
