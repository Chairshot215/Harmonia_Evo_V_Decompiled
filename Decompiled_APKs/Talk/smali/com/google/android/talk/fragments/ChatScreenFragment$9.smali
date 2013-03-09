.class Lcom/google/android/talk/fragments/ChatScreenFragment$9;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/ServiceAvailableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->registerForServiceStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$9;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$9;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 1548
    return-void
.end method
