.class Lcom/google/android/gm/MessageHeaderScrollView$1;
.super Ljava/lang/Object;
.source "MessageHeaderScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/MessageHeaderScrollView;->evaluateSnap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/MessageHeaderScrollView;

.field final synthetic val$t:I


# direct methods
.method constructor <init>(Lcom/google/android/gm/MessageHeaderScrollView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderScrollView$1;->this$0:Lcom/google/android/gm/MessageHeaderScrollView;

    iput p2, p0, Lcom/google/android/gm/MessageHeaderScrollView$1;->val$t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderScrollView$1;->this$0:Lcom/google/android/gm/MessageHeaderScrollView;

    iget v1, p0, Lcom/google/android/gm/MessageHeaderScrollView$1;->val$t:I

    #calls: Lcom/google/android/gm/MessageHeaderScrollView;->evaluateSnap(I)V
    invoke-static {v0, v1}, Lcom/google/android/gm/MessageHeaderScrollView;->access$000(Lcom/google/android/gm/MessageHeaderScrollView;I)V

    .line 167
    return-void
.end method
