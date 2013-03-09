.class final Lcom/android/mms/ui/MessageUtils$18;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->executeRunnable(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mainThread:Ljava/lang/Thread;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5052
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$18;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$mainThread:Ljava/lang/Thread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5054
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$18;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5055
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$18;->val$mainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5056
    return-void
.end method
