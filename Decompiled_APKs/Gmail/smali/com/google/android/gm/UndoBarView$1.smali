.class Lcom/google/android/gm/UndoBarView$1;
.super Ljava/lang/Object;
.source "UndoBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/UndoBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/UndoBarView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/UndoBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/gm/UndoBarView$1;->this$0:Lcom/google/android/gm/UndoBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView$1;->this$0:Lcom/google/android/gm/UndoBarView;

    const/4 v1, 0x1

    #calls: Lcom/google/android/gm/UndoBarView;->internalHide(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gm/UndoBarView;->access$000(Lcom/google/android/gm/UndoBarView;Z)V

    .line 41
    return-void
.end method
