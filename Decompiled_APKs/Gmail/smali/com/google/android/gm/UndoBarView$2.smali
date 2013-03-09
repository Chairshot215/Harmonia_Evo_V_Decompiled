.class Lcom/google/android/gm/UndoBarView$2;
.super Ljava/lang/Object;
.source "UndoBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/UndoBarView;->show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/UndoBarView;

.field final synthetic val$menuHandler:Lcom/google/android/gm/MenuHandler;

.field final synthetic val$undoOperation:Lcom/google/android/gm/UndoOperation;


# direct methods
.method constructor <init>(Lcom/google/android/gm/UndoBarView;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/gm/UndoBarView$2;->this$0:Lcom/google/android/gm/UndoBarView;

    iput-object p2, p0, Lcom/google/android/gm/UndoBarView$2;->val$menuHandler:Lcom/google/android/gm/MenuHandler;

    iput-object p3, p0, Lcom/google/android/gm/UndoBarView$2;->val$undoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$2;->val$menuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/UndoBarView$2;->val$undoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->performUndo(Lcom/google/android/gm/UndoOperation;)V

    .line 90
    return-void
.end method
