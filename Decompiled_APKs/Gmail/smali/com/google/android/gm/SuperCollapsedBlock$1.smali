.class Lcom/google/android/gm/SuperCollapsedBlock$1;
.super Ljava/lang/Object;
.source "SuperCollapsedBlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/SuperCollapsedBlock;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/SuperCollapsedBlock;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gm/SuperCollapsedBlock;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/gm/SuperCollapsedBlock$1;->this$0:Lcom/google/android/gm/SuperCollapsedBlock;

    iput-object p2, p0, Lcom/google/android/gm/SuperCollapsedBlock$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gm/SuperCollapsedBlock$1;->this$0:Lcom/google/android/gm/SuperCollapsedBlock;

    #getter for: Lcom/google/android/gm/SuperCollapsedBlock;->mClick:Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;
    invoke-static {v0}, Lcom/google/android/gm/SuperCollapsedBlock;->access$200(Lcom/google/android/gm/SuperCollapsedBlock;)Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/SuperCollapsedBlock$1;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gm/SuperCollapsedBlock$1;->this$0:Lcom/google/android/gm/SuperCollapsedBlock;

    #getter for: Lcom/google/android/gm/SuperCollapsedBlock;->mStart:I
    invoke-static {v2}, Lcom/google/android/gm/SuperCollapsedBlock;->access$000(Lcom/google/android/gm/SuperCollapsedBlock;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/SuperCollapsedBlock$1;->this$0:Lcom/google/android/gm/SuperCollapsedBlock;

    #getter for: Lcom/google/android/gm/SuperCollapsedBlock;->mEnd:I
    invoke-static {v3}, Lcom/google/android/gm/SuperCollapsedBlock;->access$100(Lcom/google/android/gm/SuperCollapsedBlock;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;->onSuperCollapsedClick(Landroid/view/View;II)V

    .line 102
    return-void
.end method
