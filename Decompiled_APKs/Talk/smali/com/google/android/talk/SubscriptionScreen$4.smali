.class Lcom/google/android/talk/SubscriptionScreen$4;
.super Ljava/lang/Object;
.source "SubscriptionScreen.java"

# interfaces
.implements Lcom/google/android/talk/SessionAvailableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SubscriptionScreen;->registerForServiceStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SubscriptionScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SubscriptionScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/talk/SubscriptionScreen$4;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 1
    .parameter "service"
    .parameter "session"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/talk/SubscriptionScreen$4;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #calls: Lcom/google/android/talk/SubscriptionScreen;->serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/talk/SubscriptionScreen;->access$500(Lcom/google/android/talk/SubscriptionScreen;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    .line 174
    return-void
.end method
