.class Lcom/google/android/marvin/talkback/TalkBackService$4;
.super Ljava/lang/Object;
.source "TalkBackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/TalkBackService;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/TalkBackService;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/TalkBackService$4;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService$4;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #calls: Lcom/google/android/marvin/talkback/TalkBackService;->checkUpdate()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/TalkBackService;->access$5(Lcom/google/android/marvin/talkback/TalkBackService;)V

    .line 331
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService$4;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #calls: Lcom/google/android/marvin/talkback/TalkBackService;->shutdownInfrastructure()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/TalkBackService;->access$6(Lcom/google/android/marvin/talkback/TalkBackService;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService$4;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #calls: Lcom/google/android/marvin/talkback/TalkBackService;->initializeInfrastructure()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/TalkBackService;->access$7(Lcom/google/android/marvin/talkback/TalkBackService;)V

    .line 333
    return-void
.end method
